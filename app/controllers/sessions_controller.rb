class SessionsController < ApplicationController
  def index
  end
  $email = 'admin@admin.com'
  def create
    user = User.find_by(email:login_params[:email])
    admin = User.find_by(email:$email)
    if user && user.authenticate(login_params[:password])
      session[:user_id] = user.id
      if admin && admin.authenticate(login_params[:password])
        session[:admin_id] = admin.id
        redirect_to '/admin'
      else
        redirect_to '/dashboard'
      end
    else
      flash[:login_errors]=['Oops 😥, login faild!,retry']
      redirect_to '/'
    end
  end

  private
  def login_params
    params.require(:login).permit(:email,:password)
  end
  
end
