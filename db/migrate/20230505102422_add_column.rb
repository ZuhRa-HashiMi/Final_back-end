class AddColumn < ActiveRecord::Migration[7.0]
  def change
    add_reference :appointments, :user, index: true, null: false, foreign_key: true
    add_column :appointments, :appointement_date, :string
  end
end
