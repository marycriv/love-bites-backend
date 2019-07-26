class BiteSerializer < ActiveModel::Serializer
  attributes :id, :bitee_id, :biter_id, :status, :bitee, :biter
end
