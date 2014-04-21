class List < ActiveRecord::Base
  attr_accessible :description, :due_date, :name, :public
  has_many :tasks

  belongs_to :user

  default_scope order('due_date DESC')
end
