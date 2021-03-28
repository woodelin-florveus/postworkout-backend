class WorkoutPostsController < ApplicationController

    def index
        @workout_posts = WorkoutPost.all

        render json: @workout_posts

    end

    def show
        @workout_post = WorkoutPost.find(params[:id])

        render json: @workout_post
    end

    def create
        # byebug
        @workout_post = WorkoutPost.create(title: params[:title], image_url: params[:image_url], author: params[:author], description: params[:description], user_id: params[:user_id])

        render json: @workout_post
    end

   

    def update
        # byebug
        @workout_post = WorkoutPost.find(params[:id])

        @workout_post.update(title: params[:title], image_url: params[:image_url], author: params[:author], description: params[:description], likes: params[:likes], user_id: params[:user_id])

        render json: @workout_post
    end

    def delete
        # byebug
        @workout_post = WorkoutPost.destroy(params[:id])

        render json: @workout_post
    end

    # private

    # def find_me
    #     @current_user.find(User.find_by(name = @current_user))
    # end


end
