class CreateItemLevels < ActiveRecord::Migration[7.0]
  def change
    create_table :item_levels, id: false do |t|
      t.string :level
      t.string :item_number
    end
  end
end
