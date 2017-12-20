class Cart < ApplicationRecord
has_many :line_items
has_one :payment, :dependent => :destroy

def total_price
  # convert to array so it doesn't try to do sum on database directly
  line_items.to_a.sum(&:full_price)
end
end
