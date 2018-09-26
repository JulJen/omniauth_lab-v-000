class SessionsController < ApplicationController

  def create
    @user = User.find_or_create_by(uid: auth['uid']) do |u|
      u.name = auth['info']['name']
      u.email = auth['info']['email']
      u.image = auth['info']['image']
      u.password = auth['uid']
    end
    session[:user_id] = @user.id

    render 'welcome/home'
  end

  private

  def auth_hash
    !!request.env["omniauth.auth"]
  end

end