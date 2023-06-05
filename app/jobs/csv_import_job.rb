require 'csv'

class CsvImportJob
  include Sidekiq::Job
  queue_as :default

  def perform(file)
    File.open(file)
  end
end
