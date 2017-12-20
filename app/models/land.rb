class Land < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :payments
  has_many :line_items
  validates :user_id, presence: true
end
