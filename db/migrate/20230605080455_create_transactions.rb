class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions, id: false do |t|
      t.datetime :datetime
      t.string :code
      t.string :operation_code
      t.string :action_code
      t.string :lpn
      t.string :box_number
      t.string :source_zone
      t.string :source_location
      t.string :item_number
      t.string :section_code
      t.string :destination_zone
      t.string :destination_location
      t.string :user_name
      t.string :detail_number
      t.string :lpn_destination
      t.string :batch_number
      t.string :wh
      t.string :revision_level
      t.string :order_number
      t.string :ei_jda
      t.string :dimension_code
      t.string :nomenclature
      t.string :ei_ast
      t.float :quantity
      t.float :weight
      t.float :volume
      t.float :length
      t.float :width
      t.float :height
    end
  end
end
