class CreateShorteners < ActiveRecord::Migration[5.0]
  def change
    create_table :shorteners do |t|
      t.string :given_url
      t.string :slug
      t.integer :count, :default => 0

      t.timestamps
    end
  end
end

# url, slug, count
# http://.... , 'jyezfgdyj', 88
# http://.... , 'fugzirure', 17
# http://.... , 'kejfgkrug', 33
