class AddSlugToPlugins < ActiveRecord::Migration
  def change
    add_column :plugins, :slug, :string
    add_index :plugins, :slug, unique: true
  end
end
