class Api::V1::PostsController < ApplicationController
    before_action :set_user, only: %i[ show edit update destroy ]

    # GET /users/:user_id/posts
    def index
      @posts = Post.all
      render json: @posts
    end

    # GET /users/:user_id/posts/
    def show
      render json: User.find(params[:user_id]).posts
    end

    # POST /posts
    def create
      @user = User.find(params[:user_id])
      @post = @user.posts.new(post_params)
      if @post.save
        render json: @post, status: :created
      else
        render json: @post.errors, status: :unprocessable_entity
      end
    end

    # GET /posts/:id/edit
    def edit
    end

    # PATCH/PUT /posts/:id
    def update
        @post = Post.find(params[:id])
      if @post.update(post_params)
        render json: @post
      else
        render json: @post.errors, status: :unprocessable_entity
      end
    end

    # DELETE /posts/:id
    def destroy
      @post = Post.find(params[:id])
      @post.destroy
      render json: { message: 'Post deleted successfully' }
    end    

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @user = User.find(params[:user_id])
    end

    def post_params
      params.permit(:comment, :user_id)
    end
end
