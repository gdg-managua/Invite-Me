class Speaker < ActiveRecord::Base
  has_many :talks, dependent: :destroy
  belongs_to :chapter
end 