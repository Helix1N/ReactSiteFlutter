package main

import (
	"database/sql"
	"fmt"
  "net/http"
  "github.com/gin-gonic/gin"

	_ "github.com/go-sql-driver/mysql"
)

type book struct{
  ID string `json:"id"`
  Title string `json:"title"`
  Autor string `json:"author"`
  Quantity int `json:"quantity"`

}
type topic struct{
  ID int `json:"id"`
  Name string `json:"name"`
  Comment string `json:"comment"`
  Icon string `json:"icon"`
}
var topics = []topic{}



func connectDatabase() {
  db, err := sql.Open("mysql", "helixn:Haduken132@tcp(localhost:3306)/topicsGptFlutter")
	if err != nil {
		fmt.Println("error validating sql.Open arguments")
		panic(err.Error())
	}
	defer db.Close()

	err = db.Ping()
	if err != nil {
		fmt.Println("error verifying connection with db.Ping")
		panic(err.Error())
	}

	query, err := db.Query("SELECT * FROM topicsGptFlutter.topicsGpt;")
	if err != nil {
		panic(err.Error())
	}
	defer query.Close()

	// Iterate over the result set and print the name
	for query.Next() {
		var name, comment, icon string
    var id int
		if err := query.Scan(&id,&name,&comment,&icon); err != nil {
			panic(err.Error())
		}
    fmt.Printf("ID: %d, Name: %s, Comment: %s, Icon: %s\n", id, name, comment, icon)
    topics = append(topics, topic{ID:id, Name:name, Comment:comment,Icon:icon})
	}

	// Check for errors after iteration
	if err = query.Err(); err != nil {
		panic(err.Error())
	}

	fmt.Println("Successful Connection to Database!")

}

var books = []book{
  {ID:"1", Title: "In Search of Lost Time", Autor: "Marcel Proust", Quantity: 2},
  {ID:"2", Title: "The Great Gatsby", Autor: "F. Scott Fitzgerald", Quantity: 5},
  {ID:"3", Title: "War and Peace", Autor: "Leo Tolstoy", Quantity: 6},
}

func getBooks(c *gin.Context) {
  c.IndentedJSON(http.StatusOK, books)
}
func getTopics(c *gin.Context) {
  c.IndentedJSON(http.StatusOK, topics)
}


func main() {
	connectDatabase()
  router := gin.Default()
  router.GET("/books", getBooks)
  router.GET("/topics", getTopics)
  router.Run("localhost:8080")


}
