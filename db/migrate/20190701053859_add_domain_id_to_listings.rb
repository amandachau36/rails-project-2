class AddDomainIdToListings < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :domain_id, :integer
  end
end
