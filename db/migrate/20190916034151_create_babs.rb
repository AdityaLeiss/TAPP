class CreateBabs < ActiveRecord::Migration[6.0]
  def change
    create_table :babs do |t|
      t.integer :nim
      t.string :nama
      t.string :bab

      t.timestamps
    end
  end
end
