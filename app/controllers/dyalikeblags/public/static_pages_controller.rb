require_dependency "dyalikeblags/public_controller"

module Dyalikeblags
  class Public::StaticPagesController < PublicController


    # GET /static_pages/1
    def show
        #@static_page = Dyalikeblags::StaticPage.where(title_bar: params[:title_bar] ).take
        #@static_page = Dyalikeblags::StaticPage.find( params[:id] )
        @static_page = Dyalikeblags::StaticPage.where(title_bar: params[:title_bar] ).take


    end

  end 
end
