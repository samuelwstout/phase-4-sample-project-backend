class MusiciansController < ApplicationController
  skip_before_action :authorized, only: [:index, :create]
  before_action :set_musician, only: %i[ show update destroy ]

  # GET /musicians
  def index
    @musicians = Musician.all

    render json: @musicians
  end

  # GET /musicians/1
  def show
    render json: @musician
  end

  # POST /musicians
  def create
    @musician = Musician.new(musician_params)

    if @musician.save
      @token = encode_token({ musician_id: @musician.id })
      render json: { musician: @musician, token: @token }, status: :created, location: @musician
    else
      render json: @musician.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /musicians/1
  def update
    if @musician.update(musician_params)
      render json: @musician
    else
      render json: @musician.errors, status: :unprocessable_entity
    end
  end

  # DELETE /musicians/1
  def destroy
    @musician.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_musician
      @musician = Musician.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def musician_params
      params.require(:musician).permit(:first_name, :last_name, :email, :password, :instrument, :location, :bio, :media_url1, :media_url2)
    end
=begin
    params = {
      required: {
        permitted_attr_1: value_1,
        permitted_attr_2: value_2,
        permitted_attr_3: value_3
      }
    }
=end

end
