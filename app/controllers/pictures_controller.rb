class PicturesController < ApplicationController
    def index
        @pictures= Picture.all
    end

    def show
        @picture=Picture.find(params[:id])
    end

    def new
        @picture=Picture.new
    end

    def destroy
        @picture = Picture.find(params[:id])
        @picture.destroy
        redirect_to pictures_url
      end

    def create
        @picture=Picture.new(picture_params)
        
        if @picture.save
            #if the save was successful go to index.html.erb
            redirect_to pictures_url
        else
            render :new 
        end
    end 
    
    def edit
        @picture = Picture.find(params[:id])
    end

    def update
        @picture = Picture.find(params[:id])

        if @picture.update(picture_params)
            redirect_to "/pictures/#{@picture.id}"
        else render :edit
        end
    end

    private
    def picture_params
      params.require(:picture).permit(:artist, :title, :url)
    end


end
