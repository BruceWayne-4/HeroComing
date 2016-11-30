module AuthConcern
  extend ActiveSupport::Concern

  included do
    has_secure_password

    VAILDATE_MOBILE_FORMAT = /\A?(13[0-9]|15[0-9]|17[0-9]|18[0-9]|14[0-9])[0-9]{8}\z/

    validates :mobile, presence: true, uniqueness: true, length: { is: 11 }, format: { with: VAILDATE_MOBILE_FORMAT }
    validates :nick_name, presence: true, uniqueness: true, length: { maximum: 10, minimum: 3 }
    validates :real_name, presence: true

    before_create { generate_token(:auth_token) }
  end

  # 在每次生成admin或者user时添加auth_token
  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while self.class.exists?(column => self[column])
  end
end
