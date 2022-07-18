class CommentsController < ApplicationController
  before_action :find_comment, only: %i[destroy]

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      render json: @comment, status: 201
    else
      render json: {'error': 'could not create it'}, status: 400
    end
  end

  def destroy
    @comment.destroy
  end

  private

    def comment_params
      params.require(:comment).permit(:rating, :text, :user_id, :post_id)
    end

    def find_comment
      @comment = Comment.find(params[:id])
    end
end
