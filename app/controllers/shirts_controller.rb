class ShirtsController < ApplicationController
  before_action :set_shirt, only: [:show, :edit, :update, :destroy]

  # GET /shirts
  # GET /shirts.json
  def index
    @shirts = Shirt.all
  end

  # GET /shirts/1
  # GET /shirts/1.json
  def show
    @shirt = Shirt.find(params[:id])
    @avail_sizes = Size.all - @shirt.size
    @avail_colors = Color.all - @shirt.color

  end

  # GET /shirts/new
  def new
    @shirt = Shirt.new
  end

  # GET /shirts/1/edit
  def edit
  end

  def update_size

    @size = Size.find(params[:size])
    @shirt = Shirt.find(params[:id])

    if  @shirt.size.include?(@size)
      @shirt.size.delete(@size)
    else
       @shirt.size << (@size)
    end
   

    respond_to do |format|
      
        format.html { redirect_to @shirt, notice: 'Taglie disponibili aggiornate.' }
        format.json { render :show, status: :created, location: @shirt }
      
    end

  end

  def update_color

    @color = Color.find(params[:color])
    @shirt = Shirt.find(params[:id])

    if  @shirt.color.include?(@color)
      @shirt.color.delete(@color)
    else
       @shirt.color << (@color)
    end
    

    respond_to do |format|
      
        format.html { redirect_to @shirt, notice: 'Colori disponibili aggiornati.' }
        format.json { render :show, status: :created, location: @shirt }
      
    end

  end

  # POST /shirts
  # POST /shirts.json
  def create
    @shirt = Shirt.new(shirt_params)

    respond_to do |format|
      if @shirt.save
        format.html { redirect_to shirts_url, notice: 'Modello aggiunto.' }
        format.json { render :show, status: :created, location: @shirt }
      else
        format.html { render :new }
        format.json { render json: @shirt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shirts/1
  # PATCH/PUT /shirts/1.json
  def update
    respond_to do |format|
      if @shirt.update(shirt_params)
        format.html { redirect_to @shirt, notice: 'Modello modificato.' }
        format.json { render :show, status: :ok, location: @shirt }
      else
        format.html { render :edit }
        format.json { render json: @shirt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shirts/1
  # DELETE /shirts/1.json
  def destroy
    @shirt.destroy
    respond_to do |format|
      format.html { redirect_to shirts_url, notice: 'Modello eliminato.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shirt
      @shirt = Shirt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shirt_params
      params.require(:shirt).permit(:description, :shape_id, :path)
    end
end
