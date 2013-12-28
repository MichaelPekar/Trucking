class Admin::OrdersController < Admin::AdminController
  def index
    params[:page] ||= 1
    @orders = Order.paginate(:page => params[:page], per_page: 20).order('id DESC')
  end

  def show
    @order = Order.find(params[:id])
  end

  def accept
  end
end
