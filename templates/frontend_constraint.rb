class FrontendConstraint
  def self.matches?(request)
    request.format.to_s == 'text/html'
  end
end
