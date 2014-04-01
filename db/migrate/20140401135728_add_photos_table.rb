class AddPhotosTable < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :type
      t.string :link
      t.string :username
      t.string :low_url
      t.string :thumb_url
      t.string :std_url

      t.timestamps
    end
  end
end
