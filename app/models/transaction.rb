class Transaction < ApplicationRecord
  def self.import_csv(incoming_file)
    dir = Rails.root.join('public/uploads')
    Dir.mkdir(dir) unless Dir.exist?(dir)
    file_name = "#{DateTime.now.strftime('%d%m%Y%H%M')}_file.csv"
    File.open(dir.join(file_name), 'wb') do |file|
      file.write(incoming_file.read)
    end
    CsvImportJob.perform_async(dir.join(file_name).to_s)
  end
end
