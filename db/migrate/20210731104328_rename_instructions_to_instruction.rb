class RenameInstructionsToInstruction < ActiveRecord::Migration[6.0]
  def change
    rename_column :offers, :instructions, :instruction
  end
end
