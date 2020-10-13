
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
  
<<<<<<< HEAD
  get '/articles/new' do 
    erb :new 
  end 

  get '/articles/:id' do 
    # binding.pry
    @article = Article.find(params[:id])
    erb :show
  end 

  
  post '/articles' do 
    @article = Article.create(:title => params[:title], :content => params[:content])
    redirect to "/articles/#{@article.id}"
  end 

  get '/articles/:id' do
    @article = Article.find_by_id(params[:id])
    erb :show
  end

  get '/articles/:id/edit' do 
    # binding.pry
    @article2 = Article.find_by_id(params[:id])
    erb :edit
  end 

  patch '/articles/:id' do 
    # binding.pry
    @article = Article.find_by_id(params[:id])
    @article.title= params[:title]
    @article.content = params[:content] 
    @article.save 
    redirect to "/articles/#{@article.id}"
  end 

  delete '/articles/:id' do 
    @article = Article.find_by_id(params[:id])
    @article.delete
    redirect to "/articles"
  end 

=======
  # get '/articles/:id' do 
  #   # binding.pry
  #   a = params[:id]
  # end 
  
  # post '/articles' do 
  #   @article1 = Article.create(title: params[:article_title], content: params[:article_content])
  #   binding.pry
  # end 
>>>>>>> ff234886beaa75137e7e312fa458334a63f18bc1
end
