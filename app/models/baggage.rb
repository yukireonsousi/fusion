class Baggage < ApplicationRecord
  belongs_to :user

  # accepts_nested_attributes_for :user

  # validates :user_id, presence: true
  validates :kind, :storage_period, :code, :user_id, presence: :true
  # validates :delivery_data

#   def user
#     #インスタンスメソッドに内で、selfはインスタンス自身をさす、baggageモデル内なのでbaggageテーブルのuser_idのこと
#     # return User.find_by(id: self.user_id)#baggageのコントローラー内でBaggageを使った定義をしているのでself部分にはそれが入るここで定義した"user"を使う
end
