class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # теперь вы можете менять роли юзера
  # например: user  = User.first
  # user.role = 1 присвоим роль
  # user.role => 'author' выведем роль
  enum role: [:standard, :author, :admin]

  has_many :posts
end
