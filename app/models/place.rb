class Place < ActiveRecord::Base
  belongs_to :chapter
  belongs_to :speaker
end