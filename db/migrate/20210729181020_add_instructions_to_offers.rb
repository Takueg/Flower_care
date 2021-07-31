class AddInstructionsToOffers < ActiveRecord::Migration[6.0]
  def change
    add_column :offers, :instructions, :text
  end
end
