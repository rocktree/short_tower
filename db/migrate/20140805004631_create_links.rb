class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.integer :user_id
      t.string :url
      t.string :shortened_url

      t.timestamps
    end
  end
end
