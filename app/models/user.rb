class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
	after_create :assign_default_role
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  private
    def assign_default_role
       self.add_role(:user) if self.roles.blank?
    end

end
