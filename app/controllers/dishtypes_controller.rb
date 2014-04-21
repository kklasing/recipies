class DishtypesController < ApplicationController
  before_action :set_dishtype, only: [:show, :edit, :update, :destroy]

  # GET /dishtypes
  # GET /dishtypes.json
  def index
    @dishtypes = Dishtype.all
  end

  # GET /dishtypes/1
  # GET /dishtypes/1.json
  def show
  end

  # GET /dishtypes/new
  def new
    @dishtype = Dishtype.new
  end

  # GET /dishtypes/1/edit
  def edit
  end

  # POST /dishtypes
  # POST /dishtypes.json
  def create
    @dishtype = Dishtype.new(dishtype_params)

    respond_to do |format|
      if @dishtype.save
        format.html { redirect_to @dishtype, notice: 'Dishtype was successfully created.' }
        format.json { render action: 'show', status: :created, location: @dishtype }
      else
        format.html { render action: 'new' }
        format.json { render json: @dishtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dishtypes/1
  # PATCH/PUT /dishtypes/1.json
  def update
    respond_to do |format|
      if @dishtype.update(dishtype_params)
        format.html { redirect_to @dishtype, notice: 'Dishtype was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @dishtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dishtypes/1
  # DELETE /dishtypes/1.json
  def destroy
    @dishtype.destroy
    respond_to do |format|
      format.html { redirect_to dishtypes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dishtype
      @dishtype = Dishtype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dishtype_params
      params.require(:dishtype).permit(:name)
    end
end
