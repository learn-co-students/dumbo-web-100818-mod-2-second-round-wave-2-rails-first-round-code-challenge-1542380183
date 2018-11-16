class CreateVendorsweets < ActiveRecord::Migration[5.1]
  def change
    create_table :vendorsweets do |t|
      t.references :sweet, foreign_key: true
      t.references :vendor, foreign_key: true

      t.timestamps
    end
  end
end
