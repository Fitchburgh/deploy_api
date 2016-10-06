require 'active_record'

#
class Semester < ActiveRecord::Base
  has_many :students
  belongs_to :professor
  has_one :college

  def self.find_by_tag_id(tag_id)
    Semester.joins(:semester).where('semester.student_id = ?', student_id)
  end
end
