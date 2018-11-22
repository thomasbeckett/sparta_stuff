class PhilosophersController < ApplicationController
  before_action :set_philosopher, only: [:show, :update, :destroy]

  # GET /philosophers
  def index
    @philosophers = Philosopher.all.map do |philosopher|
      {
        name: philosopher.name,
        nationality: philosopher.nationality,
        university: philosopher.university,
        quotes: philosopher.quotes
      }
    end

    render json: @philosophers
  end

  # GET /philosophers/1
  def show
    render json: @philosopher
  end

  # POST /philosophers
  def create
    @philosopher = Philosopher.new(philosopher_params)

    if @philosopher.save
      render json: @philosopher, status: :created, location: @philosopher
    else
      render json: @philosopher.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /philosophers/1
  def update
    if @philosopher.update(philosopher_params)
      render json: @philosopher
    else
      render json: @philosopher.errors, status: :unprocessable_entity
    end
  end

  # DELETE /philosophers/1
  def destroy
    @philosopher.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_philosopher
      @philosopher = Philosopher.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def philosopher_params
      params.require(:philosopher).permit(:name, :nationality, :university)
    end
end
