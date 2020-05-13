class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.integer :postcode
      t.references :prefecture
      t.string :city
      t.string :block
      t.string :building
      t.references :user,        null: false, foreign_key: true
      t.references :profile,     null: false, foreign_key: true
      t.timestamps
    end
  end
end
