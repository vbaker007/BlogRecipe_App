class SessionsController < ApplicationController
  def create
    @chef = Chef.find_or_create_from_auth_hash(auto_hash)
    session[:chef_id] = @chef.id
    redirect_to root_path
  end

  protected

    def auth_hash
      request.env['omniauth.auth']
    end
end