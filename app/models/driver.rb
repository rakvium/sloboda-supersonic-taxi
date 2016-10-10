class Driver < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :rememberable, :trackable
  validates :phone, presence: true, uniqueness: true
  validates_format_of :phone, with: /\A(0)([0-9]{9})\z/

end

