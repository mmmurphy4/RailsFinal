class CreatePostings < ActiveRecord::Migration
  def change
    create_table :postings do |t|
      t.integer :user_id
      t.string :title
      t.string :description
      t.string :housing_type
      t.integer :bedroom_num
      t.integer :cost

      t.timestamps
    end
  end
end
