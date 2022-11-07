# frozen_string_literal: true

module ApplicationCable
  class Connection < ActionCable::Connection::Base
    # соединение будет идентифицироваться по результату возврата
    # свойства "current_user"
    identified_by :current_user

    def connect
      self.current_user = find_verified_user

      # увидим в логах, от какого юзера пришло сообщение через ActionCable
      logger.add_tags 'ActionCable', current_user.nickname
    end

    private

    def find_verified_user
      if current_user = User.find_by(id: cookies.signed[:user_id])
        # сокет соединиться с сервером
        current_user
      else
        # сокет не соединиться с сервером
        reject_unauthorized_connection
      end
    end
  end
end
