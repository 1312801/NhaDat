class LineItem < ApplicationRecord
belongs_to :cart
belongs_to :land
belongs_to house
validates :land_id, presence: true
validates :house_id, presence: true
def full_price
    unit_price * quantity
  end
end
