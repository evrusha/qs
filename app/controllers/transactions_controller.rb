class TransactionsController < ApplicationController
  def index
    @transactions = Transaction.joins("LEFT OUTER JOIN item_levels ON transactions.section_code = item_levels.item_number")
    .where("destination_zone IN (?) AND (action_code LIKE 'Подбор%' AND operation_code LIKE 'Подбор%')", ['RDT Devices', 'Устройства радиопередачи'])
    .select("transactions.wh, transactions.user_name,
            COUNT(DISTINCT CASE WHEN item_levels.level IS NULL THEN CONCAT(transactions.box_number, transactions.lpn_destination) END) AS count,
            COUNT(DISTINCT CASE WHEN item_levels.level = 'ПЛИТКА' THEN CONCAT(transactions.box_number, transactions.lpn_destination) END) AS count_plitka,
            COUNT(DISTINCT CASE WHEN item_levels.level IN ('ЛИСТОВЫЕ МАТЕРИАЛЫ', 'ГИПСОКАРТОН') THEN CONCAT(transactions.box_number, transactions.lpn_destination) END) AS count_listovye")
    .group("transactions.wh, transactions.user_name")
  end

  def import
    incoming_file = params[:file]
    return redirect_to root_path unless incoming_file

    Transaction.import_csv(incoming_file)
  end
end
