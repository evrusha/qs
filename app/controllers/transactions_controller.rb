class TransactionsController < ApplicationController
  def index
    @transactions = Transaction.all
  end

  def import
    incoming_file = params[:file]
    return redirect_to root_path unless incoming_file

    dir = Rails.root.join('public/uploads')
    Dir.mkdir(dir) unless Dir.exist?(dir)
    file_name = "#{DateTime.now.strftime('%d%m%Y%H%M')}_file.csv"
    File.open(dir.join(file_name), 'wb') do |file|
      file.write(incoming_file.read)
    end
    CsvImportJob.perform_async(dir.join(file_name).to_s)
  end
end
