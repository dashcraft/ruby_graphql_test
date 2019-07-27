class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.belongs_to :user, foreign_key: true
      t.string :description
      t.integer :status

      t.timestamps
    end
  end
end
