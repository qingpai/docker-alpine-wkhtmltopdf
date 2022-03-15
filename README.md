# Alpine Wkhtmltopdf Docker Container
## with mutools

[![License: MIT](https://img.shields.io/badge/License-MIT-brightgreen.svg)](https://opensource.org/licenses/MIT)
<a href="https://github.com/madnight/docker-alpine-wkhtmltopdf/actions/workflows/CI.yml"><img src="https://img.shields.io/github/workflow/status/madnight/docker-alpine-wkhtmltopdf/CI" alt="Build Status" /></a>
[![](https://images.microbadger.com/badges/image/madnight/docker-alpine-wkhtmltopdf.svg)](https://microbadger.com/images/madnight/docker-alpine-wkhtmltopdf "Get your own image badge on microbadger.com")

## Usage

wkhtmltopdf with qt patches

yes, Alpine does have a wkhtmltopdf package... but it doesn't include the qt patches ... enjoy!


```
# i do it myself
docker build -t alpine-wkhtmltopdf .
docker run alpine-wkhtmltopdf google.com - > test.pdf

# i'm lazy
docker run madnight/docker-alpine-wkhtmltopdf google.com - > test.pdf

# or mount a local file (e.g. test.html)
docker run --rm -v $(pwd):/data madnight/docker-alpine-wkhtmltopdf /data/test.html - > test.pdf
```

## Q&A
*Is it really the smallest html to pdf docker image on the planet?*

Yes.



