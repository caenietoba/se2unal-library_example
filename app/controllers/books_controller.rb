class BooksController < ApplicationController
    def index
        books = Book.all
        respond_to do |format|
            format.html {render html: "Hola mundo", status:200}
            format.json {render json: books, status:200}
        end
    end
    
    def create
        book = Book.new(params_book)
        if book.save
            respond_to do |format|
                #format.html {render html: "Hola mundo", status:201}
                format.json {render json: books, status:201}
            end
        else
            respond_to do |format|
                format.json {render json: book.errors, status: :unprocessable_entity}
            end
        end
    end
    
    def params_book
        params.permit(:name, :code, :availible, :year)
    end

end

#curl -iH "Accept: application/json"  https://libary-example-caenietoba.c9users.io/books.create
#curl -i -X POST -d '{name : "Elantris", code:108, availible:true, year:1995}' https://libary-example-caenietoba.c9users.io/books  