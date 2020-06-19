class ApplicationController < ActionController::Base
  before_action :set_user

  private

  def set_user
    @user = User.first
  end

  def set_organization
    @organization = @user.organization
  end
end
