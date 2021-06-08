class AddStoreToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :store, :string, null: false
  end
end
