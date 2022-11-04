# frozen_string_literal: true

class Message < ApplicationRecord
  belongs_to :room

  belongs_to :user
end

# Чтобы создать сообщение без комнаты, можно добавить опцию:
# (установка принадлежности к комнате по желанию)
# belongs_to :room, optional: true
# Но мы не будем этого делать, потому что у сообщения комната должна быть.
