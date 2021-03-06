class HealthySwapQueriesController < ApplicationController
  def new
    @healthy_swap_query = HealthySwapQuery.new
  end

  def edit
    @healthy_swap_query = HealthySwapQuery.find(params[:id])
  end

  def show
    @healthy_swap_query = HealthySwapQuery.find(params[:id])
    @product_swap = @healthy_swap_query.perform_swap
  end

  def create
    @healthy_swap_query = HealthySwapQuery.new(params[:healthy_swap_query])
    if @healthy_swap_query.save
      redirect_to healthy_swap_query_path(@healthy_swap_query)
    else
      render :action => :new, :error => 'Errors were encountered'
    end
  end

  def update
    @healthy_swap_query = HealthySwapQuery.find(params[:id])
    if @healthy_swap_query.update_attributes(params[:healthy_swap_query])
      redirect_to healthy_swap_query_path(@healthy_swap_query)
    else
      render :action => :new, :error => 'Errors were encountered'
    end
  end
end
