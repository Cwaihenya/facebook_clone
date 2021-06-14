class AddPhotoExtensionToUser < ActiveRecord::Migration[6.1]
  def change
add_column :u, :extension, :string
  end
end
