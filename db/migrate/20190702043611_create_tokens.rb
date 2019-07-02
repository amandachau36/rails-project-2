class CreateTokens < ActiveRecord::Migration[5.2]
  def change
    create_table :tokens do |t|
      t.text :current_token

      t.timestamps
    end
  end
end
