class Micropost < ActiveRecord::Base
	belongs_to :user
	validates :user_id, presence: true
	validates :heading, presence: true
	validates :content, presence: true

	def self.search(search)
  where("heading LIKE ?", "%#{search}%") 
  where("content LIKE ?", "%#{search}%")
end


end
