class ArtworksController < ApplicationController
  before_action :set_artwork, only: [:show, :edit, :update, :destroy]

  # GET /artworks
  # GET /artworks.json
  def index
    @artworks = Artwork.all
    @artcats = Artcat.all
  end

  def catalog
    @artworks = Artwork.all
    @artcats = Artcat.all
    if params[:artcat_id] 
      @artworks = Artcat.find(params[:artcat_id]).artwork

    end
  end

   def update_catalog
    @artcats = Artcat.all
    @artworks = Artwork.all
    if params[:artcat_id].present? && params[:artcat_id].to_i > 0
      @ch_artcat = Artcat.find(params[:artcat_id])
      @artworks = @ch_artcat.artwork.order("name")


    end
    respond_to do |format|
      format.js
    end
  end

  def update_artcat
    artwork = Artwork.find(params[:id])
    @artcat = Artcat.find(params[:artcat_id])
    
    unless artwork.artcat.include?(@artcat)
      artwork.artcat << @artcat
    end
    
    

   
    @artcats = artwork.artcat 
    @artcats_avail = Artcat.all - @artcats

    
  end

  def delete_artcat
     artwork = Artwork.find(params[:id])
    @artcat = Artcat.find(params[:artcat_id])
     artwork.artcat.delete(@artcat)

    @artcats = artwork.artcat 
    @artcats_avail = Artcat.all - @artcats

    

  end


  # GET /artworks/1
  # GET /artworks/1.json
  def show
  end

  # GET /artworks/new
  def new
    @artwork = Artwork.new
  end

  # GET /artworks/1/edit
  def edit
    @artcats = Artwork.find(params[:id]).artcat 
    @artcats_avail = Artcat.all - @artcats
    
  end

  # POST /artworks
  # POST /artworks.json
  def create
    @artwork = Artwork.new(artwork_params)

    respond_to do |format|
      if @artwork.save
        format.html { redirect_to @artwork, notice: 'Disegno Salvato!' }
        format.json { render :show, status: :created, location: @artwork }
      else
        format.html { render :new }
        format.json { render json: @artwork.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artworks/1
  # PATCH/PUT /artworks/1.json
  def update
    respond_to do |format|
      if @artwork.update(artwork_params)
        format.html { redirect_to @artwork, notice: 'Disegno modificato!' }
        format.json { render :show, status: :ok, location: @artwork }
      else
        format.html { render :edit }
        format.json { render json: @artwork.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artworks/1
  # DELETE /artworks/1.json
  def destroy
    @artwork.destroy
    respond_to do |format|
      format.html { redirect_to artworks_url, notice: 'Disegno cancellato!' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artwork
      @artwork = Artwork.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artwork_params
      params.require(:artwork).permit(:name, :description, :path, :maincat_id)
    end
end
