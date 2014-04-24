class Task < ActiveRecord::Base
  attr_accessible :complete, :description, :due_date, :name, :user_id, :category

 
  belongs_to :user

  default_scope order('due_date DESC')

  def time_remaining
    today = Date.today
    created = self.created_at.to_date
    lag  = 7.days
    expiration_time = created + lag

    (expiration_time - today).to_i

  end

end


