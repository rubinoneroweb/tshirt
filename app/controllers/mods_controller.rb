class ModsController < ApplicationController
  before_action :set_mod, only: [:show, :edit, :update, :destroy]

  # GET /mods
  # GET /mods.json
  def index
    @mods = Mod.all
  end

  # GET /mods/1
  # GET /mods/1.json
  def show
   
    @colors = @mod.color
    @sizes = @mod.size
  end

  # GET /mods/new
  def new
    @mod = Mod.new
  end

  # GET /mods/1/edit
  def edit
  end

  # POST /mods
  # POST /mods.json
  def create
    #byebug
    @mod = Mod.new(mod_params)

    respond_to do |format|
      if @mod.save
        format.html { redirect_to @mod, notice: 'Mod was successfully created.' }
        format.json { render :show, status: :created, location: @mod }
      else
        format.html { render :new }
        format.json { render json: @mod.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mods/1
  # PATCH/PUT /mods/1.json
  def update
    @colors = @mod.color
    @sizes = @mod.size
    respond_to do |format|
      if @mod.update(mod_params)
        format.html { redirect_to @mod, notice: 'Mod was successfully updated.' }
        format.json { render :show, status: :ok, location: @mod }
      else
        format.html { render :edit }
        format.json { render json: @mod.errors, status: :unprocessable_entity }
      end
    end
  end

  def add_size
    @colors = @mod.color
    @sizes = @mod.size
    @size = Size.find(params[:size])
    @mod.size << @size
    respond_to do |format|
      if @mod.update(mod_params)
        format.html { redirect_to @mod, notice: 'Size was successfully added.' }
        format.json { render :show, status: :ok, location: @mod }
      else
        format.html { render :edit }
        format.json { render json: @mod.errors, status: :unprocessable_entity }
      end
    end
  end

  def delete_size
   @mod = Mod.find(params[:id])
    @size = Size.find(params[:size])
    @mod.size.delete(@size)
    respond_to do |format|
      if true
        format.html { redirect_to @mod, notice: 'Size was successfully deleted.' }
        format.json { render :show, status: :ok, location: @mod }
      else
        format.html { render :edit }
        format.json { render json: @mod.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mods/1
  # DELETE /mods/1.json
  def destroy
    @mod.destroy
    respond_to do |format|
      format.html { redirect_to mods_url, notice: 'Mod was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mod
      @mod = Mod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mod_params
      #params.require(:mod).permit(:shape_id, :description, :size)
    end
end
