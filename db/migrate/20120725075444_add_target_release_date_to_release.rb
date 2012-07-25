class AddTargetReleaseDateToRelease < ActiveRecord::Migration
  def change
    add_column :releases, :target_release_date, :date
  end
end
