class CreateVersions < ActiveRecord::Migration
  def change
    create_table :versions do |t|
      t.references :plugin, index: true
      t.string :number
      t.string :jasper_version
      t.text :notes

      t.timestamps
    end
  end
end
