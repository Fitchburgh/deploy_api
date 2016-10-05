require 'active_record'
#
class College < ActiveRecord::Base
  has_many :students, through: :professors
  has_many :professors, through: :students
  
end
