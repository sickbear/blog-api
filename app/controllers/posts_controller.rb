class PostsController < ApplicationController
  before_action :find_post, only: %i[destroy update]

  def create
    @post = Post.new(post_params)
    if @post.save
      render json: @post
    else
      render json: {'error': 'could not create it'}
    end
  end

  def destroy
    @post.destroy
  end

  def update
    if @post.update(post_params)
      render json: @post
    else
      render json: {'error': 'could not update it'}
    end
  end

  private

    def post_params
      params.require(:post).permit(:title, :text, :user_id)
    end

    def find_post
      @post = Post.find(params[:id])
    end
end
