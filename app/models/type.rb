class Type < ActiveRecord::Base
  belongs_to :user
  has_many :formats
end