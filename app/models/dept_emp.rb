class DeptEmp < ActiveRecord::Base
  self.table_name = "dept_emp"
  self.primary_key = :emp_no, :dept_no
  belongs_to :department, foreign_key: :dept_no
  belongs_to :employee, foreign_key: :emp_no
end
