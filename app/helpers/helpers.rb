class Helpers

  def self.current_user(session)
    # binding.pry
    session["id"] = User.find_by["id"]


  end

  def self.is_logged_in?
  end

end
