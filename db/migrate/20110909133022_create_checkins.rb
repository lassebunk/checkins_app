class CreateCheckins < ActiveRecord::Migration
  def change
    create_table :checkins do |t|
      t.string :title
      t.point :location, :geographic => true

      t.timestamps
    end
  end
end
