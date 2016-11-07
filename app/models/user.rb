# ================================================
# RUBY->MODEL->USER ==============================
# ================================================
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :address
  has_many :investments
  has_many :deals, through: :investments

  validates_presence_of :first_name
  validates_presence_of :last_name

  accepts_nested_attributes_for :address
end
