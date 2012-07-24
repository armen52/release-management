class CreateReleaseComponents < ActiveRecord::Migration
  def change
    create_table :release_components do |t|
      t.integer :release_id
      t.integer :component_id

      t.timestamps
    end
  end
end
