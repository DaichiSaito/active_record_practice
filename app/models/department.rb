class Department < ActiveRecord::Base
  self.primary_key = :dept_no
  has_many :dept_emps, foreign_key: :dept_no # 所属
  has_many :members, through: :dept_emps, source: :employee
  has_many :dept_managers, foreign_key: :dept_no # マネージャーとしての所属
  has_many :managers, through: :dept_managers, source: :employee
end
