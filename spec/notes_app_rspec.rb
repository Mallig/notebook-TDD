#Note taking Application
#It can: Add note with Title and Body
#        List note Titles
#        Pick a note to read

require "notes_app.rb"

describe "Noter App" do
    it "creates a note with title and body" do
        note = new_note("title", "body")
        expect(note).to eq ["title", "body"]
    end

    it "lists existing note titles" do
        note_1 = new_note("title1", "body1")
        note_2 = new_note("title2", "body2")
        notes = [note_1, note_2]
        expect(notes.titles).to eq([note_1[0], note_2[0]])
    end

    it "allows user to pick a note title to read" do
        
    end

end