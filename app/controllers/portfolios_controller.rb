class PortfoliosController < ApplicationController

  def index
    @port_items = Portfolio.all
  end

  def new
    @port_item = Portfolio.new
  end

  def create
    @port_item = Portfolio.new(portfolio_items_params)
    if @port_item.save
      flash[:notice] = "Yor potrfolio item is created"
      redirect_to portfolios_path
    else
      render 'new'
    end
  end

  def show
    @port_item = Portfolio.find(params[:id])
  end

  def edit
    @port_item = Portfolio.find(params[:id])
  end

  def update
    @port_item = Portfolio.find(params[:id])
    if @port_item.update(portfolio_items_params)
      flash[:notice] = "Yor potrfolio item is created"
      redirect_to @port_item
    else
      flash[:notice] = "Yor potrfolio item is was not edited"
      render 'edit'
    end
  end

  def destroy
    @port_item = Portfolio.find(params[:id])
    if @port_item.destroy
      flash[:notice] = "Yor potrfolio item was deleted successufully"
      redirect_to portfolios_path
    end

  end

  private

  def portfolio_items_params
    params.require(:portfolio).permit(:title,
                                      :subtitle, 
                                      :body,
                                      technologies_atributes: [:name]
                                      )
  end

end
