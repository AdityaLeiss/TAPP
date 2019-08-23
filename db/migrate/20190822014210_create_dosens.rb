class CreateDosens < ActiveRecord::Migration[6.0]
  def change
    create_table :dosens do |t|
      t.integer :nip
      t.string :nama
      t.string :email
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
