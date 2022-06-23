class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :title
      t.string :venue
      t.string :address
      t.date :scheduled_date

      t.timestamps
    end
  end
end
