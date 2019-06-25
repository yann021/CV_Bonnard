class CreateTrainings < ActiveRecord::Migration[5.2]
  def change
    create_table :trainings do |t|
      t.string :title
      t.string :trainingCenter
      t.string :date
      t.string :website
      t.text :description

      t.timestamps
    end
  end
end
