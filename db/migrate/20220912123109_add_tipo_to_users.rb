class AddTipoToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :tipo, :string
  end
end
