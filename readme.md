# Parsley

## Installation

1. Install required gems: `bundle install`
2. Install [Docsplit dependencies](http://documentcloud.github.io/docsplit) (graphicsmagick, poppler, etc).

## Usage
Using Parsley is a two step process.

#### Step 1: Extract text from PDF files

1. Put your PDFs in `data/pdfs`. (Nested file structure not supported.)
2. From the root directory of this project, run `./scripts/extract_text`.

As the text is being extracted, `extract_text` will output progress:
* `.` for each successful extraction
* `s` for any files were skiped because they're already been extracted
* `F` for any failed extraction

When completed, will also print out a list of failed files so that you can
check them manually.

_Note: PDFs don't need to be OCR'd ahead of time. But if they have been OCR'd
it'll run faster since it can skip that step._

#### Step 2: Search extracted text for important stuff

TODO: Add documentation
