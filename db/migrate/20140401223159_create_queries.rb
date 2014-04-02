class CreateQueries < ActiveRecord::Migration
  def change
    create_table :queries do |t|
      t.string :latitude
      t.string :longitude
      t.string :distance

      t.timestamps
    end
  end
end
