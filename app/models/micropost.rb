class Micropost < ActiveRecord::Base
	belongs_to :user
	validates :user_id, presence: true
	validates :heading, presence: true
	validates :software, presence: true
	validates :content, presence: true

	def self.search(search)
  # where("heading LIKE ?", "%#{search}%") 
  # where("content LIKE ?", "%#{search}%")
  # where("software LIKE ?", "%#{search}%")
	  	if Rails.env.production? 
			where("heading ILIKE ? OR content ILIKE ? OR software ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
		else
			where("heading LIKE ? OR content LIKE ? OR software LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
		end
	end


end
