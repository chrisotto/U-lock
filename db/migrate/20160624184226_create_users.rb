class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :username, null: false
      t.string :password_hash, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.integer :zip, null: false

      t.timestamps null: false
    end
  end
end
