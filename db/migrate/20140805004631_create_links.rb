class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.integer :user_id
      t.string :title
      t.string :url
      t.string :shortened_url
      t.integer :visit_count, :default => 0

      t.timestamps
    end
  end
end
