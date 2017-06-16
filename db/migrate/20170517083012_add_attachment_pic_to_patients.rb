class AddAttachmentPicToPatients < ActiveRecord::Migration
  def self.up
    change_table :patients do |t|
      t.attachment :pic
    end
  end

  def self.down
    remove_attachment :patients, :pic
  end
end
