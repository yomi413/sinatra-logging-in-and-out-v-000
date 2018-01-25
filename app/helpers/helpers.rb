class Helpers

  def self.current_user(session)
    # binding.pry
    session["user_id"] = User.id


  end

  def self.is_logged_in?
  end

end
