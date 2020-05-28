class HomeController < ApplicationController
  def create
    @user = User.new(user_params)  #追記
  end
end
