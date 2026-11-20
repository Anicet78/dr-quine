package main

import (
	"fmt"
	"os"
)

const CONTENT = "package main\n\nimport (\n\t\"fmt\"\n\t\"os\"\n)\n\nconst CONTENT = %q\n\n/*\nThis is a comment\n*/\nfunc main() {\n\tf, err := os.Create(\"Grace_kid.go\")\n\tif err != nil {\n\t\treturn\n\t}\n\n\tfmt.Fprintf(f, CONTENT, CONTENT)\n}\n"

/*
This is a comment
*/
func main() {
	f, err := os.Create("Grace_kid.go")
	if err != nil {
		return
	}

	fmt.Fprintf(f, CONTENT, CONTENT)
}
