class SitesSerializer < ActiveModel::Serializer
  attributes :id, :url, :description, :username, :password
end
