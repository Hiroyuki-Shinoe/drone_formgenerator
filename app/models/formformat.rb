class Formformat < ActiveRecord::Base
  belongs_to :type
  belongs_to :user
end