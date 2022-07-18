class UsersController < ApplicationController
  before_action :find_user, only: %i[show destroy update]

  def index
    from = params[:start_date].present? ? params[:start_date] : DateTime.new(1970, 01, 01).to_fs
    to = params[:end_date].present? ? params[:end_date] : DateTime.current.to_fs
    @users = User.where(:created_at => from..to)
    render json: @users, status: 201
  end

  def show
    render json: @user.to_json(include: [:post, :comment])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user
    else
      render json: {'error': 'could not create it'}, status: 400
    end
  end

  def destroy
    begin
      @user.destroy
    rescue ActiveRecord::InvalidForeignKey => e
      render json: {'error': e}, status: 403
    end
  end

  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: {'error': 'could not update it'}, status: 400
    end
  end

  private

    def user_params
      params.require(:user).permit(:name)
    end

    def find_user
      @user = User.find(params[:id])
    end
end
