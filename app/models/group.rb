class Group < ApplicationRecord
  has_many :memberships
  has_many :usrs, :through => :memberships
end
