module Navit
  class Channel < ActiveRecord::Base
    has_many :posts
  end
end
