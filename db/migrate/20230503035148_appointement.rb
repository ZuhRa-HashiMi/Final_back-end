class Appointement < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.references :doctor, null: false, foreign_key: true
      # t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
