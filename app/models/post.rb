class Post < ActiveRecord::Base
	validates_presence_of :date
	validates_presence_of :mood
        validates :title, presence: true, length: { minimum: 5 }
has_many :comments
end
