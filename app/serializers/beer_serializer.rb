class BeerSerializer < ActiveModel::Serializer
  attributes :id, :city, :beer, :brewery, :style, :description
  has_one :user
end
