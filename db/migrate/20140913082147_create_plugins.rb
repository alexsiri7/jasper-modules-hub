class CreatePlugins < ActiveRecord::Migration
  def change
    create_table :plugins do |t|
      t.string :name
      t.text :description
      t.string :url

      t.timestamps
    end
  end
end
