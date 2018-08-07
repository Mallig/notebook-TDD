#Note taking application


def new_note(title, body)
    @title = title
    @body = body
    return [@title, @body]
end

class Array
    def look
        puts self
    end
end

#note = new_note("Title", "body")
#note.look