class CreateSarans < ActiveRecord::Migration[6.0]
  def change
    create_table :sarans do |t|
      t.integer :halaman
      t.string :isi
      t.references :bab, null: false, foreign_key: true

      t.timestamps
    end
  end
end
