require 'active_record'
#
class Student < ActiveRecord::Base
  validates :student_name, presence: true
  belongs_to :college
  has_many :professors
end
