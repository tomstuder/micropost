class CreateTinyposts < ActiveRecord::Migration
  def change
    create_table :tinyposts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
