class Helpers

  def self.current_user(session)
    session["user_id"] = User.new
  end

  def self.is_logged_in?(session)
    !!self.current_user(session) ? true : false
  end

  # binding.pry

end
