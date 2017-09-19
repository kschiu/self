module Api::V1
  class UsersController < ApiController
  	before_action :set_user, only: [:show, :update, :destroy]

    # GET /v1/users
    def index
      render json: User.all
    end

    # GET v1/users/:id
    def show
    	render json: @user
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:login, :email, :name, :encrypted_access_token)
    end
  end
end