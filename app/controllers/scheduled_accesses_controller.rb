class ScheduledAccessesController < ApplicationController
  before_action :set_scheduled_access, only: [:show, :edit, :update, :destroy]

  # GET /scheduled_accesses
  # GET /scheduled_accesses.json
  def index
    @scheduled_accesses = ScheduledAccess.all
  end

  # GET /scheduled_accesses/1
  # GET /scheduled_accesses/1.json
  def show
  end

  # GET /scheduled_accesses/new
  def new
    @scheduled_access = ScheduledAccess.new
  end

  # GET /scheduled_accesses/1/edit
  def edit
  end

  # POST /scheduled_accesses
  # POST /scheduled_accesses.json
  def create
    @scheduled_access = ScheduledAccess.new(scheduled_access_params)

    respond_to do |format|
      if @scheduled_access.save
        format.html { redirect_to @scheduled_access, notice: 'Scheduled access was successfully created.' }
        format.json { render :show, status: :created, location: @scheduled_access }
      else
        format.html { render :new }
        format.json { render json: @scheduled_access.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scheduled_accesses/1
  # PATCH/PUT /scheduled_accesses/1.json
  def update
    respond_to do |format|
      if @scheduled_access.update(scheduled_access_params)
        format.html { redirect_to @scheduled_access, notice: 'Scheduled access was successfully updated.' }
        format.json { render :show, status: :ok, location: @scheduled_access }
      else
        format.html { render :edit }
        format.json { render json: @scheduled_access.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scheduled_accesses/1
  # DELETE /scheduled_accesses/1.json
  def destroy
    @scheduled_access.destroy
    respond_to do |format|
      format.html { redirect_to scheduled_accesses_url, notice: 'Scheduled access was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scheduled_access
      @scheduled_access = ScheduledAccess.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scheduled_access_params
      params.require(:scheduled_access).permit(:order_id, :scheduled_date, :scheduled_begin_time, :sheduled_end_time)
    end
end
