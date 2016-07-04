class Email
  include ActiveModel::Model
  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_accessor :name, :email, :subject, :body, :phone, :how_much, :to

  validates :name, :email, :body, presence: true
  validates_plausible_phone :phone, normalized_country_code: 'US'
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: 'is not a valid email' }

  def to_options
    [['The Creamery', 'creamery@tuckerfamilyfarm.com'],
     ['The Farm', 'tyler@tuckerfamilyfarm']]
  end
end
