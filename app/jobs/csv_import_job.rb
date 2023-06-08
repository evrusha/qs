require 'csv'

class CsvImportJob
  include Sidekiq::Job
  queue_as :default

  def perform(*args)
    ActiveRecord::Base.connection.execute("DELETE from transactions;
                                           COPY transactions
                                           FROM '#{args.first}'
                                           DELIMITER ';'
                                           CSV HEADER encoding
                                           'windows-1251';")
    File.delete(args.first)
  end
end
