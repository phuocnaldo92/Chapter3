class UsersController < ApplicationController
  
  before_action :logged_in_user, except: [:new, :create, :show]
  before_action :correct_user, only: [:edit, :update]
  before_action :admin_user, only: :destroy
  before_action :find_user, except: [:index, :new, :create]

  def show
  end

  def index
    @users = User.paginate page: params[:page]
  end

  def index
    @users = User.paginate page: params[:page]
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      UserMailer.account_activation(@user).deliver_now
      flash[:info] = I18n.t "please_check"
      redirect_to root_url
    else
      render :new
    end
  end

  def destroy
    @user.destroy
    flash[:success] = I18n.t("user_deleted")
    redirect_to users_url
  end

  def update
    if @user.update_attributes user_params
      flash[:success] = I18n.t("profile_updated")
      redirect_to @user
    else
      render :edit
    end
  end

  def edit
  end
  
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = I18n.t("please_log_in")
      redirect_to login_url
    end
  end

  private

  def user_params
    params.require(:user).permit :name, :email, :password, :password_confirmation
  end

  def correct_user
<<<<<<< HEAD
      @user = User.find params[:id]
      redirect_to(root_url) unless current_user?(@user)
=======
    @user = User.find_by id: params[:id]
    redirect_to(root_url) unless current_user?(@user)
>>>>>>> 603367a6ee4700a84f77330c8c6e01d40f662a4f
  end

  def admin_user
      redirect_to(root_url) unless current_user.admin?
  end
<<<<<<< HEAD
=======

  def find_user
    @user = User.find_by id: params[:id]
    if @user.nil?
      render :error
    end
  end
>>>>>>> 603367a6ee4700a84f77330c8c6e01d40f662a4f
end
