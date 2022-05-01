class SessionsController < ApplicationController
  
  include CurrentUserConcern
  def create
    user = User
    .find_by(email: params["user"]["email"])
    .try(:authenticate, params["user"]["password"])
    
    if user.present? #if we get something in the database and the users password is authenticated..
      #log them in?? how do we remember the user?
      session[:user_id] = user.id #session stores the user id in teh session hash. We are only storing the id for space efficiency. Not the whole user object. THIS LINE LOGS YOU IN
      render json: {
        status: :created,
        logged_in: true,
        user: user
      }
    else
      render json: {status: 401}
    end
  end

  def logged_in
    if @current_user.present?
      render json:{
        logged_in: true,
        user: @current_user
      }
    else
      render json: {
        logged_in: false
      }
    end
  end

  def logout
    reset_session
    render json: { status: 200, logged_out: true }
  end
end
