class Helpers

  def self.current_user(session)
    session["user_id"] = User.new
  end

  def self.is_logged_in?(session)
    !!session["user_id"] ? true : false
    # if session["user_id"]
    #   true
    # else
    #   false
    # end
  end

end
