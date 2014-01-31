class Order < ActiveRecord::Base
  belongs_to :user

  has_many :items
  has_many :products, through: :items

  before_create :generate_number

  accepts_nested_attributes_for :items, allow_destroy: true

  def generate_number
    self.number = (Order.maximum(:number) || 1000) + 1
  end
end
