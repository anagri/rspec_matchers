class UsersController < ApplicationController
  def create
    @user = User.new(params[:user])
    if @user.save
      render :head, :status => :created, :location => user_path(@user)
    else
      params[:error] = 'failed to create user'
      render :action => 'new'
    end
  end
end