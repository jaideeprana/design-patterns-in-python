class chat_room
  @@user_map = Hash.new

  def sent_message(message, user_id)
    user = @@user_map[user_id]
    user.recieve_message(message)
  end

  def add_user(user)
    @@user_map[user.id] = user
  end
end
