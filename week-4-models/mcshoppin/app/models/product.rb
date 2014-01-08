class Product < ActiveRecord::Base
  has_many :items
  has_many :orders, through: :items

  validates :name, presence: true
  validates :stock, numericality: true
  validates :price, numericality: true
end
