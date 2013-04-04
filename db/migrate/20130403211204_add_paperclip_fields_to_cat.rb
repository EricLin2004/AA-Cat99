class AddPaperclipFieldsToCat < ActiveRecord::Migration
  def change
    add_column :cats, :image_file_name,    :string
    add_column :cats, :image_content_type, :string
    add_column :cats, :image_file_size,    :integer
    add_column :cats, :image_updated_at,   :datetime
  end
end
