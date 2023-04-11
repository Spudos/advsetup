class AddField < ActiveRecord::Migration[7.0]
  def change
    add_column :setups, :track, :string
  end
end
