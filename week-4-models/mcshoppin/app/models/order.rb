class Order < ActiveRecord::Base
  belongs_to :user

  has_many :items
  has_many :products, through: :items

  before_create :generate_number

  def generate_number
    maximum_number = Order.maximum(:number) || 1000
    self.number = maximum_number + 1
  end
end
