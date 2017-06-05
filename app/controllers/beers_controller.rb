class BeersController < OpenReadController
  before_action :set_beer, only: [:update, :destroy]

  # GET /beers
  def index
    @beers = Beer.all

    render json: @beers
  end

  # GET /beers/1
  def show
    render json: @beer
  end

  # POST /beers
  def create
    @beer = current_user.beers.build(beer_params)

    if @beer.save
      render json: @beer, status: :created, location: @beer
    else
      render json: @beer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /beers/1
  def update
    if @beer.update(beer_params)
      render json: @beer
    else
      render json: @beer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /beers/1
  def destroy
    @beer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beer
      @beer = current_user.beers.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def beer_params
      params.require(:beer).permit(:city, :beer, :brewery, :style, :description, :user_id)
    end
end