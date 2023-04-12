class OrdersDescriptionsController < ApplicationController
  before_action :set_orders_description, only: %i[ show edit update destroy ]

  # GET /orders_descriptions or /orders_descriptions.json
  def index
    @orders_descriptions = OrdersDescription.all
  end

  # GET /orders_descriptions/1 or /orders_descriptions/1.json
  def show
  end

  # GET /orders_descriptions/new
  def new
    @orders_description = OrdersDescription.new
  end

  # GET /orders_descriptions/1/edit
  def edit
  end

  # POST /orders_descriptions or /orders_descriptions.json
  def create
    @orders_description = OrdersDescription.new(orders_description_params)

    respond_to do |format|
      if @orders_description.save
        format.html { redirect_to orders_description_url(@orders_description), notice: "Orders description was successfully created." }
        format.json { render :show, status: :created, location: @orders_description }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @orders_description.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders_descriptions/1 or /orders_descriptions/1.json
  def update
    respond_to do |format|
      if @orders_description.update(orders_description_params)
        format.html { redirect_to orders_description_url(@orders_description), notice: "Orders description was successfully updated." }
        format.json { render :show, status: :ok, location: @orders_description }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @orders_description.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders_descriptions/1 or /orders_descriptions/1.json
  def destroy
    @orders_description.destroy

    respond_to do |format|
      format.html { redirect_to orders_descriptions_url, notice: "Orders description was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orders_description
      @orders_description = OrdersDescription.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def orders_description_params
      params.require(:orders_description).permit(:item_id, :order_id, :quantity)
    end
end
