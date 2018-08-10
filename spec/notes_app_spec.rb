#Note taking Application
#It can: Add note with Title and Body
#        List note Titles
#        Pick a note to read

require "notes_app"

describe Noter do

  let(:mockEmptyNote) {double :note, title: "Title", body: "Body"}
  #let(:anothermockNote) {double :note, title: "Another Title", body: "Another Body"}
  
  it "can store notes" do
      expect(subject.store(mockEmptyNote)).to include(mockEmptyNote)
  end

  it "can show stored notes titles" do
    subject.store(mockEmptyNote)
    expect(subject.titles).to include(mockEmptyNote.title)
  end

  it "can read a notes body and title" do
    subject.store(mockEmptyNote)
    expect(subject.read(mockEmptyNote.title)).to eq([mockEmptyNote.title, mockEmptyNote.body])
  end

end