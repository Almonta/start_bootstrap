class StartBootstrapsController < ApplicationController
  before_action :set_start_bootstrap, only: %i[ show edit update destroy ]

  def top
  end

  # GET /start_bootstraps or /start_bootstraps.json
  def index
    @start_bootstraps = StartBootstrap.all
  end

  # GET /start_bootstraps/1 or /start_bootstraps/1.json
  def show
  end

  # GET /start_bootstraps/new
  def new
    @start_bootstrap = StartBootstrap.new
  end

  # GET /start_bootstraps/1/edit
  def edit
  end

  # POST /start_bootstraps or /start_bootstraps.json
  def create
    @start_bootstrap = StartBootstrap.new(start_bootstrap_params)

    respond_to do |format|
      if @start_bootstrap.save
        format.html { redirect_to @start_bootstrap, notice: "Start bootstrap was successfully created." }
        format.json { render :show, status: :created, location: @start_bootstrap }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @start_bootstrap.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /start_bootstraps/1 or /start_bootstraps/1.json
  def update
    respond_to do |format|
      if @start_bootstrap.update(start_bootstrap_params)
        format.html { redirect_to @start_bootstrap, notice: "Start bootstrap was successfully updated." }
        format.json { render :show, status: :ok, location: @start_bootstrap }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @start_bootstrap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /start_bootstraps/1 or /start_bootstraps/1.json
  def destroy
    @start_bootstrap.destroy
    respond_to do |format|
      format.html { redirect_to start_bootstraps_url, notice: "Start bootstrap was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_start_bootstrap
      @start_bootstrap = StartBootstrap.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def start_bootstrap_params
      params.fetch(:start_bootstrap, {})
    end
end
