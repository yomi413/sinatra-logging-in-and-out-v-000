class Helpers

  def self.current_user(session)
    # binding.pry
    session["user_id"] = User.new


  end

  def self.is_logged_in?
  end

end
