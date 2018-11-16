class VendorSweetsController < ApplicationController

  def new
    @vendor_sweet = VendorSweet.new
    @vendors = Vendor.all
    @sweets = Sweet.all
  end


  def create
    @vendor_sweet = VendorSweet.create(vendor_sweet_params)

    redirect_to @vendor_sweet.vendor
  end


private

def vendor_sweet_params
  params.require(:vendor_sweet).permit(:vendor_id, :sweet_id)
end


end
