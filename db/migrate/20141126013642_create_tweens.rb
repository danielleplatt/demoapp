class CreateTweens < ActiveRecord::Migration
  def change
    create_table :tweens do |t|
      t.string :status
      t.integer :user_id

      t.timestamps
    end
  end
end
