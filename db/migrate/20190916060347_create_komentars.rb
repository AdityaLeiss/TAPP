class CreateKomentars < ActiveRecord::Migration[6.0]
  def change
    create_table :komentars do |t|
      t.integer :halaman
      t.string :isi

      t.timestamps
    end
  end
end
