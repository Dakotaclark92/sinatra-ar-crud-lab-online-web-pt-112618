#Placeholder for a model

class Article < ActiveRecord::Base
  attr_reader :title, :content

  ARTICLES = []
  
  def self.all
    @@all
  end
  
  def initialize(params)
    @title = params[:title]
    @content = params[:content]
    ARTICLES << self
  end
  
  def self.all
    ARTICLES
  end

  
end