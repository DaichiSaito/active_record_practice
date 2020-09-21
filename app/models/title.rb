class Title < ActiveRecord::Base
  self.primary_key = :emp_no, :title, :from_date
  belongs_to :employee, foreign_key: :emp_no
end
