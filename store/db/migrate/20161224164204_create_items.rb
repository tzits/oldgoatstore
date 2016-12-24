class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :desciprtion
      t.float :price
      t.boolean :shippable
      t.integer :quantity
      t.boolean :buy_now
      t.string :picture
      t.string :category

      t.timestamps
    end
  end
end
