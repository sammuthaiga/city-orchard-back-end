class ClientSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :email, :phonenumber, :location

  has_many :fruits
  has_many :farmers, through: :fruits
end
