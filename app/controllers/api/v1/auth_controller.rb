class Api::V1::AuthController < ApplicationController

    def create
        user = User.find_by(username: params[:username]) 
    
        if user && user.authenticate(params[:password])
            payload = { user_id: user.id }
            token = JWT.encode(payload, 'my_secret', 'HS256')
            lib_books = UserLibBook.all_books
            wish_books = UserWishBook.all_books
            reserved_books = ReservedBook.all_reserved_books
            likes = CommentLike.all.select { |l| l.user_id === user.id}
            my_likes = likes.map { |l| l.my_like} 
            render json: {
              user: {
                id: user.id, 
                username: user.username, 
                bio: user.bio, 
                prof_pic_url: user.prof_pic_url
              }, 
              all_lib_books: lib_books, 
              all_wish_books: wish_books, 
              reserved_books: reserved_books, 
              my_likes: my_likes, 
              token: token
            }
        else
            render json: { error: 'Invalid username/password.' }, status: 401
        end
    end

    def show
        token = request.headers[:Authorization].split(' ')[1]
        decoded_token = JWT.decode(token, 'my_secret' , true, { algorithm: 'HS256' })
        user_id = decoded_token[0]['user_id']
        user = User.find(user_id)
    
        lib_books = UserLibBook.all_books
        wish_books = UserWishBook.all_books
        reserved_books = ReservedBook.all
        likes = CommentLike.all.select { |l| l.user_id === user.id}
        my_likes = likes.map { |l| l.my_like}
        render json: {
          user: {
            id: user.id, 
            username: user.username, 
            bio: user.bio, 
            prof_pic_url: user.prof_pic_url
          }, 
            all_lib_books: lib_books, 
            all_wish_books: wish_books, 
            reserved_books: reserved_books,  
            my_likes: my_likes
        }
    end
end
