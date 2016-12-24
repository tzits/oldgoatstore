class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :password
      t.string :shipping_address
      t.boolean :admin

      t.timestamps
    end
  end
end
