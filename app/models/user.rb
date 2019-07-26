class User < ApplicationRecord
  has_many :bitten_users, foreign_key: :biter_id, class_name: 'Bite'
  has_many :bitees, through: :bitten_users
  has_many :biting_users, foreign_key: :bitee_id, class_name: 'Bite'
  has_many :biters, through: :biting_users
end
