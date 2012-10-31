class CreatePoms < ActiveRecord::Migration
  def change
    create_table :poms do |t|
      t.string :description
      t.string :body
      t.datetime :start_time
      t.time :duration1
      t.integer :duration2
      t.string :reflection

      t.timestamps
    end
  end
end
