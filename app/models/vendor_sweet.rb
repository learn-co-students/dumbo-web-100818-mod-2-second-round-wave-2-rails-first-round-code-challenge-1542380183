class VendorSweet < ApplicationRecord
  belongs_to :vendor
  belongs_to :sweet

  validates :vendor_id, presence: true
  validates :sweet_id, presence: true
end
