class CreateBimbingans < ActiveRecord::Migration[6.0]
  def change
    create_table :bimbingans do |t|
      t.string :nama
      t.string :judul
      t.string :dosen

      t.timestamps
    end
  end
end
