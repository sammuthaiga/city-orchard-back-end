class Fruit < ApplicationRecord
    belongs_to :farmer
    belongs_to :client

    validates :name, presence: true
    validates :image, presence: true
    validates :price, presence: true
    # validates :availability, inclusion: { in: ["in stock", "out of stock"] }

end
