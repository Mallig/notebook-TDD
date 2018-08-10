require 'notes_app'

describe Note do
  
  it "creates a note" do
    expect(subject).to be_a(Note)
  end

  it "has a title and body" do
    expect(subject.title).to eq("No Title")
    expect(subject.body).to eq("No Body")
  end
  
end