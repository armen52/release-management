class Release < ActiveRecord::Base
  attr_accessible :name, :component_ids
  has_many :release_components
  has_many :components, through: :release_components
  validates_presence_of :name
end
