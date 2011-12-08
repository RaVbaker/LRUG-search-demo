class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :producer_name
      t.decimal :price, precision: 2
      
      t.timestamps
    end
  end
end
