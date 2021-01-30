class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  PASSWORD_VALIDATION=/\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,32}+\z/i
  EMAIL_VALIDATION=/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
end
