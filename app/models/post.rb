class Post < ActiveRecord::Base
  attr_accessible :category_id, :name, :section
    belongs_to :category
end
