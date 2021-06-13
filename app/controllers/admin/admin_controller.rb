class Admin::AdminController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize_admin!

  private

  def authorize_admin!
    redirect_to root_path, alert: "У вас нет прав доступа к данным ресурсам" unless current_user.admin?
  end
end
