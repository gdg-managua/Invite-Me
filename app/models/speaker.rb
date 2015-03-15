class Speaker < ActiveRecord::Base
  include ActiveModel::Model
  attr_accessor :name, :string
  attr_accessor :bio, :string
end 