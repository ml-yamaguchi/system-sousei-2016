# coding: utf-8
require 'bundler'
Bundler.require

require_relative 'models/init'

BOOKS = [
  Book.new(id: 1, title: 'たのしいRuby',            author: '高橋征義',         price: 2800),
  Book.new(id: 2, title: 'プログラミング言語 Ruby', author: 'まつもとゆきひろ', price: 4100),
  Book.new(id: 3, title: '初めてのRuby',            author: 'Yugui',            price: 2400),
  Book.new(id: 4, title: 'パーフェクトRuby',        author: 'Rubyサポーターズ', price: 3460),
  Book.new(id: 5, title: 'Effective Ruby',          author: 'Peter J.Jones',    price: 3460),
]

get '/' do
  @books = BOOKS
  # fix B
  @books.each do | book |
    puts book.id
    puts book.title
  end

  slim :index
end

get '/books/:id' do
  @book = BOOKS.find { |book| book.id.to_s == params[:id] }
  slim :show
end
