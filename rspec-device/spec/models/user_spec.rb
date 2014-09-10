require "rails_helper"

RSpec.describe User, :type => :model do
  it "orders by last name" do
    lindeman = User.create!(firstname: "Andy", lastname: "Lindeman",phone_no: "9876543210",email:"2006.rajalakshmi@gmail.com",password:"123456789",password_confirmation:"123456789")
    chelimsky = User.create!(firstname: "David", lastname: "Chelimsky",phone_no: "9876543210",email:"rajalakshmi0589@gmail.com",password:"123456789",password_confirmation:"123456789")
    expect(User.order("lastname")).to eq([chelimsky, lindeman])
  end
end

