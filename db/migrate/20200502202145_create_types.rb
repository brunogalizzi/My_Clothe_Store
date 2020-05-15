class CreateTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :types do |t|
      t.string :name
      t.string :size, array: true
      t.string :color, array: true

      t.timestamps
    end
  end
end
