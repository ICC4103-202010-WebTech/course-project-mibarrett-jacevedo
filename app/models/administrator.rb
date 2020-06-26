class Administrator < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #after_create :user

  def administrator
    true
  end

  # def user
  # User.create!(username:self.username, password:self.password, email:self.email)
  #end

end
