class Portfolio < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies, 
                                allow_destroy: true,
                                reject_if: lambda { |attrs| attrs['name'].blank? }

  mount_uploader :thumb_image, PortfolioUploader 
  mount_uploader :main_image, PortfolioUploader 
  # mount_uploader is een methode die wordt geleverd door carrierwave
  # PortfolioUploader als argument omdat er ook bij. een PdfUploader zou kunnen zijn

	validates_presence_of :title, :body

  def self.angular
  	where(subtitle: "Angular")
  end

  def self.by_position
    order("position ASC")
  end
 

  scope :ruby_on_rails, -> { where(subtitle: "Ruby on Rails")  }


end
