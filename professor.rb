require 'active_record'
#
class Professor < ActiveRecord::Base
  validates :prof_name, presence: true
  has_many :students # , through: :semester
  belongs_to :college
  # has_one :semster
end
