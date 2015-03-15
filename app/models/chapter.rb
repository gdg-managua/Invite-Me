class Chapter < ActiveRecord::Base
	include ActiveModel::Model
	attr_accessor :number, :integer
	attr_accessor :date, :datetime
	has_many :speakers, dependent: :destroy
	has_many :talks, dependent: :destroy
	has_one :places
end