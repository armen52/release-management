class ReleaseComponent < ActiveRecord::Base
  attr_accessible :component_id, :release_id
  belongs_to :release
  belongs_to :component
end
