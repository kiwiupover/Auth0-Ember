module Api
  class AuthController < ApplicationController
    def store
      session[:userinfo] = request.env['omniauth.auth']
      redirect_to '/#/photos'
      
    end

    def failure
      re
    end
  end

end