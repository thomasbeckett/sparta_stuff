class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :update, :destroy]

  # GET /people
  def index
    @people = Person.all.map do |person|
      {
        first_name: person.first_name,
        last_name: person.last_name,
        dob: person.dob,
        job: person.job,
        organisation: person.organisation,
        address: person.address,
        cars: person.cars,
        pets: person.pets
      }
    end

    render json: @people
  end

  # GET /people/1
  def show
    render json: @person
  end

  # POST /people
  def create
    @person = Person.new(person_params)

    if @person.save
      render json: @person, status: :created, location: @person
    else
      render json: @person.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /people/1
  def update
    if @person.update(person_params)
      render json: @person
    else
      render json: @person.errors, status: :unprocessable_entity
    end
  end

  # DELETE /people/1
  def destroy
    @person.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def person_params
      params.require(:person).permit(:first_name, :last_name, :dob, :job, :organisation)
    end
end
