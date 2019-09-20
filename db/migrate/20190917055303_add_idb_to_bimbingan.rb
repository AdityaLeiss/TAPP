class AddIdbToBimbingan < ActiveRecord::Migration[6.0]
  def change
    add_column :bimbingans, :idb, :integer
  end
end
