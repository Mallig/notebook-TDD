class Note

  attr_reader :title, :body

  def initialize(title = "No Title", body = "No Body")
    @title = title
    @body = body
    [@title, @body]
  end

end
