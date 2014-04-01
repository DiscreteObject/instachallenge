class CreateSearchQueries < ActiveRecord::Migration
  def change
    create_table :search_queries do |t|
      t.string :latitude
      t.string :longitude
      t.string :distance

      t.timestamps
    end
  end
end
