package main

import (
	"fmt"
	"path/filepath"
	"testing"
)

// Example : go test -v -run=TestParse/testdata/hw2.f

func TestParse(t *testing.T) {

	files, err := filepath.Glob("testdata/*.f")
	if err != nil {
		fmt.Println("err = ", err)
		return
	}

	for _, file := range files {
		t.Run(file, func(t *testing.T) {
			err = transpile(file)
			if err != nil {
				t.Error(err)
			}
		})
	}
}
