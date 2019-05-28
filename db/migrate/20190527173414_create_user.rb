class CreateUser < ActiveRecord::Migration[5.2]
  def up
    create_table :users, id: false do |t|
      t.integer :id, primary_key: true
      t.string :first_name
      t.string :last_name
      t.string :email, unique: true
      t.string :password_hash
      t.boolean :is_admin, :default => false
      t.timestamps
    end
  end
end
