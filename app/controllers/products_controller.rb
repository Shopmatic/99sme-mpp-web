class ProductsController < ApplicationController
  
  def index
    render_404 and return if params[:name].blank?
    product_name = params[:name]
    @product = Products.find_by_name(product_name)
    render_404 and return if @product.nil?
  end

  def render_404
    respond_to do |format|
      format.html { render :file => "#{Rails.root}/public/404", :layout => false, :status => :not_found }
      format.xml { head :not_found }
      format.any { head :not_found }
    end
  end

  def details
    render_404 and return if params[:id].blank?
    product_id = params[:id]
    @product =  Products.find(product_id)
    @merchant =  Merchants.find(@product.merchant_id)

     respond_to do | format |
      format.html {render :partial => 'products/product_detail'}
     end 

  end
end
