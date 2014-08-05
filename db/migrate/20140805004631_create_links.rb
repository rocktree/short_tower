class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :url
      t.string :shortened_url

      t.timestamps
    end
  end
end
