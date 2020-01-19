class UsersController < ApplicationController

  # Certain pages are visible only to logged-in users:
  before_action :check_if_logged_in, except: [:new]
  
  def new
    @user = User.new
  end

  def create
    @user = User.create user_params # strong params

    if @user.persisted?
      session[:user_id] = @user.id
      redirect_to  user_path(@user.id)
    else
      # there was an error, so show the signup form again
      # But - we want the form to be prefilled, so lets
      # not redirect to the login form, but just render
      # the 'new' form template again. This way, the template
      # can see our @user variable from above, and prefill
      # the form

      # NOPE! Because of rendering, instead of redirecting
      # the flash message will live for ANOTHER page reload.
      # Let's just use @user.errors in our template directly
      #
      # Set up our flash variable with appropriate errors to
      # show on the template:
      #flash[:errors] = @user.errors.full_messages # errors set by ActiveRecord

      render :new
    end
  end #create

  def index
    @users = User.all
  end

  def show
    @user = User.find params[:id]
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
