class EntrySerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :user_id
end
