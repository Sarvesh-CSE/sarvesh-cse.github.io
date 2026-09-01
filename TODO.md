# Site backlog

Live at **https://sarvesh-cse.github.io** · repo `Sarvesh-CSE/sarvesh-cse.github.io`

## Done
- [x] Site built and deployed to GitHub Pages
- [x] Google Search Console verified (HTML file method)
- [x] Indexed by Google — confirmed 2026-08-18, ~1 hour after launch
- [x] Priority crawl requested
- [x] DOI links on all six recent publications
- [x] `robots.txt`, `sitemap.xml`, canonical URL, schema.org Person markup
- [x] Portrait in hero + `og:image` social preview (2026-09-01). Source: UC Irvine's
      Fulbright scholars article, cropped to 400/800px square
- [x] Weekly scheduled task `weekly-publication-sync` — Mondays 9am, checks DBLP
      and arXiv for new papers and adds confirmed ones automatically

## Needs Sarvesh — can't be done without you
- [ ] **Add site URL to remaining profiles.** Still the highest-value work left.
      Nothing on the page competes with this for ranking.
      - [x] GitHub → Website field (done 2026-09-01, verified via API)
      - [ ] **Google Scholar → Homepage — do this next.** Highest weight for an
            academic, and the site already links out to Scholar, so this makes
            the association mutual
      - [ ] BHU faculty page — institutional `.ac.in` domain, passes real credit
      - [ ] ORCID — canonical academic identity record
      - [ ] LinkedIn (linkedin.com/in/sarveshbhu) → Contact info → Website
      - [ ] ResearchGate
- [ ] **Submit sitemap** — Search Console → Sitemaps → `sitemap.xml`
- [ ] **Teaching section** — course names/codes taught at BHU; not published anywhere
- [ ] **Current CV** — the public BHU one stops at 2021. Export a fresh PDF and
      it can be linked from the nav
- [ ] **Google Scholar metrics** — CV says 143 citations / h-index 7 (2021);
      one source suggested ~304. Send current numbers if you want them shown

## Worth considering
- [ ] **Custom domain** (e.g. sarveshpandey.com, ~$12/yr). Cheapest to do now,
      before inbound links accumulate against the github.io URL
- [ ] Ask BHU to redact DOB and mobile number from the public faculty CV PDF
- [ ] Ask BHU to fix the GitHub link on that CV — it points at `sarvesh-0`,
      which is a different person (Sarvesh Teware)
- [ ] News/updates section, if there's a steady stream of talks and papers

## Weekly routine
1. `git pull` (in case of edits made through the GitHub web UI)
2. Make changes to `index.html`
3. `git add -A && git commit -m "..." && git push`
4. Live in ~30 seconds
5. Check Search Console → Performance for impressions and queries

## Watch for
Ranking for "Sarvesh Pandey" is the long game — competing against a Qualcomm
engineer, an HCLSoftware director, and an EY consultant. Inbound links decide
it, not on-page changes. Expect months, not weeks.

Note that GitHub and LinkedIn website links are `rel="nofollow"`, so they aid
discovery but pass no ranking credit. Google Scholar, ORCID and the BHU faculty
page are the ones that actually carry weight — prioritise those.

Things that do NOT affect ranking, despite common belief: having a photo,
adding more meta tags, editing the page frequently, and hosting on Google Sites
rather than GitHub Pages.
