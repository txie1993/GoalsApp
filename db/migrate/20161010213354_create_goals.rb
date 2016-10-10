class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :title
      t.string :details
      t.boolean :finished
      t.boolean :private
      t.integer :cheers
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
