class CreateCollections < ActiveRecord::Migration[6.0]
  def change
    create_table :collections do |t|
      t.string :description
      t.references :exercise, foreign_key: true
      t.references :trainingsplan, foreign_key: true

      t.timestamps
    end
  end
end
