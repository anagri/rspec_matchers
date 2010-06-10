require File.dirname(__FILE__) + '/../spec_helper'

describe UsersController do
  it 'should create user and return created http status code with resource location' do
    get :create, :user => {:username => 'testuser', :email => 'testemail@email.com'}
    created_user = User.find_by_username('testuser')
    response.should have_created_resource(created_user, user_path(1))
  end
end