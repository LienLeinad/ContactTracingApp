class AddMallAdToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :mallAd, :boolean, null: false
  end
end
