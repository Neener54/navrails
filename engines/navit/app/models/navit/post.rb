module Navit
  class Post < ActiveRecord::Base
    belongs_to :author, class_name: Navit.author_class
    belongs_to :channel
    has_many :comments
  end
end
