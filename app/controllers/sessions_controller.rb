class SessionsController < ApplicationController
  def new
    if session[:user_id]
      redirect_to dashboard_path
    end
  end

  def verify
    # find the user
    user = User.find_by email: params[:email]

    # check if password correct
    if user && BCrypt::Password.new(user.password_digest)==params[:password]
      sign_in user
      # redirect_to dashboard_path
    else
      flash[:notice] = "Please enter correct username or password"
      render :new
    end
  end

  def register
    @user = User.new
  end

  def create_user
    # binding.pry
    if params[:name].present? && params[:email].present? && params[:password].present? && params[:password_confirmation].present?
      name = params[:user][:name]
      email = params[:user][:email]
      password = params[:user][:password]
      password_confirmation = params[:user][:password_confirmation]
      # binding.pry
      # @user = User.create name: name, email: email, password: password
      @user = User.create name: name, email: email, password: password, password_digest: BCrypt::Password.create(password_confirmation)
      if @user.save && password == password_confirmation
        # binding.pry

        new_sign_in @user
        # redirect_to tutorial path
      else
        render :register
      end
    else
      flash[:alert] = "Please complete all fields"
      render :register
    end
  end

  def destroy
    session.delete :user_id
    redirect_to root_path
  end

  def sign_in user
    session[:user_id] = user.id
    redirect_to dashboard_path
  end

  def new_sign_in user
    session[:user_id] = user.id
    redirect_to tutorial_path
  end
end
