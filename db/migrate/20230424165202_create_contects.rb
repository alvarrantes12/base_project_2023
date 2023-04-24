class CreateContects < ActiveRecord::Migration[7.0]
  def change
    create_table :contects do |t|
      t.string :title
      t.string :description
      t.string :text
      t.datetime :start_date
      t.string :end_date_datetime

      t.timestamps
    end
  end
end
