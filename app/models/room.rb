class Room < ApplicationRecord
  MAX_BARGAIN_PRICE = 30
  belongs_to :user
  has_and_belongs_to_many :themes

  validates :address, presence: true
  validates :home_type, presence: true
  validates :room_type, presence: true
  validates :accommodate, presence: true
  validates :bedroom_count, presence: true
  validates :bathroom_count, presence: true
  validates :listing_name, presence: true, length: { maximum: 50 }
  validates :description, presence: true, length: { maximum: 500 }

  def self.order_by_price
    order(price: :asc)
  end

  def bargain?
    price < MAX_BARGAIN_PRICE
  end
end
