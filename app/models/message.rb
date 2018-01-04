class Message < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :conversation
  belongs_to :user
  validates :content, presence: true
    has_many :impressionists
    def feed
     Message.where("user_id = ?", id)
   end
end
