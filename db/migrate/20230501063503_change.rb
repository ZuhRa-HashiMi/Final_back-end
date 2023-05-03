class Change < ActiveRecord::Migration[7.0]
  def change
    rename_column :appointments, :doctors_id, :doctor_id
  end
end
