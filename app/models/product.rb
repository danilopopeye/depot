class Product < ActiveRecord::Base
	validates_presence_of :title, :description, :image_url
	validates_uniqueness_of :title
	validates_length_of :title, :minimum => 10, :message => "must have at least {{count}} characters"
	validates_numericality_of :price
	validates_format_of :image_url,
		:with => %r{\.(gif|jpg|png)$}i,
		:message => 'must be a URL for GIF, JPG or PNG image. (gif|jpg|png)'
	validate :price_must_be_at_least_a_cent
	
protected
	def price_must_be_at_least_a_cent
		errors.add(:price,'shold be at least 0.01') if price.nil? || price < 0.01
	end
end
