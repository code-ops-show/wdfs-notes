require 'spec_helper'

describe ProductsController do
  fixtures :products
  fixtures :users

  let(:user)  { users(:user_zack) }
  let(:iphone) { products(:product_iphone) }

  before { sign_in user }

  describe "#index" do 
    subject { get :index }
    specify { should be_success }

    it "should have correct @products" do 
      get :index
      assigns[:products].should include iphone
    end
  end

  describe "#show" do 
    it "should be success" do 
      get :show, id: iphone.id
      response.should be_success
    end

    it "should assign the correct product" do 
      get :show, id: iphone.id
      assigns[:product].should eq iphone
    end
  end

  describe "#edit" do 
    it "should be success" do 
      get :edit, id: iphone.id
      response.should be_success
    end

    it "should assign the correct product" do 
      get :edit, id: iphone.id
      assigns[:product].should eq iphone
    end
  end

  describe "#create" do 

    context "when successful save" do 
      it "should be redirect" do 
        post :create, product: { name: 'Test Product', stock: 3, price: 1000 }
        response.should redirect_to products_path
      end

      it "should create a new product" do 
        expect { 
          post :create, product: { name: 'Test Product 2', stock: 5, price: 1500 }
        }.to change{Product.count}.by(1)
      end
    end

    context "when unsuccessful save" do 
      it "should be success" do 
        post :create, product: { name: 'Blah' }
        response.should be_success
      end

      it "should render template new" do 
        post :create, product: { name: 'Blah2' }
        response.should render_template(:new)
      end
    end
  end

  describe "#update" do 
    context "when succesful update" do 
      it "should be redirect" do 
        patch :update, id: iphone.id, product: { name: "iPhone 5c" }
        response.should redirect_to product_path(iphone)
      end
    end

    context "when unsuccessful udpate" do 

    end
  end

  
end
