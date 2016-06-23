class AddAttachmentBookDocumentToBooks < ActiveRecord::Migration
  def self.up
    change_table :books do |t|
      t.attachment :book_document
    end
  end

  def self.down
    remove_attachment :books, :book_document
  end
end
