require 'spec_helper'

describe Order do
  fixtures :orders
  fixtures :users

  it { should belong_to(:user) }
  it { should have_many(:items) }

  describe "#generate_number" do 
    let(:order) { orders(:order_1001) }
    let(:user)  { users(:user_zack) }
    let!(:max_number) { Order.maximum(:number) }

    it "should generate the next order number" do 
      new_order = user.orders.create
      new_order.number.should eq max_number + 1
    end
  end
end
