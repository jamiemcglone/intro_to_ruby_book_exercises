
class ContactBook

    def initialize(contact_book)
        @contact_book = contact_book
    end

    def find_action
        puts("Who would you like to call?")
        friend_to_call = gets.capitalize.chomp
        if @contact_book.key?(friend_to_call)
            puts("#{friend_to_call}'s number is #{@contact_book[friend_to_call]}")
        else
            puts "#{friend_to_call} could not be found in your contact book"
        end
    end

    def add_action
        puts("Please tell us your new contacts name")
        contact_to_add = gets.capitalize.chomp
        puts("Now please tell us their phone number")
        number_to_add = gets.chomp
        @contact_book[contact_to_add] = number_to_add
        puts(@contact_book)
    end

    def delete_action
        puts("Please tell us the name of the contact you would like to delete")
        contact_to_delete = gets.capitalize.chomp
        @contact_book.delete(contact_to_delete)
        puts(@contact_book)
    end
end

@ContactBook = ContactBook.new({
    "Fraser" => "0977887579",
    "Jack" => "0789765767",
    "Ewan" => "0978664545",
    "Ben" => "0875856486",
    "Michael" => "08797865467"
})

def contact_book_in_action
    puts("Would you like to find a contact's number, add a contact, or delete a contact? Please type find, add, or delete!")
    action = gets.chomp.downcase
    if action == "find"
        @ContactBook.find_action
    elsif action == "add"
        @ContactBook.add_action
    elsif action == "delete"
        @ContactBook.delete_action
    else
        puts("Please enter one of the three options")
        contact_book_in_action
    end
end

contact_book_in_action