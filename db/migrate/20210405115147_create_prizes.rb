class CreatePrizes < ActiveRecord::Migration[6.1]
  def change
    create_table :prizes do |t|
      t.string :description
      t.integer :placing
      t.references :raffle, null: false, foreign_key: true
      t.references :ticket, null: true, foreign_key: true

      t.timestamps
    end
  end
end
