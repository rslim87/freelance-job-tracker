class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
    	t.string :name
    	t.string :jobdate
    	t.integer :payrate
    	t.boolean :paid 
    	t.string :equipment 
    	t.integer :user_id
        t.integer :client_id
    	t.datetime "created_at", null: false
    	t.datetime "updated_at", null: false

    end
  end
end
