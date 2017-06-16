class Post < ApplicationRecord
	#has_many :childrens , :class_name=>"Post",foreign_key:'parent_id'
	#belongs_to :parent ,:class_name=>"Post"
  has_many :children, class_name: 'Post', foreign_key: 'parent_id'
  belongs_to :parent, class_name: 'Post', foreign_key: 'parent_id'
end
