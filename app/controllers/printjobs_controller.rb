class PrintjobsController < ApplicationController
  before_action :set_printjob, only: [:show, :edit, :update, :destroy]

  # GET /printjobs
  # GET /printjobs.json
  def index
    #@printjobs = Printjob.where("archived IS ?", nil)
    @printjobs = Printjob.all.order("created_at DESC")
  end

  # GET /printjobs/1
  # GET /printjobs/1.json
  def show
  end

  # GET /printjobs/new
  def new
    @printjob = Printjob.new
    @shirts = Shirt.where("shape_id = ?", params[:shape_id])
    @color = Color.where("id = ?", params[:color_id])
    #@colors = Color.all
    #@sizes = Size.all
    
  end


  def update_shirts
    #@mods = Mod.where("shape_id = ?", params[:shape_id])
    @shirts = Shirt.where("shape_id = ?", params[:shape_id])

  end

  def update_artworks
    @artworks = Artcat.find(params[:artcat_id]).artwork

  end

  def update_art
    @artwork_path = Artwork.find(params[:artwork_id]).path

  end

  def update_details
    @size = Shirt.find(params[:shirt_id]).size
    @color = Shirt.find(params[:shirt_id]).color
  end
  

  # GET /printjobs/1/edit
  def edit
  end

  # POST /printjobs
  # POST /printjobs.json
  def create
    @printjob = Printjob.new(printjob_params)


    respond_to do |format|
      if @printjob.save
        format.html { redirect_to @printjob, notice: 'Printjob was successfully created.' }
        format.json { render :show, status: :created, location: @printjob }
      else
        format.html { render :new }
        format.json { render json: @printjob.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /printjobs/1
  # PATCH/PUT /printjobs/1.json
  def update
    respond_to do |format|
      if @printjob.update(printjob_params)
        format.html { redirect_to @printjob, notice: 'Printjob was successfully updated.' }
        format.json { render :show, status: :ok, location: @printjob }
      else
        format.html { render :edit }
        format.json { render json: @printjob.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /printjobs/1
  # DELETE /printjobs/1.json
  def destroy
    if  @printjob.archived
      @printjob.destroy
        respond_to do |format|
        format.html { redirect_to printjobs_url, notice: 'Lavoro Eliminato.' }
        format.json { head :no_content }
      end
      
    else
      @printjob.archive
      respond_to do |format|
        format.html { redirect_to printjobs_url, notice: 'Lavoro Archiviato.' }
        format.json { head :no_content }
      end
      
    end
    
  end

  def mark_completed
    @printjob.completed = true
    respond_to do |format|
      format.html { redirect_to printjobs_url, notice: 'Lavoro #{@printjob.name} completato!' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_printjob
      @printjob = Printjob.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def printjob_params
      params.require(:printjob).permit(:name, :shape_id, :mod_id, :shirt_id, :color_id, :size_id, :artwork_id, :diamond, :name_under, :name_behind, :lettering, :caption, :font_id, :price, :ready, :archive, :font_color, :note)
    end
end
