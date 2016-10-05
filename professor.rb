require 'active_record'
#
class Professor < ActiveRecord::Base
  validates :prof_name, presence: true
  has_many :students
  belongs_to :college
end
