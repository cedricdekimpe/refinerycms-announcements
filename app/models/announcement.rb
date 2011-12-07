class Announcement < ActiveRecord::Base

  acts_as_indexed :fields => [:title, :description]

  validates :title, :presence => true
  
  belongs_to :photo, :class_name => 'Image'

  scope :displayable, :conditions => ["starts_at <= ? and ends_at >= ?", Time.now, Time.now]
end
