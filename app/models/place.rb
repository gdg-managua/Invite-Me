class Place < ActiveRecord::Base
  include ActiveModel::Model
  attr_accessor :name, :string
  attr_accessor :coordinates, :string
  attr_accessor :description, :string
end