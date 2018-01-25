class Helpers

  def self.current_user(session)
    session["user_id"] = User.new
  end

  def self.is_logged_in?(session)
    if session["user_id"].included?
      true
    else
      false
    end
  end

end
