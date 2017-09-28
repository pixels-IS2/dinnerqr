class OrderDishesController < ApplicationController
  before_action :set_order_dish, only: [:show, :edit, :update, :destroy]

  # GET /order_dishes
  # GET /order_dishes.json
  def index
    @order_dishes = OrderDish.all
  end

  # GET /order_dishes/1
  # GET /order_dishes/1.json
  def show
  end

  # GET /order_dishes/new
  def new
    @order_dish = OrderDish.new
  end

  # GET /order_dishes/1/edit
  def edit
  end

  # POST /order_dishes
  # POST /order_dishes.json
  def create
    @order_dish = OrderDish.new(order_dish_params)

    respond_to do |format|
      if @order_dish.save
        format.html { redirect_to @order_dish, notice: 'Order dish was successfully created.' }
        format.json { render :show, status: :created, location: @order_dish }
      else
        format.html { render :new }
        format.json { render json: @order_dish.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_dishes/1
  # PATCH/PUT /order_dishes/1.json
  def update
    respond_to do |format|
      if @order_dish.update(order_dish_params)
        format.html { redirect_to @order_dish, notice: 'Order dish was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_dish }
      else
        format.html { render :edit }
        format.json { render json: @order_dish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_dishes/1
  # DELETE /order_dishes/1.json
  def destroy
    @order_dish.destroy
    respond_to do |format|
      format.html { redirect_to order_dishes_url, notice: 'Order dish was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_dish
      @order_dish = OrderDish.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_dish_params
      params.fetch(:order_dish, {})
    end
end
