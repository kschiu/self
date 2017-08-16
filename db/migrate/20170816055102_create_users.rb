class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :login
      t.string :email
      t.string :name
      t.string :encrypted_access_token

      t.timestamps
    end
  end
end
