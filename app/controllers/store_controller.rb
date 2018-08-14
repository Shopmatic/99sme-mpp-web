class StoreController < ApplicationController
  def index
    render_404 and return if params[:name].blank?
    store_name = params[:name]
    @merchant = Merchants.find_by_canonical_name(store_name)
    render_404 and return if @merchant.nil?
    @products = Products.find_by_merchant_id(@merchant.id)
  end

  def render_404
    respond_to do |format|
      format.html { render :file => "#{Rails.root}/public/404", :layout => false, :status => :not_found }
      format.xml { head :not_found }
      format.any { head :not_found }
    end
  end
end
