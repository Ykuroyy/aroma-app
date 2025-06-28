class AddImageToAromas < ActiveRecord::Migration[7.1]
  def change
    add_column :aromas, :image, :string
  end
end
