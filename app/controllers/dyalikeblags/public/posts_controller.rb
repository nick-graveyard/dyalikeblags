require_dependency "dyalikeblags/public_controller"

module Dyalikeblags
  class Public::PostsController < PublicController


  	 def index
      @posts = Post.all
    end

    	  # GET /posts/1
		  # GET /posts/1.json
		   def show
		    @post = Dyalikeblags::Post.find(params[:id])
    	end
  end
end
