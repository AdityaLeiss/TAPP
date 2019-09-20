class AddNimToBimbingan < ActiveRecord::Migration[6.0]
  def change
    add_column :bimbingans, :nim, :integer
  end
end
