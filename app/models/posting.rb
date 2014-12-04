class Posting < ActiveRecord::Base
	belongs_to :users
	has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "300x300" }
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
	validates :title, presence: true
	validates :description, presence: true
	validates :bedroom_num, presence: true
	validates :housing_type, presence: true
	validates :image, presence: true
	validates :cost, presence: true
end
