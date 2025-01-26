class HoroscopeTypesController < ApplicationController
  before_action :set_horoscope_type, only: %i[ show edit update destroy ]

  # GET /horoscope_types or /horoscope_types.json
  def index
    @horoscope_types = HoroscopeType.all
  end

  # GET /horoscope_types/1 or /horoscope_types/1.json
  def show
  end

  # GET /horoscope_types/new
  def new
    @horoscope_type = HoroscopeType.new
  end

  # GET /horoscope_types/1/edit
  def edit
  end

  # POST /horoscope_types or /horoscope_types.json
  def create
    @horoscope_type = HoroscopeType.new(horoscope_type_params)

    respond_to do |format|
      if @horoscope_type.save
        format.html { redirect_to @horoscope_type, notice: "Horoscope type was successfully created." }
        format.json { render :show, status: :created, location: @horoscope_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @horoscope_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /horoscope_types/1 or /horoscope_types/1.json
  def update
    respond_to do |format|
      if @horoscope_type.update(horoscope_type_params)
        format.html { redirect_to @horoscope_type, notice: "Horoscope type was successfully updated." }
        format.json { render :show, status: :ok, location: @horoscope_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @horoscope_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /horoscope_types/1 or /horoscope_types/1.json
  def destroy
    @horoscope_type.destroy!

    respond_to do |format|
      format.html { redirect_to horoscope_types_path, status: :see_other, notice: "Horoscope type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_horoscope_type
      @horoscope_type = HoroscopeType.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def horoscope_type_params
      params.expect(horoscope_type: [ :name ])
    end
end
