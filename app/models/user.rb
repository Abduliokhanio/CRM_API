class User < ApplicationRecord
    has_many :leads
    has_many :notes, through: :leads
end
