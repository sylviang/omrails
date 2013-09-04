class Post < ActiveRecord::Base
	validates :description, presence: true, length: { maximum: 300 }

	belongs_to :user
	validates :user_id, presence: true

	has_attached_file :image, styles: { thumb: "100x100>"}
	validates_attachment :image, presence: true, 
												content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
												size: { less_than: 5.megabytes } 

end
