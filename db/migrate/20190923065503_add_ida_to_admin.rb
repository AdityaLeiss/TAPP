class AddIdaToAdmin < ActiveRecord::Migration[6.0]
  def change
    add_column :admins, :ida, :integer
  end
end
