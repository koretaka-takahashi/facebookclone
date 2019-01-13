class ApplicationController < ActionController::Base
  include SessionsHelper
  
  def redirect_if_not_logged_in
    return if logged_in?
    flash[:notice] = "権限がありません"
    redirect_to(feeds_url)
  end
end
