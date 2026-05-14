class Post < ApplicationRecord
  has_rich_text :body
  has_one_attached :cover_image
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :slug, presence: true, uniqueness: true
  validates :body, presence: true

  before_validation :generate_slug, on: :create

  scope :published, -> { where.not(published_at: nil).order(published_at: :desc) }
  scope :drafts, -> { where(published_at: nil) }

  def published?
    published_at.present?
  end

  def to_param
    slug
  end

  private

  def generate_slug
    self.slug ||= title.to_s.parameterize
  end
end
