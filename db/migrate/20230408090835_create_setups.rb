class CreateSetups < ActiveRecord::Migration[7.0]
  def change
    create_table :setups do |t|
      t.string :car
      t.text :driver
      t.timestamps
    end
  end
end
