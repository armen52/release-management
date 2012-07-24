class Component < ActiveRecord::Base
  attr_accessible :name, :category_ids
  has_many :release_components
  has_many :component_categories
  has_many :releases, through: :release_components
  has_many :categories, through: :component_categories
end
