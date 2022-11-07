# frozen_string_literal: true

class RoomChannel < ApplicationCable::Channel
  # вызывается, когда клиент по этому каналу подсоединился к серверу
  def subscribed
    # регистратор ("подписан на канал RoomChannel")
    logger.info "Subscribed to RoomChannel, roomId: #{params[:roomId]}"

    @room = Room.find(params[:roomId])

    # передать в JS в соответствующую комнату
    # сообщения сервер разводит по разным комнатам
    stream_from "room_channel_#{@room.id}"
  end

  # в противном случае
  def unsubscribed
    logger.info 'Unsubscribed from RoomChannel'
  end

  def speak(data)
    # получем данные от пользователя, выводим их в лог нашего сервера
    logger.info "Speak: #{data.inspect}"

    # что мы шлём
    MessageService.new(
      body: data['message'],
      room: @room,
      user: current_user
    ).perform
  end
end
