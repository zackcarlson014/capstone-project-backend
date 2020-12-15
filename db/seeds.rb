user1 = User.create(username: 'Zack', password: 'Blink182')
user2 = User.create(username: 'Sanja', password: 'Queen4')
user3 = User.create(username: 'Sam', password: 'Blade1')

book1 = Book.create(title: 'First Book', author: 'asdfsadlkf')
book2 = Book.create(title: 'Second Book', author: 'asdfsadlkf')
book3 = Book.create(title: 'Third Book', author: 'asdfs')
book4 = Book.create(title: 'Fourth Book', author: 'asserfs')

lib_book_1 = UserLibBook.create(user_id: 1, book_id: 1)
lib_book_2 = UserLibBook.create(user_id: 1, book_id: 2)
lib_book_3 = UserLibBook.create(user_id: 1, book_id: 3)
lib_book_4 = UserLibBook.create(user_id: 1, book_id: 4)