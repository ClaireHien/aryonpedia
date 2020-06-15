class ApplicationController < ActionController::Base

  include SessionHelper

  def moon
    cookies[:moon] = {
      value: 'dark mode on'
    }
    redirect_back fallback_location: root_path
    end

  def sun
    cookies.delete(:moon)
    redirect_back fallback_location: root_path
  end
  
end
