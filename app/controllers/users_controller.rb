class UsersController < ApplicationController
  def index
    @users = User.all
  end
    
    def show
      @user = User.find_by(id: params[:id])
      @relationship = @user.followers.find_by(follower: current_user)
    end
    
    def new
      @user = User.new
      render template: "users/new"
    end

    def create
    @user = User.new(
    name: params[:user][:name],
    email: params[:user][:email],
    image: params[:user][:image],
    password: params[:user][:password],
    password_confirmation: params[:user][:password_confirmation],
    )
    if @user.save
    session[:user_id] = @user.id
    redirect_to "/users/#{:id}"
    else
    render :new, status: :unprocessable_entity
    end
    end
end
