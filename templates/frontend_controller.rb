class FrontendController < ApplicationController
  def index
    render body: File.read(Rails.root.join('public/frontend/index.html')), content_type: 'text/html'
  end
end
