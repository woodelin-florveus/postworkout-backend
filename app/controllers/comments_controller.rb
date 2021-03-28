class CommentsController < ApplicationController

    def index
        @comments = Comment.all
        
        render json: @comments
    end

    def show
        @comment = Comment.find(params[:id])

        render json: @comment
    end

    def create

        # byebug

        @comment = Comment.create(content: params[:content], workout_post_id: params[:workout_post_id], user_id: params[:user_id])

        render json: @comment
    end

    def update

        # byebug
        
        @comment = Comment.find(params[:id])

        @comment.update(likes: params[:likes], user_id: params[:user_id])

        render json: @comment
    end

    def delete

        # byebug

        @comment = Comment.destroy(params[:id])

        render json: @comment
    end


end
