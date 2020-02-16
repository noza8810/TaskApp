class Task < ApplicationRecord
  belongs_to :user
  
  validates :task_name, presence: true, length: { maximum: 50 }
  validates :task_details, presence: true, length: { in: 5..300 }
  
  
  
  
end
