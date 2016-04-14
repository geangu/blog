package demo

class Comment {

    String autor
    String description

    static belongsTo = [ post: Post ]

    static constraints = {
        post nullable: false
        autor nullable: false
        description nullable: false
    }

    @Override
    String toString(){
        description
    }
}
