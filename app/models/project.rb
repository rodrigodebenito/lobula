class Project < ActiveRecord::Base
  attr_accessible :awards, :client, :company, :credit, :date, :description, :role, :slug, :summary, :title, :website_url, :bitmap, :active

  validates_presence_of :title

  before_create :create_slug

  base = ENV['OPENSHIFT_DATA_DIR']? ENV['OPENSHIFT_DATA_DIR'] : ':rails_root/'
  has_attached_file :bitmap,
    :url  => '/uploads/:class/:attachment/:id/:style/:basename.:extension',
    :path  => base + 'public:url',
    :styles => {
      :small => ["350", :jpg],
      :square => ["350x350#", :jpg]
    }

  def to_param
    slug
  end

  def create_slug
    self.slug = self.title.parameterize
  end
end
