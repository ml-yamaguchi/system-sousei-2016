# coding: utf-8
class Book
  attr_accessor :id, :title, :author, :price

  def initialize(params = {})
    @id     = params[:id]
    @title  = params[:title]
    @author = params[:author]
    @price  = params[:price]
  end
end
