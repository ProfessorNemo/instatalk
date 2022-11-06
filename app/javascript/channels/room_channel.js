import consumer from "./consumer"

// Создаем подписку на канал RoomChannel. У объекта есть коллбэки
// connected, disconnected, received, speak.Они действуют как обычные руби - методы.
document.addEventListener('turbo:load', () => {
    let messages

    messages = document.getElementById('messages')

    if (messages) {
        createRoomChannel(messages.dataset.roomId)
    }

    const message = document.getElementById('message_body')

    if (message) {
        messages.scrollTop = messages.scrollHeight

        message.addEventListener('keydown', (event) => {
            if (event.key === 'Enter') {
                if (message.value.length > 0) {
                    room.speak(message.value)
                    message.value = ''
                }

                event.preventDefault()
            }
        })
    }
})

let room

const createRoomChannel = (roomId) => {
    room = consumer.subscriptions.create({
        channel: 'RoomChannel',
        roomId: roomId
    }, {
        connected() {
            console.log('Connected to RoomChannel')
        },

        disconnected() {
            console.log('Disonnected from RoomChannel')
        },

        // получаем сообщение и достаем его из ключа "message"
        received(data) {
            console.log(data)
            messages.innerHTML += data['message']
            messages.scrollTop = messages.scrollHeight
        },

        speak: function(message) {
            return this.perform('speak', {
                message: message
            })
        }
    })
}

// функция "speak" принимает на вход сообщение. Шлем его с пом-ю этого метода.
// Этот метод вызывает действие "speak" на серверном канале
// метод "perform" дергает соответствующий метод канала на сервере
