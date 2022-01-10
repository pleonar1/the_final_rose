class CreateOutings < ActiveRecord::Migration[5.2]
  def change
    create_table :outings do |t|
      t.string :name
      t.string :location
      t.string :date
      t.references :contestant, foreign_key: true

      t.timestamps
    end
  end
end
