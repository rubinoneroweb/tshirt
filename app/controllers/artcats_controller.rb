class ArtcatsController < ApplicationController
  before_action :set_artcat, only: [:show, :edit, :update, :destroy]

  # GET /artcats
  # GET /artcats.json
  def index
    @artcats = Artcat.all
  end

  # GET /artcats/1
  # GET /artcats/1.json
  def show
  end

  # GET /artcats/new
  def new
    @artcat = Artcat.new
  end

  # GET /artcats/1/edit
  def edit
  end

  # POST /artcats
  # POST /artcats.json
  def create
    @artcat = Artcat.new(artcat_params)

    respond_to do |format|
      if @artcat.save
        format.html { redirect_to @artcat, notice: 'Artcat was successfully created.' }
        format.json { render :show, status: :created, location: @artcat }
      else
        format.html { render :new }
        format.json { render json: @artcat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artcats/1
  # PATCH/PUT /artcats/1.json
  def update
    respond_to do |format|
      if @artcat.update(artcat_params)
        format.html { redirect_to @artcat, notice: 'Artcat was successfully updated.' }
        format.json { render :show, status: :ok, location: @artcat }
      else
        format.html { render :edit }
        format.json { render json: @artcat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artcats/1
  # DELETE /artcats/1.json
  def destroy
    @artcat.destroy
    respond_to do |format|
      format.html { redirect_to artcats_url, notice: 'Artcat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artcat
      @artcat = Artcat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artcat_params
      params.require(:artcat).permit(:description, :path)
    end
end
