class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
	    t.integer "user_id"
	    t.integer "post_id"
	    t.text "content"
	    t.datetime "created_at", null: false
	    t.datetime "updated_at", null: false
	    t.index ["post_id"], name: "index_comments_on_post_id"
	    t.index ["user_id"], name: "index_comments_on_user_id"
	    t.timestamps
    end
  end
end
