class SessionsController < ApplicationController
    def new
    end

    def create
      
        user = User.find_by(username: params[:username])
        raise params.inspect
        user_authenticate = user.try(:authenticate, params[:password_digest])

        if user_authenticate
          session[:user_id] = user_authenticate.id
          redirect_to user_url(user)
        else
          render :new
        end
        
       
    end
    
      def destroy
        session.delete :user_id
        
        redirect_to '/'
      end

      private

      # def find_user
      #   User.find_by(session_params.stringify_keys)
      #   # params.require(:user).permit(:username, :password, :password_confirmation)
      # end

      # def session_params
      #   params.permit(:username)#, :password, :password_confirmation)
      # end
end
