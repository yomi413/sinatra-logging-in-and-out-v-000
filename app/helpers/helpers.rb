class Helpers

  def self.current_user(session_hash)
    # binding.pry
    session_hash[:user_id] = User.find_by(params[:user_id])


  end

  def self.is_logged_in?
  end

end
