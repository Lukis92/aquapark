# == Schema Information
#
# Table name: news
#
#  id         :integer          not null, primary key
#  title      :string           not null
#  content    :text             not null
#  scope      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  person_id  :integer          not null
#

class News < ActiveRecord::Base
  # **ASSOCIATIONS**********#
  belongs_to :person
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  # ************************#
  # **VALIDATIONS***************************#
  validates_presence_of :title, :content, :scope
  # *****************************************#
  default_scope -> { order(updated_at: :desc) }

  include PgSearch
  pg_search_scope :search, against: [:title, :content, :scope],
                           associated_against: {
                             person: [:first_name, :last_name]
                           },
                           using: {
                             tsearch: { prefix: true }
                           }

  # **METHODS*********************#
  def thumbs_up_total
    self.likes.where(like: true).size
  end

  def thumbs_down_total
    self.likes.where(like: false).size
  end

  # ********************************#
end
