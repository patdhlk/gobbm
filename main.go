package main

import (
	"fmt"
	"os"

	"github.com/patdhlk/gobbm/version"
)

func main() {
	vers := version.GetVersion()
	fmt.Printf("GOBBM <-> simple go build by make template VERSION: %s, MARKER: %s, [%s]", version.Version, version.VersionPrerelease, vers.FullVersionNumber())
	os.Exit(0)
}
