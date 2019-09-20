class AddNipToBimbingan < ActiveRecord::Migration[6.0]
  def change
    add_column :bimbingans, :nip, :integer
  end
end
