class CreateRaffles < ActiveRecord::Migration[6.1]
  def change
    create_table :raffles do |t|
      t.string :title
      t.string :description
      t.datetime :probable_draw_at
      t.datetime :start_sale_at
      t.datetime :finishes_sale_at
      t.datetime :drawn_at
      t.decimal :ticket_value
      t.references :user, null: false, foreign_key: true
      t.references :kind, null: false, foreign_key: true

      t.timestamps
    end
  end
end
