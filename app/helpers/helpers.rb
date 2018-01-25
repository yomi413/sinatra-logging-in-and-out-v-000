class Helpers

  def self.current_user(session)
    session["user_id"] = User.new
    binding.pry
  end

  def self.is_logged_in?(session)
    !!self.current_user(session) ? true : false
  end

end
