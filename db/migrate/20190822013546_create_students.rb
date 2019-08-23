class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.integer :nim
      t.string :nama
      t.string :email
      t.string :username
      t.string :password
      t.string :status

      t.timestamps
    end
  end
end
