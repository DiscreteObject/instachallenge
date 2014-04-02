class RenamePhotoTypeToPostType < ActiveRecord::Migration
  def change
    rename_column :photos, :type, :post_type
  end
end
