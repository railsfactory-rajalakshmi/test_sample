class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :title
      t.string :details
      t.datetime :start_data
      t.datetime :expire_date
      t.boolean :completed_status
      t.timestamps
    end
  end
end
