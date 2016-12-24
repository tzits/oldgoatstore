class CreateSavedItems < ActiveRecord::Migration[5.0]
  def change
    create_table :saved_items do |t|
      t.belongs_to :item, foreign_key: true
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
