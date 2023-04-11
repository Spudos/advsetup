class AddShocksToSetups < ActiveRecord::Migration[7.0]
  def change
    add_column :setups, :frshk, :integer
    add_column :setups, :frpst, :string
    add_column :setups, :frspr, :string
    add_column :setups, :reshk, :integer
    add_column :setups, :repst, :string
    add_column :setups, :respr, :string
    add_column :setups, :frdiff, :integer
    add_column :setups, :ctrdiff, :integer
    add_column :setups, :rediff, :integer
    

  end
end
