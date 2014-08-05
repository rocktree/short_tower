class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.integer :link_id
      t.string :ip
      t.text :user_agent

      t.timestamps
    end
  end
end
