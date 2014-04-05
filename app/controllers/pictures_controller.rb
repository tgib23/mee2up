class PicturesController < ApplicationController
  def index
    @picture = Picture.new
    @pictures = Picture.all
  end
 
  def create
    @picture = Picture.create(picture_params)
 
    redirect_to pictures_url
  end
 
  private
    def picture_params
      params.require(:picture).permit(:photo)
    end
end
