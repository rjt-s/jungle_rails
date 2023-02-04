require 'rails_helper'

RSpec.describe Product, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe 'Validations' do
    # validation tests/examples here
  
  it 'should create a new product' do
    category = Category.create(name:'berries')
    product = Product.create(name:'AloeVira',price: 30, quantity: 22, category: category)
    expect(product).to be_valid
  end

  it 'should not create a product without a name' do
    category = Category.create(name:'berries')
    product = Product.create(name: nil,price: 30, quantity: 22, category: category)
    expect(product).to_not be_valid
    expect(product.errors.full_messages).to contain_exactly("Name can't be blank")
  end

  it 'should not create a product without a price' do
    category = Category.create(name:'berries')
    product = Product.create(name: 'AloeVera',price_cents: nil, quantity: 22, category: category)
    expect(product).to_not be_valid
    expect(product.errors.full_messages).to contain_exactly("Price can't be blank", "Price cents is not a number", "Price is not a number")
  end

  it 'should not create a product without a quantity' do
    category = Category.create(name:'berries')
    product = Product.create(name: 'AloeVera',price: 30, quantity: nil, category: category)
    expect(product).to_not be_valid
    expect(product.errors.full_messages).to contain_exactly("Quantity can't be blank")
  end

  it 'should not create a product without a category' do
    product = Product.create(name: 'AloeVera',price: 30, quantity: 22, category: nil)
    expect(product).to_not be_valid
    expect(product.errors.full_messages).to contain_exactly("Category can't be blank", "Category must exist")
  end

 end
end
