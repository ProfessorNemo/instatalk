# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user

  private

  def current_user
    # достаем из бд юзера, который сохранен в куках
    @current_user ||= User.where(id: cookies.signed[:user_id]).first

    # если юзер в бд не нашелся
    if @current_user.nil?
      @current_user = User.create
      cookies.signed[:user_id] = current_user.id
    end

    @current_user
  end
end
