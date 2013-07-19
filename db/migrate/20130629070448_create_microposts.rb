class CreateMicroposts < ActiveRecord::Migration
  def change
    create_table :microposts do |t|
      t.integer :user_id
      t.text :content

      t.timestamps
    end
    add_index :microposts, [:user_id, :created_at]
  end
end
