class AddExpiryTimeToTokens < ActiveRecord::Migration[5.2]
  def change
    add_column :tokens, :expiry_time, :datetime
  end
end
