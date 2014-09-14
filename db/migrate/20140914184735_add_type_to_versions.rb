class AddTypeToVersions < ActiveRecord::Migration
  def change
    add_column :versions, :file_type, :string
  end
end
