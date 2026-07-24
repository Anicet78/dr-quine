package main

import (
	"fmt"
	"os"
	"os/exec"
)

const CONTENT = "package main\n\nimport (\n\t\"fmt\"\n\t\"os\"\n\t\"os/exec\"\n)\n\nconst CONTENT = %q\n\nfunc main() {\n\ti := %d\n\tif i <= 0 {\n\t\treturn\n\t}\n\tfilename := fmt.Sprintf(\"Sully_%%d.go\", i-1)\n\ti--\n\n\tf, err := os.Create(filename)\n\tif err != nil {\n\t\treturn\n\t}\n\n\t_, err = fmt.Fprintf(f, CONTENT, CONTENT, i)\n\tif err != nil {\n\t\treturn\n\t}\n\n\tcmdline1 := fmt.Sprintf(\"Sully_%%d.go\", i)\n\tcmd1 := exec.Command(\"go\", \"build\", cmdline1)\n\tif err = cmd1.Run(); err != nil {\n\t\treturn\n\t}\n\n\tcmdline2 := fmt.Sprintf(\"./Sully_%%d\", i)\n\tcmd2 := exec.Command(cmdline2)\n\tif err = cmd2.Run(); err != nil {\n\t\treturn\n\t}\n}\n"

func main() {
	i := 5
	if i <= 0 {
		return
	}
	filename := fmt.Sprintf("Sully_%d.go", i-1)
	i--

	f, err := os.Create(filename)
	if err != nil {
		return
	}

	_, err = fmt.Fprintf(f, CONTENT, CONTENT, i)
	if err != nil {
		return
	}

	cmdline1 := fmt.Sprintf("Sully_%d.go", i)
	cmd1 := exec.Command("go", "build", cmdline1)
	if err = cmd1.Run(); err != nil {
		return
	}

	cmdline2 := fmt.Sprintf("./Sully_%d", i)
	cmd2 := exec.Command(cmdline2)
	if err = cmd2.Run(); err != nil {
		return
	}
}
