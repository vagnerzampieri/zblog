require 'spec_helper'

describe User do
  before(:each) do
    @user = User.new(:name => 'User Test', :login => 'usertest', :email => 'test@test.com', :password => 'senha123', :password_confirmation => 'senha123' )
  end
  
  it 'should be not created without name' do
    @user.name = nil
    @user.should_not be_valid
  end
  
  it 'should be not created without login' do
    @user.login = nil
    @user.should_not be_valid
  end

  it 'should be not created without email' do
    @user.email = nil
    @user.should_not be_valid
  end
  
  it 'should be not created without password' do
    @user.password = nil
    @user.should_not be_valid
  end
  
  it 'should be not created if password and password_confirmation not equal' do
    @user.password = 'senha123'
    @user.password_confirmation = 'senha'
    @user.password.should_not == @user.password_confirmation
  end
   
  it 'should be created with all requirements' do
    @user.should be_valid
  end  
  
end
