class ChecklibsController < ApplicationController
  before_action :set_checklib, only: [:show, :edit, :update, :destroy]

  # GET /checklibs
  # GET /checklibs.json
  def index
    @checklibs = Checklib.all
  end

  # GET /checklibs/1
  # GET /checklibs/1.json
  def show
  end

  # GET /checklibs/new
  def new
    @checklib = Checklib.new
  end

  # GET /checklibs/1/edit
  def edit
  end

  # POST /checklibs
  # POST /checklibs.json
  def create
    @checklib = Checklib.new(checklib_params)

    respond_to do |format|
      if @checklib.save
        format.html { redirect_to @checklib, notice: 'Checklib was successfully created.' }
        format.json { render :show, status: :created, location: @checklib }
      else
        format.html { render :new }
        format.json { render json: @checklib.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /checklibs/1
  # PATCH/PUT /checklibs/1.json
  def update
    respond_to do |format|
      if @checklib.update(checklib_params)
        format.html { redirect_to @checklib, notice: 'Checklib was successfully updated.' }
        format.json { render :show, status: :ok, location: @checklib }
      else
        format.html { render :edit }
        format.json { render json: @checklib.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /checklibs/1
  # DELETE /checklibs/1.json
  def destroy
    @checklib.destroy
    respond_to do |format|
      format.html { redirect_to checklibs_url, notice: 'Checklib was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_checklib
      @checklib = Checklib.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def checklib_params
      params.fetch(:checklib, {})
    end
end
