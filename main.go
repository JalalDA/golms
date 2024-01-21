package main

import (
	"net/http"

	"github.com/JalalDA/golms/helper"
	"github.com/gin-gonic/gin"
)

func main() {
	routes := gin.Default()
	routes.GET("", func(ctx *gin.Context) {
		ctx.JSON(http.StatusOK, "Wellcome to Go LMS")
	})

	server := &http.Server{
		Addr:    ":8000",
		Handler: routes,
	}

	err := server.ListenAndServe()
	helper.ErrorPanic(err)
}
