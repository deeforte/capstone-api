class CreateBeers < ActiveRecord::Migration[5.0]
  def change
    create_table :beers do |t|
      t.string :city
      t.string :beer
      t.string :brewery
      t.string :style
      t.string :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
