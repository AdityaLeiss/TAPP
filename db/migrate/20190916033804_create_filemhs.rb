class CreateFilemhs < ActiveRecord::Migration[6.0]
  def change
    create_table :filemhs do |t|
      t.integer :id_bimbingan
      t.integer :nim
      t.string :nama
      t.string :judul

      t.timestamps
    end
  end
end
