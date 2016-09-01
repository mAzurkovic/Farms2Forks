class AddAmountToListing < ActiveRecord::Migration
  def change
    add_column :listings, :amount, :integer
  end
end
