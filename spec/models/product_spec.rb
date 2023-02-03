require 'rails_helper'

RSpec.describe Product, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe 'Validations' do
    # validation tests/examples here
  
  it 'should create a new product' do
    category = Category.create(name:'berries')
    product.create(name:'AloeVira',price: 30, quantity: 22, category: category)
    expect(product).to be_valid
  end

  # it 'should have a name' do
  #   @product = Product.new
  #   expect(@product.name).to be_present
  # end

  # it 'should have a price' do
  #   @product = Product.price
  #   expect(@product.price).to be_present 
  # end
 end
end
