class CreateAnimals < ActiveRecord::Migration[7.1]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :breed

      t.belongs_to :city, index: true

      t.timestamps
    end
  end
end
