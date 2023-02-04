require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe 'Validations' do
  # validation tests/examples here
    it 'should not create a User without a password' do
      user = User.create(name: nil,price: 30, quantity: 22, category: category)
      expect(user).to_not be_valid
      expect(user.errors.full_messages).to contain_exactly("Password can't be blank")
    end
  end
end
