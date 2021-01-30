class CreateSubregions < ActiveRecord::Migration[6.1]
  def change
    create_table :subregions do |t|
      t.string :name
      t.references :region, null: false, foreign_key: true

      t.timestamps
    end
  end
end
