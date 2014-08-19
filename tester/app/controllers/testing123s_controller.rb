class Testing123sController < ApplicationController
  before_action :set_testing123, only: [:show, :edit, :update, :destroy]

  # GET /testing123s
  # GET /testing123s.json
  def index
    @testing123s = Testing123.all
  end

  # GET /testing123s/1
  # GET /testing123s/1.json
  def show
  end

  # GET /testing123s/new
  def new
    @testing123 = Testing123.new
  end

  # GET /testing123s/1/edit
  def edit
  end

  # POST /testing123s
  # POST /testing123s.json
  def create
    @testing123 = Testing123.new(testing123_params)

    respond_to do |format|
      if @testing123.save
        format.html { redirect_to @testing123, notice: 'Testing123 was successfully created.' }
        format.json { render :show, status: :created, location: @testing123 }
      else
        format.html { render :new }
        format.json { render json: @testing123.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testing123s/1
  # PATCH/PUT /testing123s/1.json
  def update
    respond_to do |format|
      if @testing123.update(testing123_params)
        format.html { redirect_to @testing123, notice: 'Testing123 was successfully updated.' }
        format.json { render :show, status: :ok, location: @testing123 }
      else
        format.html { render :edit }
        format.json { render json: @testing123.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testing123s/1
  # DELETE /testing123s/1.json
  def destroy
    @testing123.destroy
    respond_to do |format|
      format.html { redirect_to testing123s_url, notice: 'Testing123 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testing123
      @testing123 = Testing123.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def testing123_params
      params[:testing123]
    end
end
