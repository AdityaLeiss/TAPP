class AddProgressToBab < ActiveRecord::Migration[6.0]
  def change
    add_column :babs, :progress, :string
  end
end
