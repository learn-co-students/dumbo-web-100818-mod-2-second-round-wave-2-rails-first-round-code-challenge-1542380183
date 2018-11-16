class VendorSweetsController < ApplicationController

  def new
    @vendor_sweet = VendorSweet.new
  end

  def create
    @vendor_sweet = VendorSweet.new(vendor_sweet_params)
    @vendor_sweet.save

    redirect_to @vendor_sweet.vendor
  end

  def show
    @sweet = Sweet.find(params[:id])
      @vendor = Vendor.find(params[:id])
    @vendor_sweet = VendorSweet.find(params[:id])
  end

  private
  def vendor_sweet_params
    params.require(:vendor_sweet).permit(:vendor_id, :sweet_id)
  end
end
