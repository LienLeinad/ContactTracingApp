class CreateContactTracingForms < ActiveRecord::Migration[6.1]
  def change
    create_table :contact_tracing_forms do |t|
      t.string :name
      t.string :email
      t.string :contact_number

      t.timestamps
    end
  end
end
