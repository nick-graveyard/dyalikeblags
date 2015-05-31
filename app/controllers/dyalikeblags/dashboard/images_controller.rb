require_dependency "dyalikeblags/dashboard_controller"

module Dyalikeblags
  class Dashboard::ImagesController < DashboardController
    before_action :set_image, only: [:show, :edit, :update, :destroy]

    # GET /images
    def index
      @images = Image.all
    end

    # GET /images/1
    def show
    end

    # GET /images/new
    def new
      @image = Image.new
    end

    # GET /images/1/edit
    def edit
    end

    # POST /images
    def create

      Image.upload( params[:image][:image_file]  )

      @image = Image.new
      @image.name = params[:image][:name]
      @image.file_name = params[:image][:image_file].original_filename



      if @image.save
        redirect_to [:dashboard, @image], notice: 'Image was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /images/1
    def update
      if @image.update(image_params)
        redirect_to [:dashboard, @image], notice: 'Image was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /images/1
    def destroy
      @image.destroy
      redirect_to dashboard_images_path, notice: 'Image was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_image
        @image = Image.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def image_params
        params.require(:image).permit(:file_name, :name)
      end
  end
end
