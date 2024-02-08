class CreateStrolls < ActiveRecord::Migration[7.1]
  def change
    create_table :strolls do |t|
      t.datetime :date

      t.belongs_to :animal_sitter, index: true
      t.belongs_to :animal, index: true

      t.timestamps
    end
  end
end
