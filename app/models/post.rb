class Post < ActiveRecord::Base

  attr_accessible :author, :text
  validates :author, :text, presence: true

end
