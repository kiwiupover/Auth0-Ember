class PhotosController < ApplicationController

  def index
    collection = []
    collection << record
    collection << record
    collection << record
    collection << record
    collection << record

    render json: collection
  end 


  def record
    data = Hash.new
    data[:name] = "foo"
    data[:text] = "text"
    data
  end

end
