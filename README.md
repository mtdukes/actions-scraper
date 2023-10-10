# Actions Scraper
A test of scraping in GitHub Actions with R.

Following tutorial [here](https://www.gavinrozzi.com/post/automating-scraping-gh-actions/).
sen
We're going to try scraping a single page of legal opinions from the NC attorney general
https://ncdoj.gov/legal-services/legal-opinions-directory/

Permissions note: To write to the repo, you'll need to set appropriate permissions.

Settings > Actions > General > Workflow permissions > Read and write permissions


## Cron syntax

For more, see this [cron cheatsheet](https://devhints.io/cron)

```
Min  Hour Day  Mon  Weekday
*    *    *    *    *  command to be executed
┬    ┬    ┬    ┬    ┬
│    │    │    │    └─  Weekday  (0=Sun .. 6=Sat)
│    │    │    └──────  Month    (1..12)
│    │    └───────────  Day      (1..31)
│    └────────────────  Hour     (0..23)
└─────────────────────  Minute   (0..59)
```