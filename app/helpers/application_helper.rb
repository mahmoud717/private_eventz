module ApplicationHelper
    def is_logged_in?
        session.key?("current_user") ? true : false 
    end
    def logged_in?
        if is_logged_in?
            render "new" 
        else
            redirect_to loggin_path, notice: 'You need to sign in before creating an event.'
        end
    end
    def is_admin
        if is_logged_in?
        session["current_user"]["is_admin"] == "true" ? true : false  
        end
    end
    def is_user(user_id)
        if is_logged_in?
        session["current_user"]["id"] == user_id ? true : false
        end
    end
end
