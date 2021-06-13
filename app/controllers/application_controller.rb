class ApplicationController < ActionController::Base
  include Pundit

  # Настройка для работы Девайза, когда юзер правит профиль
  before_action :configure_permitted_parameters, if: :devise_controller?

  protect_from_forgery with: :exception

  # обработчик ошибки авторизации
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def user_not_authorized
    # Перенаправляем юзера откуда пришел (или в корень сайта)
    flash[:alert] = 'Вы не авторизованы'
    redirect_to(request.referrer || root_path)
  end

  # параметры которые можно обновлять при правке профиля
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(
      :account_update,
      keys: [:password, :password_confirmation, :current_password]
    )
  end  
end
