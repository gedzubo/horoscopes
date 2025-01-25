class HoroscopesController < ApplicationController
  before_action :set_horoscope, only: %i[ show edit update destroy ]

  # GET /horoscopes or /horoscopes.json
  def index
    @horoscopes = Horoscope.all
  end

  # GET /horoscopes/1 or /horoscopes/1.json
  def show
  end

  # GET /horoscopes/new
  def new
    @horoscope = Horoscope.new
  end

  # GET /horoscopes/1/edit
  def edit
  end

  # POST /horoscopes or /horoscopes.json
  def create
    @horoscope = Horoscope.new(horoscope_params)

    respond_to do |format|
      if @horoscope.save
        format.html { redirect_to @horoscope, notice: "Horoscope was successfully created." }
        format.json { render :show, status: :created, location: @horoscope }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @horoscope.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /horoscopes/1 or /horoscopes/1.json
  def update
    respond_to do |format|
      if @horoscope.update(horoscope_params)
        format.html { redirect_to @horoscope, notice: "Horoscope was successfully updated." }
        format.json { render :show, status: :ok, location: @horoscope }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @horoscope.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /horoscopes/1 or /horoscopes/1.json
  def destroy
    @horoscope.destroy!

    respond_to do |format|
      format.html { redirect_to horoscopes_path, status: :see_other, notice: "Horoscope was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_horoscope
      @horoscope = Horoscope.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def horoscope_params
      params.expect(horoscope: [ :title, :body, :sign_id, :start_date, :end_date ])
    end
end
