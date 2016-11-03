# ================================================
# RUBY->MODEL->ADDRESS ===========================
# ================================================
class Address < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :user_id
  validates_presence_of :line1
  validates_presence_of :city
  validates_presence_of :state
  validates_presence_of :zip
  validates_presence_of :user
end