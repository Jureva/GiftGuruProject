module PaymentsHelper
  def months
    (1..12).collect{|n| ["#{n} - #{Date::MONTHNAMES[n]}", n]}
  end

  def years
    (Time.now.year..Time.now.year+15)
  end
  
  # Confirms a logged-in user.
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
    
    # Confirms the correct user.
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end
    
    # Confirms an admin user.
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
  
end