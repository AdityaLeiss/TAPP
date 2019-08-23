class CreateAdmins < ActiveRecord::Migration[6.0]
  def change
    create_table :admins do |t|
      t.string :nama
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
