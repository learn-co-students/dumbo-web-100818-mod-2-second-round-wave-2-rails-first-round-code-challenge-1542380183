  class VendorsweetsController < ApplicationController
    def index
      @vendorsweets = VendorSweet.all
      @vendor = Vendor.all
      @sweet = Sweet.all 
    end

  def new
  @vendorsweet = VendorSweet.new
  @vendors = Vendor.all
  @sweets = Sweet.all
  end

  def create
  @vendorsweet = VendorSweet.find(params[:id])
  @vendorsweet = VendorSweet.new(vendorsweet_params)
  if @vendorsweet.save
    redirect_to vendor_sweets_path(@vendorsweet.vendor)
  else
    render :new
  end
  end

  private

  def vendorsweet_params
   params.require(:vendorsweet).permit(:vendor_id, :sweet_id, :rating)
  end

  end
