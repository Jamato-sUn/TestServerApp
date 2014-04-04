class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
	t.timestamp :date  
	t.string :content
	t.string :mood 
	t.string :title
      t.timestamps
    end

  end
end
