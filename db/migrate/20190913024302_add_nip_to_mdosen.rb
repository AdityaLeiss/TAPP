class AddNipToMdosen < ActiveRecord::Migration[6.0]
  def change
    add_column :mdosens, :nip, :integer
  end
end
