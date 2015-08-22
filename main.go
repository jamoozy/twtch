package main


import (
  "io/ioutil"
  "strings"
)


type Piano struct {}

type Score struct {}


// Builds images for you to display on a gnomecanvas object.
//  file:   Name of the ABC file (does it need an abc extension?)
//  width:  Width of the piano (for drawing the right size). If this is not
//          included or it is 0, then the piano image will not be created.
//  height: Height of the score.  If this is not included or is 0, the score
//          image will not be generated.
type ImageBuilder struct {
  file string
  width, height int
  Piano Piano
  Score Score
}

// Determines if calls to iterator will update the piano image.
func (ib *ImageBuilder) MakesPiano() bool {
  return ib.width > 0
}

// Determines if calls to iterator will update the score image.
func (ib *ImageBuilder) MakesScore() bool {
  return ib.height > 0
}

// Checks the next measure of the Song object and creates the
// images for the piano view and the score view of playing.
// These created images can be accessed via the piano and score
// variable accessors.
func Iterate() {}

type Composer struct {}

type Meter struct {}

type Song struct {
  Title string
  Composer Composer
  Meter Meter
  Tempo int
  Key string
  Voices []Voice
}

// Each song has a bunch of voices

func (s *Song) ReadFile(abcFile string) (err error) {
  contents, err := ioutil.ReadFile(abcFile)
  if err != nil {
    return err
  }
  lines := strings.Split(string(contents), "\n")

  for _, line := range lines {
    switch line {
    case "^%":  // comment
    case "^X:": // new song
    case "^T:": // title
    case "^C:": // composer
    case "^M:": // meter
    case "^Q:": // tempo
    case "^L:": // default note length
    case "^K:": // key
    case "^V:": // voice
    case "^.:":
    default:
    }
  }

  return nil
}

type Voice struct {
  name string
  clef string
}

type Chord struct {
  connectsToNext bool
}

type Note struct {
}

type Twtch struct {
}

func (t *Twtch) run() {
  panic("Nothin written!")
}

func main() {
  twtch := Twtch{}
  twtch.run()
}
