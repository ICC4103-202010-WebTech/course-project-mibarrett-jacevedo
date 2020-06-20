class ApplicationController < ActionController::Base
  include Pagy::Backend

  protected

  def current_user
    if current_user
      current_user
    elsif current_administrator
      current_administrator
    else
      User.new
    end
  end

end
