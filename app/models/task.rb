class Task < ActiveRecord::Base
  attr_accessible :complete, :description, :due_date, :name
  #has_many :subtasks  maybe add in later
 
  belongs_to :list

  default_scope order('due_date DESC')
end
