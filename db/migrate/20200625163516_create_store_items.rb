class CreateStoreItems < ActiveRecord::Migration[6.0]
  def change
    create_table :store_items do |t|
      t.integer :store_id
      t.integer :item_id

      t.timestamps
    end
  end
end
