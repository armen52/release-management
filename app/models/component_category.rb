class ComponentCategory < ActiveRecord::Base
  attr_accessible :category_id, :component_id
  belongs_to :category
  belongs_to :component
end
