class VendorsweetsController < ApplicationController

  def new
    @vendorsweet = Vendorsweet.new
    @sweets = Sweet.all
    @vendors = Vendor.all
  end

  def create
    @vendorsweet = Vendorsweet.new(vendorsweet_params)
    if @vendorsweet.save
      redirect_to vendor_path(@vendorsweet.vendor)
    else
      render :new
    end
  end


private
def vendorsweet_params
  params.require(:vendorsweet).permit(:vendor_id, :sweet_id)
end
end
