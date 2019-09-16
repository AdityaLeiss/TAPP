class AddNimToMahasiswa < ActiveRecord::Migration[6.0]
  def change
    add_column :mahasiswas, :nim, :integer
  end
end
