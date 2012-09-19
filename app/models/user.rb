class User < ActiveRecord::Base
  attr_accessible :email, :namd
  has_many :microoposts
end
