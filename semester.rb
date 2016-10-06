require 'active_record'
#
class Semester < ActiveRecord::Base
  has_many :students
  belongs_to :professor
  has_one :college

  # I forget what this does
  def self.find_by_student_id(student_id)
    Semester.joins(:semester).where('semester.student_id = ?', student_id)
  end
end
