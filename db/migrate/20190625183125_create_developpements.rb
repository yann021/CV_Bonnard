class CreateDeveloppements < ActiveRecord::Migration[5.2]
  def change
    create_table :developpements do |t|
      t.string :title
      t.string :developmentDate
      t.string :website
      t.text :description
      t.integer :type

      t.timestamps
    end
  end
end
