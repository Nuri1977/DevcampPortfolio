class PortfoliosController < ApplicationController
  before_action :set_portfolio_item, only: [:show, :edit, :update, :destroy]
  layout 'portfolio'
  access all: [:show, :index], user: {except: [:destroy, :new, :create, :update]}, siteadmin: :all

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
  end

  def edit
  end

  def update
    if @port_item.update(portfolio_items_params)
      flash[:notice] = "Yor potrfolio item is created"
      redirect_to @port_item
    else
      flash[:notice] = "Yor potrfolio item is was not edited"
      render 'edit'
    end
  end

  def destroy
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
                                      :main_image,
                                      :thumb_image,
                                      technologies_atributes: [:name]
                                      )
  end

  def set_portfolio_item
    @port_item = Portfolio.find(params[:id])
  end

end
