class AddReferenceToAppointmentTable < ActiveRecord::Migration[7.0]
  def change
    add_reference :appointments, :user, foreign_key: true, type: :uuid,  null: false
  end
end
