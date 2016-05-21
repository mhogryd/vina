class CreatePotentialUsers < ActiveRecord::Migration
  def change
    create_table :potential_users do |t|
      t.text :email
      t.text :first_name
      t.text :gender

      t.timestamps null: false
    end
  end
end
