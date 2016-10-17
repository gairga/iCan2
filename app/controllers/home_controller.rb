class HomeController < ApplicationController
   skip_before_action :authenticate_user!, :only => [:index]
  def index
  	
	#skip_before_action :authenticate_user!, :only => [:index]
	#skip_before_action :redirect_heroku_user, only: :edit, raise: false
  end

  def dashboard
  end
end
