class Salary < ActiveRecord::Base
  self.primary_key = :emp_no, :from_date
  belongs_to :employee, foreign_key: :emp_no
end
