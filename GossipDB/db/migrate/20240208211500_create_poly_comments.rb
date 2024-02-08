class CreatePolyComments < ActiveRecord::Migration[7.1]
  def change
    create_table :poly_comments do |t|
      t.text :content
      t.references :commentable, polymorphic: true, null: false

      t.belongs_to :user, index: true
      t.belongs_to :commentaire, index: true

      t.timestamps
    end
  end
end
