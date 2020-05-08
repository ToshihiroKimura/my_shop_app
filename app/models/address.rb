class Address < ApplicationRecord
  belongs_to :user
  belongs_to :profile

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
end
