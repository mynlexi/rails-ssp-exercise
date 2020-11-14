class CreateTrainingsplans < ActiveRecord::Migration[6.0]
  def change
    create_table :trainingsplans do |t|
      t.string :name
      t.references :user, foreign_key: true
      t.string :goal

      t.timestamps
    end
  end
end
