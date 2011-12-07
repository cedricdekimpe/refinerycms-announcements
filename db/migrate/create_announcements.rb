class CreateAnnouncements < ActiveRecord::Migration

  def self.up
    create_table :announcements do |t|
      t.string :title
      t.datetime :starts_at
      t.datetime :ends_at
      t.integer :photo_id
      t.text :description
      t.integer :position

      t.timestamps
    end

    add_index :announcements, :id

    load(Rails.root.join('db', 'seeds', 'announcements.rb'))
  end

  def self.down
    if defined?(UserPlugin)
      UserPlugin.destroy_all({:name => "announcements"})
    end

    if defined?(Page)
      Page.delete_all({:link_url => "/announcements"})
    end

    drop_table :announcements
  end

end
