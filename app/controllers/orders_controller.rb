class OrdersController < ApplicationController

  def index
    unless current_user
      redirect_to new_user_session_path
    else
      params[:page] ||= 1
      @orders = current_user.orders.paginate(:page => params[:page], per_page: 20).order('id DESC')
    end
  end
  # GET /orders/1
  # GET /orders/1.json
  def show
    @order = Order.find(params[:id])
    unless current_user && @order.user == current_user
      redirect_to new_user_session_path
    end
  end

  # GET /orders/new
  # GET /orders/new.json
  def new
    @order = Order.new
  end

  # GET /orders/1/edit
  def edit
    @order = Order.find(params[:id])
    unless current_user && @order.user == current_user
      redirect_to new_user_session_path
    end
  end

  # POST /orders
  # POST /orders.json
  def create
    params[:order][:user_id] = current_user.id if current_user
    @order = Order.new(params[:order])

    respond_to do |format|
      if @order.save_with_captcha
        if current_user
          format.html { redirect_to @order, notice: 'Order was successfully created.' }
        else
          format.html { redirect_to root_path, notice: 'Order was successfully created.' }
        end
      else
        format.html { render action: "new" }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /orders/1
  # PUT /orders/1.json
  def update
    @order = Order.find(params[:id])

    respond_to do |format|
      if @order.update_attributes(params[:order])
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order = Order.find(params[:id])
    unless (current_user && @order.user == current_user) || (current_user && current_user.admin?)
      redirect_to new_user_session_path
    else
      @order.destroy

      if current_user.admin?
        redirect_to admin_orders_path
      else
        redirect_to orders_path
      end
    end
  end
end
