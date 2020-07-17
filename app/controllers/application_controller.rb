class ApplicationController < ActionController::Base
    def current_user 
        @user = (User.find_by(id: session[:user_id]) || User.new)
      end 
      
      def logged_in?
        current_user.id != nil 
        #return true if the current user's id from the db is not nil 
      end 
      
      def require_logged_in 
        return redirect_to(controller: 'sessions', action: 'new') unless logged_in?
      end 
      #show them the new page unless they're logged in 
end
