class User < ApplicationRecord
  has_many :weights
  has_many :meals

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :birthday
    validates :initial_weight
    validates :height
    VALID_NAME_REGIX = /\A[ぁ-んァ-ヶ一-龥々ー]+\z/
    with_options format: { with: VALID_NAME_REGIX, message: 'は全角文字を入力して下さい' } do
      validates :last_name
      validates :first_name
    end

    VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i
    validates :password, format: { with: VALID_PASSWORD_REGEX, message: 'パスワードは英数字を含めて下さい。' }
  end
end
