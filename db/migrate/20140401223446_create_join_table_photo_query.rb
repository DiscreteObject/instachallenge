class CreateJoinTablePhotoQuery < ActiveRecord::Migration
  def change
    create_join_table :photos, :queries do |t|
      # t.index [:photo_id, :query_id]
      # t.index [:query_id, :photo_id]
    end
  end
end
