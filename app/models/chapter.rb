class Chapter < ActiveRecord::Base
    has_many :speakers, dependent: :destroy
    has_many :talks, dependent: :destroy
    has_one :place 
end