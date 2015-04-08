class User < ActiveRecord::Base
  has_many :todos
  validates_presence_of :username, :email, :name
end
