class AddIndextoUserid < ActiveRecord::Migration
  def change
  	add_index :postings, :user_id
  end
end
