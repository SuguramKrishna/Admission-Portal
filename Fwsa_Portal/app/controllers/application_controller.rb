class ApplicationController < ActionController::Base
    def current_user
        return @current_user if @current_user
        user_id = session[:current_user_id]
        if user_id
            @current_user = BasicDetail.find(user_id)
        else
          nil
        end
      end
      def educational_user
        return @current_user if @current_user
        user_id = session[:educational]
        if user_id
            @current_user = user_id
        else
          nil
        end
      end
      def family_user
        return @current_user if @current_user
        user_id = session[:family]
        if user_id
            @current_user = user_id
        else
          nil
        end
      end
end
