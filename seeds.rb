require_relative 'environment'
require_relative 'student'
require_relative 'professor'
require_relative 'college'
require_relative 'semester'

def main
  # uc = College.create(
  #   college_name: 'University of Cincinnati',
  #   ranking: 25
  # )
  #
  # pitt = College.create(
  #   college_name: 'Pitt University',
  #   ranking: 14
  # )
  #
  # howard = Professor.create(
  #   prof_name: 'Dr. Howard',
  #   years_experience: 12,
  #   college_id: 2
  # )
  #
  # bower = Professor.create(
  #   prof_name: 'Angela Bower',
  #   years_experience: 6,
  #   college_id: 1
  # )
  #
  # brandon = Student.create(
  #   student_name: 'Brandon',
  #   years_completed: 4,
  #   college_id: 1
  # )
  #
  # nate = Student.create(
  #   student_name: 'Nate',
  #   years_completed: 3,
  #   college_id: 1
  # )
  #
  # biology = Semester.create(
  # professor_id: 1,
  # student_id: 2,
  # class_name: 'Biology'
  # )
end

main if __FILE__ == $PROGRAM_NAME
