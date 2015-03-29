# Parsley

## Installation

1. Install required gems: `bundle install`
2. Install [Docsplit dependencies](http://documentcloud.github.io/docsplit) (graphicsmagick, poppler, etc).

## Usage
Using Parsley is a two step process. Before scanning documents for relevant
information, you need to extract the raw text.

#### Step 1: Extract text from PDF files

1. Put your PDFs in `data/pdfs`. (Nested file structure not yet supported.)
2. From the root directory of this project, run `./scripts/extract_text`.

As the text is being extracted, `extract_text` will output progress:
* `.` for each successful extraction
* `s` for any files that were skipped because they've already been extracted
* `F` for any failed extraction

When completed, `extract_text` will print out a list of failed files so that
you can check them manually, if desired.

_Note: PDFs don't need to be OCR'd ahead of time. But if they have been OCR'd
it'll run faster since it can skip that step._

#### Step 2: Search extracted text for relevant information

TODO: No code for this yet!
