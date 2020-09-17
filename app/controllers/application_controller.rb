
require_relative '../../config/environment'
require_relative '../../app/models/article.rb'
require 'pry'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  # get '/' do
    
  # end
  
  get '/articles' do 
    articles = Article.all 
    @articles = []
    articles.each do |article|
      @articles << article.title
    end 
    @articles 
    erb :index
  end 
  
  # get '/articles/:id' do 
  #   # binding.pry
  #   a = params[:id]
  # end 
  
  # post '/articles' do 
  #   @article1 = Article.create(title: params[:article_title], content: params[:article_content])
  #   binding.pry
  # end 
end
