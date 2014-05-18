class CreateSharedFiles < ActiveRecord::Migration
  def change
    create_table :shared_files do |t|
      t.string :path

      t.timestamps
    end
  end
end
