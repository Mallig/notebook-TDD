#Note taking application

class Noter

  def initialize
    @notes = []
  end

  def store(note_to_store)
    @notes << note_to_store
  end

  def titles
    @titles = []
    @notes.each { |note| @titles << note.title }
    @titles
  end

  def read(note_title)
    unless titles.include?(note_title) then raise "Note does not exist" end
    [note_title, self.find_body(note_title)]
  end

  protected
  def find_body(note_title)
    @notes.each { |note| return note.body if note.title == note_title }
  end

end

class Note

  attr_reader :title, :body

  def initialize(title = "No Title", body = "No Body")
    @title = title
    @body = body
    [@title, @body]
  end

end

pad = Noter.new
pad.store(Note.new(""))