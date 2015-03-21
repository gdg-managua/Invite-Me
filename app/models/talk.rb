class Talk < ActiveRecord::Base
    has_many :speakers, dependent: :destroy
    accepts_nested_attributes_for :speakers, :allow_destroy => true
end