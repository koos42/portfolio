class PagesController < ApplicationController
  def frontpage

    #gets the latest blog entries
    @blog_entries = BlogEntry.order('created_at').limit(5)

    #gets the latest pieces
    @pieces = Piece.order('created_at').limit(5)

  end
end
