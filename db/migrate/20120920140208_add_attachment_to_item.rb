class AddAttachmentToItem < ActiveRecord::Migration
  def change
    add_attachment :items, :image
  end
end
