class Category < ActiveRecord::Base
  attr_accessible :name
  has_many :component_categories
  has_many :components, through: :component_categories
  validates_presence_of :name
end
