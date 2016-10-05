require_relative 'environment'

#
class CreateProfessorsTable < ActiveRecord::Migration[5.0]
  def up
    create_table :professors do |t|
      # belongs_to :colleges
      t.string :prof_name
      t.integer :years_experience
      t.integer :college_id
    end
  end

  def down
    drop_table :professors
  end
end

#
class CreateStudentsTable < ActiveRecord::Migration[5.0]
  def up
    create_table :students do |t|
      # belongs_to :colleges
      t.string :student_name
      t.integer :years_completed
      t.integer :college_id
    end
  end

  def down
    drop_table :students
  end
end

#
class CreateCollegesTable < ActiveRecord::Migration[5.0]
  def up
    create_table :colleges do |t| #create_join_table
      t.string :college_name
      t.integer :ranking
    end
  end

  def down
    drop_table :colleges
  end
end

def main
  action = (ARGV[0] || :up).to_sym
  CreateProfessorsTable.migrate(action)

  action = (ARGV[1] || :up).to_sym
  CreateStudentsTable.migrate(action)

  action = (ARGV[2] || :up).to_sym
  CreateCollegesTable.migrate(action)
end

main if __FILE__ == $PROGRAM_NAME
