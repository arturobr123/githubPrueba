class MainController < ApplicationController

  def home
  end

  def homeAdmin
  	redirect_to home_path
  end

  def homeUser
  	redirect_to home_path
  end

  def userUnregistered
  	redirect_to new_user_registration_path
  end

  def adminUnregistered
  	redirect_to new_admin_registration_path
  end

end
