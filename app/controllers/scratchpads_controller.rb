class ScratchpadsController < ApplicationController
  before_action :set_scratchpad, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_admin!, :except => [:index, :show]

  # GET /scratchpads
  # GET /scratchpads.json
  def index
    @scratchpads = Scratchpad.all.order('created_at DESC')
  end

  # GET /scratchpads/1
  # GET /scratchpads/1.json
  def show
  end

  # GET /scratchpads/new
  def new
    @scratchpad = Scratchpad.new
    gon.scratchpad = @scratchpad
  end

  # GET /scratchpads/1/edit
  def edit
    gon.scratchpad = @scratchpad
  end

  # POST /scratchpads
  # POST /scratchpads.json
  def create
    @scratchpad = Scratchpad.new(scratchpad_params)

    respond_to do |format|
      if @scratchpad.save
        format.html { redirect_to @scratchpad, notice: 'Scratchpad was successfully created.' }
        format.json { render action: 'show', status: :created, location: @scratchpad }
      else
        format.html { render action: 'new' }
        format.json { render json: @scratchpad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scratchpads/1
  # PATCH/PUT /scratchpads/1.json
  def update
    respond_to do |format|
      if @scratchpad.update(scratchpad_params)
        format.html { redirect_to @scratchpad, notice: 'Scratchpad was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @scratchpad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scratchpads/1
  # DELETE /scratchpads/1.json
  def destroy
    @scratchpad.destroy
    respond_to do |format|
      format.html { redirect_to scratchpads_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scratchpad
      @scratchpad = Scratchpad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scratchpad_params
      params.require(:scratchpad).permit(:title, :body, :preview)
    end
end
