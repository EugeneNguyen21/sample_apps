class PostsController < ApplicationController
    def index
      @posts = Post.paginate(page: params[:page], per_page: 15)
    end
    def show
        @post = Post.find(params [:id])
    end

    def new
    end

    def create
    end

    def edit
    end

    def update
    end

    def destroy
        @post = Post.find(params [:id])
        @post.destroy
        redirect_to post_url notice: 'User was successfully destroyed.'
    end

    
end
