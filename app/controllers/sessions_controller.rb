class SessionsController < ApplicationController

    def new
    end

    def create
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            flash[:danger] = "Improper credentials given"
            render :new
        end
    end

    def destroy
        session.clear
        redirect_to '/'
    end

    private

    # def session_params
    #     params.require(:user).permit(:username, :email, :password)
    # end



end
