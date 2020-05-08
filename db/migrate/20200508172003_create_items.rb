class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name,             null: false
      t.text :text,               null: false
      t.string :brand
      t.references :category,     null: false
      t.string :item_status,      null: false
      t.string :delivery_charge,  null: false
      t.integer :delivery_area,   null: false
      t.string :delivery_days,    null: false
      t.integer :price,           null: false
      # t.references :user,         null: false, foreign_key: true
      t.timestamps
    end
  end
end
