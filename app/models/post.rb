class Post < ActiveRecord::Base
	validates :description, presence: true, length: { maximum: 300 }
end
