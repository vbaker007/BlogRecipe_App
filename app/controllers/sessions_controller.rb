class SessionsController < ApplicationController
  
 def create

    auth = request.env["omniauth.auth"]
    #binding.pry
    chef = Chef.find_by_provider_and_uid(auth["provider"], auth["uid"]) || Chef.create_with_omniauth(auth)
    #chef = Chef.create(password)
    session[:chef_id] = chef.id
    flash[:success] = "Signed in!"
    redirect_to root_path
  end

  def destroy
    session[:chef_id] = nil
    flash[:success] = "Signed out!"
    redirect_to root_path
  end

  #def create

  #  auth = request.env["omniauth.auth"]
    #binding.pry
  #  chef = Chef.find_by_provider_and_uid(auth["provider"], auth["uid"]) || Chef.create_with_omniauth(auth)
    #chef = Chef.create(password)
  #  session[:chef_id] = nil
  #  flash[:success] = "Signed in!"
  #  redirect_to root_path
  #end

  #def destroy
  #  session[:user_id] = nil
  #  flash[:success] = "Signed out!"
  #  redirect_to root_path
 # end
end