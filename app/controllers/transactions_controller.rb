class TransactionsController < ApplicationController
  def index
    @transactions = Transaction.all
  end

  def import
    file = params[:file]
    return redirect_to root_path unless file
    CsvImportJob.perform_async(file.path)
  end
end
