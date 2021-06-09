class AddUserIdToContactTracingForm < ActiveRecord::Migration[6.1]
  def change
    # add_column :contact_tracing_forms, :user_id, :integer
    add_reference :contact_tracing_forms, :user, index: true
  end
end
