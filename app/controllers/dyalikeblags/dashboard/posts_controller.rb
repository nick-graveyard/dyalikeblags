require_dependency "dyalikeblags/dashboard_controller"

module Dyalikeblags
  class Dashboard::PostsController < DashboardController

		  before_action :set_post, only: [:show, :edit, :update, :destroy]
		  
		  # GET /posts
		  # GET /posts.json
		  def index
		    @posts = Dyalikeblags::Post.all
		  end

		  # GET /posts/1
		  # GET /posts/1.json
		  def show
		    #@post = Dyalikeblags::Post.find(params[:id])
    	end

		  # GET /posts/new
		  def new
		    @post = Dyalikeblags::Post.new
		    @image_names = Dyalikeblags::Image.all.map{|u| [ u.name ] }
		  end

		  # GET /posts/1/edit
		  def edit
		  end

		  # POST /posts
		  # POST /posts.json
		  def create

		    #create new post
		    @post = Dyalikeblags::Post.new( post_params() )
		    @post.image = Dyalikeblags::Image.where(name: @post.image ).take.file_name
		    
		    #add image file name to new post
		    
		      if @post.save
						redirect_to [:dashboard, @post], notice: 'Post was successfully created.' 
		      else
		        render :action => :new
		      end

		  end

		  # PATCH/PUT /posts/1
		  # PATCH/PUT /posts/1.json
		  def update

		      if @post.update( post_params() )
		        redirect_to [:dashboard, @post], notice: 'Post was successfully updated.' 
		      else
		        render :action => :edit 
		      end
		  end

		  # DELETE /posts/1
		  # DELETE /posts/1.json
		  def destroy
		    @post.destroy
					redirect_to dashboard_posts_path, notice: 'Post was successfully destroyed.' 
			  end

		  private
		    # Use callbacks to share common setup or constraints between actions.
		    def set_post
		      @post = Dyalikeblags::Post.find(params[:id])
		    end

		    # Never trust parameters from the scary internet, only allow the white list through.
		    def post_params
		      params.require(:post).permit(:title, :content, :user_id, :image, :user_id)
		    end


  end
end
