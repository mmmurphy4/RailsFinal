class AddPaperclipToPosting < ActiveRecord::Migration
  def change
  	add_attachment :postings, :image 
  end
end
