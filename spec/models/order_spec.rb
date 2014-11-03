require 'rails_helper'

RSpec.describe Order, :type => :model do
  it { should have_many(:notes)}
  it { should belong_to(:customer)}

  it "verifies that :generate_number is called upon creation" do
	  @order = Order.new
	  @order.should_receive(:generate_number)
	  @order.save
	end

	it "verifies the order number is set" do
	  @order = Order.create
	  expect(@order.number).not_to be_empty
	end

	it "has a number column that consists of the letter R followed by 9 random numbers, generated upon order creation" do
    @order = Order.create
    @order.number.should match /R+\d{9}/
  end

end
