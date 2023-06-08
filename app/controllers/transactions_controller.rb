class TransactionsController < ApplicationController
  def index
    @transactions = Transaction.first(5)
  end

  def import
    incoming_file = params[:file]
    return redirect_to root_path unless incoming_file

    Transaction.import_csv(incoming_file)
  end
end
