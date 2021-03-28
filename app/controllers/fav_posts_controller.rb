class FavPostsController < ApplicationController

    def index
        # byebug

        @fav_posts = FavPost.where(user_id: 1)
        @fav_posts = @fav_posts.map{|post| post.workout_post}

        render json: @fav_posts
    end

    def create

        if FavPost.find_by(workout_post_id: params[:workout_post_id])
            return true
        else 

            @fav_post = FavPost.create(workout_post_id: params[:workout_post_id], user_id: params[:user_id])

        render json: @fav_post
        end
    end

    def show
        @fav_post = FavPost.find(params[:id])

        render json: @fav_post
    end

    def delete

        # byebug

        @fav_post = FavPost.destroy(params[:id])

        render json: @fav_post
    end


end
