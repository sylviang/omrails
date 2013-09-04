class Post < ActiveRecord::Base
	validates :description, presence: true, length: { maximum: 300 }

	belongs_to :user
	validates :user_id, presence: true
end
