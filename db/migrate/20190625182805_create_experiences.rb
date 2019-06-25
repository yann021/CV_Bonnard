class CreateExperiences < ActiveRecord::Migration[5.2]
  def change
    create_table :experiences do |t|
      t.string :businessName
      t.string :work
      t.string :date
      t.string :website
      t.text :description

      t.timestamps
    end
  end
end
