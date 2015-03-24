class Talk < ActiveRecord::Base
    belongs_to :speaker
    #accepts_nested_attributes_for :speakers, :allow_destroy => true
end