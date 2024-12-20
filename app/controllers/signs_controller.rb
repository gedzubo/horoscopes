class SignsController < ApplicationController
  before_action :set_sign, only: %i[ show edit update ]

  # GET /signs or /signs.json
  def index
    @signs = Sign.all
  end

  # GET /signs/1 or /signs/1.json
  def show
  end

  # GET /signs/1/edit
  def edit
  end

  # PATCH/PUT /signs/1 or /signs/1.json
  def update
    respond_to do |format|
      if @sign.update(sign_params)
        format.html { redirect_to @sign, notice: "Sign was successfully updated." }
        format.json { render :show, status: :ok, location: @sign }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sign.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sign
      @sign = Sign.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def sign_params
      params.expect(sign: [ :description, :period ])
    end
end
