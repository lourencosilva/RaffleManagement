class CreateKinds < ActiveRecord::Migration[6.1]
  def change
    create_table :kinds do |t|
      t.string :description
      t.integer :initial
      t.integer :step
      t.integer :quantity

      t.timestamps
    end
  end
end
