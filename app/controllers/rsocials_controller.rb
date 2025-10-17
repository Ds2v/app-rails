class RsocialsController < ApplicationController
  before_action :set_rsocial, only: %i[ show edit update destroy ]

  # GET /rsocials or /rsocials.json
  def index
    @rsocials = Rsocial.all
  end

  # GET /rsocials/1 or /rsocials/1.json
  def show
  end

  # GET /rsocials/new
  def new
    @rsocial = Rsocial.new
  end

  # GET /rsocials/1/edit
  def edit
  end

  # POST /rsocials or /rsocials.json
  def create
    @rsocial = Rsocial.new(rsocial_params)

    respond_to do |format|
      if @rsocial.save
        format.html { redirect_to @rsocial, notice: "Rsocial was successfully created." }
        format.json { render :show, status: :created, location: @rsocial }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rsocial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rsocials/1 or /rsocials/1.json
  def update
    respond_to do |format|
      if @rsocial.update(rsocial_params)
        format.html { redirect_to @rsocial, notice: "Rsocial was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @rsocial }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rsocial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rsocials/1 or /rsocials/1.json
  def destroy
    @rsocial.destroy!

    respond_to do |format|
      format.html { redirect_to rsocials_path, notice: "Rsocial was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rsocial
      @rsocial = Rsocial.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rsocial_params
      params.require(:rsocial).permit(:title, :color)
    end
end
