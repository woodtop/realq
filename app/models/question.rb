class Question < ActiveRecord::Base
  belongs_to :user
  belongs_to :athlete
  has_one :answer
end
