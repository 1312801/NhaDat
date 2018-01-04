class Land < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :payments
  has_many :line_items
  validates :user_id, presence: true
  include PgSearch
  pg_search_scope :search, against: [:tenduan],
    using: {tsearch: {dictionary: "english"}},
    associated_against: {user: :name},
    ignoring: :accents
    def self.text_search(query)
   if query.present?
     rank = <<-RANK
       ts_rank(to_tsvector(tenduan), plainto_tsquery('#{ActionController::Base.helpers.sanitize(query)}'))
     RANK
     where("to_tsvector('english', tenduan) @@ :q or to_tsvector('english',tenduan) @@ :q", q: query).order("#{rank} desc")
   else
     where(nil)
   end
 end
 def self.search params
  lands = Land.where(land_id: params[:land].to_i) unless params[:land].blank?
  lands
end
end
