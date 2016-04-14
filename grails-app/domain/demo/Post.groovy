package demo

class Post {

    String title
    String description
    String autor

    static hasMany = [comments: Comment]

    static constraints = {
        title nullable: false
        description nullable: false
        autor nullable: false
    }

    @Override
    String toString(){
        title
    }
}
