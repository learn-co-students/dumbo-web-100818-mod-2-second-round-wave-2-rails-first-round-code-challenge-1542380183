class VendorSweetsController < ApplicationController

  def index
    @vendor_sweets = VendorSweet.all
  end

  def new
    @vendor_sweet = VendorSweet.new
    @vendors = Vendor.all
    @sweets = Sweet.all
  end

  def create
    @vendor_sweet = VendorSweet.new(vendor_sweet_params)
    if @vendor_sweet.save
      redirect_to vendor_path(@vendor_sweet.vendor)
    else
      render :new
    end
  end

  private

  def vendor_sweet_params
    params.require(:vendor_sweet).permit(:vendor_id, :sweet_id)
  end

end
