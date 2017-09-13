class CreateBeers < ActiveRecord::Migration[5.1]
  def change
    create_table :beers do |t|
      t.string :name, null: false
      t.string :style, null: false
      t.string :ibu, null: false
      t.string :alcohol, null: false
      t.belongs_to :user

      t.timestamps
    end
  end
end
