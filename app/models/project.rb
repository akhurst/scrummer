class Project < ActiveRecord::Base
  attr_accessible :name

  has_and_belongs_to_many :users

  def add_user(user)
    if user.nil?
      {:result=>'failed', :message=>'user not found', }
    elsif users.include? user
      {:result => 'failed', :message=>'user already exists'}
    else
      users << user
      if save
        { :result=>'ok', :message=>'user added successfully' }
      else
        {:result=>'failed', :message=>'project update failed', }
      end
    end

  end
end
