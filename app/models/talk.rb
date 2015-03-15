class Talk < ActiveRecord::Base
	include ActiveModel::Model
	attr_accessor :title, :string
	attr_accessor :description, :string
	has_many :speakers, dependent: :destroy
	accepts_nested_attributes_for :speakers, :allow_destroy => true
end