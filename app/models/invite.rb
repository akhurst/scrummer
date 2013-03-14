class Invite < ActiveRecord::Base
  attr_accessible :accepted, :code, :created, :email
end
