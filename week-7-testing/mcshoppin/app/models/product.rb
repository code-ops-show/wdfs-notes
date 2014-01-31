class Product < ActiveRecord::Base
  has_many :items
  has_many :orders, through: :items

  validates :name, presence: true
  validates :stock, numericality: true
  validates :price, numericality: true

  scope :with_stock, -> { where('stock > 0') }
  scope :expensive,  -> { where('price > 5000') }

  mount_uploader :image, ImageUploader
end
