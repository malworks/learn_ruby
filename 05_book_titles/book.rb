class Book
    attr_accessor :title # gives read and write access to title symbol

    def title=(book_title)
        title_arr = book_title.split(" ") # split words into an array
        title_arr = [title_arr[0].capitalize] + title_arr[1..-1].map do |i| # capitalize the first letter
            if ["and", "in", "the", "of", "a", "an"].include?(i)
                i # don't capitalize any of these words
            else
                i.capitalize
            end
        end
        @title = title_arr.join(" ")
    end
end
