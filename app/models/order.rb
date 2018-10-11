class Order < ApplicationRecord
  belongs_to :user
  belongs_to :toy

  validates :user, presence: true
  validates :toy, presence: true
  validates :quantity, presence: true
  validates :unit_price, presence: true
end
