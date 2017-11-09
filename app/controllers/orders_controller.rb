class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_client!, :only => [:new, :create]
  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    @param = params[:id]
    @orderdishes = @order.orderdishes.joins(:dish).select("orderdishes.*, orderdishes.state as orderstate, dishes.*")
    @table = @order.table
    respond_to do |format|
      format.html
      format.pdf do
        pdf = ExportPdf.new(@param,@orderdishes,@table,@order)
        puts 'pdfpdfpdfpdfpdfpdfpdfpdfpdfpdfpdfpdfpdfpdfpdfpdfpdfpdfpdfpdfpdfpdfpdfpdfpdfpdfpdf '
        
        send_data pdf.render,
          filename: "order_#{params[:id]}",
          type: 'application/pdf',
          disposition: 'inline'
      end
    end
  end

  # GET /orders/new
  def new
    @order = Order.new
    @specialities = Speciality.all

  #  raise params.to_yaml
  end

  # GET /orders/1/edit
  def edit
  end


  # POST /orders
  # POST /orders.json
  def create
    @order = current_client.orders.new
    #raise @order.to_yaml
    orderdishes = params[:orderdishes]
    total_price = 0
    orderdishes.each do |key, value|
      if not orderdishes[key]["id"].eql?(nil) and orderdishes[key]["quantity"].to_i>0
        plate_id = orderdishes[key]["id"]
        quantity = orderdishes[key]["quantity"].to_i
        price = Dish.find(plate_id).price
        total_price += quantity*price
      end
    end
    @order.price = total_price
    @order.state = "On hold"
    @order.table_id = 1
    @order.save
    orderdishes.each do |key, value|
      if not orderdishes[key]["id"].eql?(nil) and orderdishes[key]["quantity"].to_i>0
        plate_id = orderdishes[key]["id"]
        quantity = orderdishes[key]["quantity"].to_i
        specification = orderdishes[key]["specification"]
        #Orderdish.create("On hold", quantity, specification, Order.last.id, plate_id)
        orderdish = Orderdish.new
        orderdish.state = "On hold"
        orderdish.quantity = quantity
        orderdish.specification = specification
        orderdish.order_id = current_client.orders.last.id
        orderdish.dish_id = plate_id
        orderdish.save
      end
    end
    respond_to do |format|
      if @order.save
        SendBillJob.new(@order, current_client).enqueue(wait: 5.seconds)
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:orderdishes)
    end
end
