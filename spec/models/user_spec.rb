require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe 'Validations' do
  # validation tests/examples here
    it 'should not create a User without a first name' do
      user = User.create(first_name: nil,last_name: 'Sharma', email: 'rajatgn@gmail.com', password: 'abc', 
      password_confirmation:'abc')
      expect(user).to_not be_valid
      expect(user.errors.full_messages).to contain_exactly("First name can't be blank", "Password is too short (minimum is 8 characters)")
    end
   
    it 'should not create a User without a last name' do
      user = User.create(first_name: 'Rajat',last_name: nil, email: 'rajatgn@gmail.com', password: 'abc', 
      password_confirmation:'abc')
      expect(user).to_not be_valid
      expect(user.errors.full_messages).to contain_exactly("Last name can't be blank", "Password is too short (minimum is 8 characters)")
    end

    it 'should not create a User without a email' do
      user = User.create(first_name: 'Rajat',last_name: 'Sharma', email: nil, password: 'abc', 
      password_confirmation:'abc')
      expect(user).to_not be_valid
      expect(user.errors.full_messages).to contain_exactly("Email can't be blank", "Password is too short (minimum is 8 characters)")
    end

    it 'should not create a User without a password' do
      user = User.create(first_name: 'Rajat',last_name: 'Sharma', email: 'rajatgn@gmail.com', password: nil, 
      password_confirmation:'abc')
      expect(user).to_not be_valid
      expect(user.errors.full_messages).to contain_exactly("Password can't be blank","Password can't be blank","Password is too short (minimum is 8 characters)")
    end
  end

  describe '.authenticate_with_credentials' do
    # examples for this class method here
    # it 'should not create a User without a password' do
    #   user = User.create(first_name: 'Rajat',last_name: 'Sharma', email: 'rajatgn@gmail.com', password: nil, 
    #   password_confirmation:'abc')
    #   expect(user).to_not be_valid
    #   expect(user.errors.full_messages).to contain_exactly("Password can't be blank")
    # end

  end
end
