class UsersController < ApplicationController

    before_action :authenticate, only: [:update_myself, :myself] 


    def index
        @users = User.all

        render json: @users
    end 

    def show

        # byebug
     
        
        @user_workout = User.find_by(id: params[:id]).favorites


        render json: @user_workout
    end

    def login
        @user = User.find_by(name: params[:name])
            if @user && @user.authenticate(params[:password])
                token = JWT.encode({user_id: @user.id}, 'my$ecretK3y', 'HS256')
                render json: { user: UserSerializer.new(@user), token: token }

            else
                render json: {errors: ["Invalid Username or Password"]}, status: :unauthorized
            end
    end

    def signup
        user_params = params.permit(:name, :email, :password)
        @user = User.create(user_params)

        if @user.valid?
            token = JWT.encode({user_id: @user.id}, 'my$ecretK3y', 'HS256')
            render json: { user: UserSerializer.new(@user), token: token }, status: :created
        else 
           render json: {errors: @user.errors.full_messages}, status: :unprocessable_entity
        end

    end

    def myself
        # @user = User.first

        render json: @current_user
        #  render json: @user
    end

    def update_myself
        @current_user.update(name: params[:name], email: params[:email])

        render json: @current_user
    end



end
