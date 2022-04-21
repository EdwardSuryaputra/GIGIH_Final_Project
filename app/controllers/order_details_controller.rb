class OrderDetailsController < ApplicationController
  before_action :set_order

  # GET /order_details or /order_details.json
  def index
    @order_details = OrderDetail.all
  end

  # GET /order_details/1 or /order_details/1.json
  def show
  end

  # POST /order_details or /order_details.json
  def create
    @order_detail = @order.order_details.new(order_detail_params)

    @order.save
    session[:order_id] = @order.id
  end

  # PATCH/PUT /order_details/1 or /order_details/1.json
  def update
     @order_detail = @order.order_details.find(params[:id])
     @order_detail.update_attributes(order_detail_params)
     @order_details = current_order.order_details
  end

  # DELETE /order_details/1 or /order_details/1.json
  def destroy
    @order_detail = @order.order_details.find(params[:id])
    @order_detail.destroy

    @order_details = current_order.order_details
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = current_order
    end

    # Only allow a list of trusted parameters through.
    def order_detail_params
      params.require(:order_detail).permit(:menu_id, :quantity)
    end
end
