class AddImageUrlToAromas < ActiveRecord::Migration[7.1]
  def change
    add_column :aromas, :image_url, :string
  end
end
