class User < ApplicationRecord
  has_many :bitten_users, foreign_key: :biter_id, class_name: 'Bite', dependent: :destroy
  has_many :bitees, through: :bitten_users, dependent: :destroy
  has_many :biting_users, foreign_key: :bitee_id, class_name: 'Bite', dependent: :destroy
  has_many :biters, through: :biting_users, dependent: :destroy

  validates :display_name, uniqueness: true
  validates :classification, inclusion: { in: ["vampire", "dhampir", "slayer", "human"] }
  validates :display_name, :profile_picture, :classification, presence: true
end
