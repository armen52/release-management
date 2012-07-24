class CreateComponentCategories < ActiveRecord::Migration
  def change
    create_table :component_categories do |t|
      t.integer :component_id
      t.integer :category_id

      t.timestamps
    end
  end
end
