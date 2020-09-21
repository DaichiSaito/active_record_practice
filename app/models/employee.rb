class Employee < ActiveRecord::Base
  self.primary_key = :emp_no
  has_many :dept_emps, foreign_key: :emp_no
  has_many :member_departments, through: :dept_emps, source: :department
  has_many :dept_managers, foreign_key: :emp_no
  has_many :manager_departments, through: :dept_managers, source: :department
  has_many :salaries, foreign_key: :emp_no
  has_many :titles, foreign_key: :emp_no
end
