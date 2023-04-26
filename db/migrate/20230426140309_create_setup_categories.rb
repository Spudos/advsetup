class CreateSetupCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :setup_categories do |t|
      t.integer :setup_id
      t.integer :category_id
      t.timestamps
    end
  end
end
