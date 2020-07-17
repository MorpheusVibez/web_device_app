class SessionsController < ApplicationController
    def new

    end

    def create
        @user = User.find_or_create_by(username: params[:user][:username])
          
        user_authenticate = @user.try(:authenticate, params[:user][:password])
    
        return redirect_to(controller: 'sessions', action: 'new') unless user
        
        session[:user_id] = user_authenticate.id
    
        @user = user_authenticate
    
        redirect_to controller: 'homepage', action: 'home'
        #take them to their home page 
      end
    
      def destroy
        session.delete :user_id
        
        redirect_to '/'
      end
end
