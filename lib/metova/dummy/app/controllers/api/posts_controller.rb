module Api
  class PostsController < BaseController

    def index
      user = User.find params[:user_id]
      @posts = user.posts
      respond_with @posts
    end

  end
end
