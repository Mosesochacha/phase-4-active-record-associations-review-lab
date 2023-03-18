class AddForeignKeysToTables < ActiveRecord::Migration[6.1]
  def change
    add_reference :taxis, :passenger, foreign_key: true
    add_reference :passengers, :taxi, foreign_key: true
    add_reference :rides, :taxi, foreign_key: true
    add_reference :rides, :passenger, foreign_key: true
  end
end
