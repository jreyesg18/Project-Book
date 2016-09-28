class AddAttachmentBookPdfToBooks < ActiveRecord::Migration
  def self.up
    change_table :books do |t|
      t.attachment :book_pdf
    end
  end

  def self.down
    remove_attachment :books, :book_pdf
  end
end
