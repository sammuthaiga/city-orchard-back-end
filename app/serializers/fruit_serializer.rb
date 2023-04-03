class FruitSerializer < ActiveModel::Serializer
  # has_secure_password

  attributes :id, :name, :image, :price, :availability

  belongs_to :farmer
   belongs_to :client
end
