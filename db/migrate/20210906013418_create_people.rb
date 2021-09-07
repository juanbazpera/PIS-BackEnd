class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email
      t.integer :hourly_load
      t.integer :hourly_load_hours

      t.timestamps
    end
    add_index :people, :email, unique: true
  end
end
