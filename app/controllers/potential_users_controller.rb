class PotentialUsersController < ApplicationController
  include ActionController::HttpAuthentication::Basic::ControllerMethods
  http_basic_authenticate_with name: "api", password: "supersecret", except: :create
  before_action :set_potential_user, only: [:show, :update, :destroy]

  # GET /potential_users
  # GET /potential_users.json
  def index
    @potential_users = PotentialUser.all

    render json: @potential_users
  end

  # GET /potential_users/1
  # GET /potential_users/1.json
  def show
    render json: @potential_user
  end

  # POST /potential_users
  # POST /potential_users.json
  def create
    @potential_user = PotentialUser.new(potential_user_params)

    if @potential_user.save
      render json: @potential_user, status: :created, location: @potential_user
    else
      render json: @potential_user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /potential_users/1
  # PATCH/PUT /potential_users/1.json
  def update
    @potential_user = PotentialUser.find(params[:id])

    if @potential_user.update(potential_user_params)
      head :no_content
    else
      render json: @potential_user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /potential_users/1
  # DELETE /potential_users/1.json
  def destroy
    @potential_user.destroy

    head :no_content
  end

  private

    def set_potential_user
      @potential_user = PotentialUser.find(params[:id])
    end

    def potential_user_params
      params.require(:potential_user).permit(:email, :first_name, :gender)
    end
end
