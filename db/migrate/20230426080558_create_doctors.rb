class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string :fullname
      t.string :specialization
      t.string :profile_picture

      t.timestamps
    end
  end
end
