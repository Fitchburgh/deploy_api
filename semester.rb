require 'active_record'

#
class Semester < ActiveRecord::Base
  has_many :students
  belongs_to :professor
  has_one :college
end
