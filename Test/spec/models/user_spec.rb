require 'rails_helper'
RSpec.describe User, type: :model do
  it "should not save if email already exists." do
   User.create(
    first_name: "John",
    last_name: "Doe",
    email: "johntheman@codingdojo.com"
   )
   user = User.new(
    first_name: "John",
    last_name: "Smith",
    email: "johntheman@codingdojo.com"
   )
   expect(user).to be_invalid
  end
  it "should not save if first_name field is blank." do
   user = User.new(
    first_name: ''
   )
   expect(user).to be_invalid
  end
  it "should contain a valid email" do
   user = User.new(
    first_name: 'Roald',
    last_name: 'Dahl',
    email: 'roalddahl'
   )
   expect(user).to be_invalid
  end
end