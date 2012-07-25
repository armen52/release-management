class AddStatusToRelease < ActiveRecord::Migration
  def change
    add_column :releases, :status, :integer
  end
end
