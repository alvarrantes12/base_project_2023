class CreateContents < ActiveRecord::Migration[7.0]
  def change
    create_table :contents do |t|
      t.string :title
      t.text :description
      t.datetime :start_date
      t.datetime :end_time

      t.timestamps
    end
  end
end
