package main

import "fmt"

func function() string {
	return ("package main\n\nimport \"fmt\"\n\nfunc function() string {\n\treturn (%q);\n}\n\n/*\n\tComment outside of my program\n*/\nfunc main() {\n/*\n\tComment inside of my main function\n*/\n\tresult := function();\n\tfmt.Printf(result, result);\n}\n");
}

/*
	Comment outside of my program
*/
func main() {
/*
	Comment inside of my main function
*/
	result := function();
	fmt.Printf(result, result);
}
