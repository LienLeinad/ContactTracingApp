class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :password_digest
      t.boolean :mallAd, null: false
      t.string :store, null: false
      t.timestamps
    end
  end
end
