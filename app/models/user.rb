class User < ApplicationRecord
 
  validates :name , length: {in: 1..15}
  
  validates :password ,format: {with: PASSWORD_VALIDATION}
  
  validates :email ,format: {with: EMAIL_VALIDATION}
  
  # 定数を使わない場合
  # validates :password ,format: {with:/\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,32}+\z/i}
  # validates :email ,format: {with:/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}
  
  has_secure_password
  
  has_many :topics
  has_many :favorites
  has_many :favorite_topics, through: :favorites, source: 'topic'
  has_many :comments

end