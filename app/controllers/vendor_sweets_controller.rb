class VendorSweetsController < ApplicationController
  def new
    @vendorsweet = VendorSweet.new
    @vendors = Vendor.all
    @sweets = Sweet.all
  end

  def create
    @vendorsweet = VendorSweet.create(vendor_sweets_params)
    redirect_to vendor_path(@vendorsweet.vendor)
  end

  private

  def vendor_sweets_params
    params.require(:vendor_sweet).permit(:vendor_id, :sweet_id)
  end


end

