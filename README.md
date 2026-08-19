# sarveshpandey.com — academic personal site

A single static page. No build step, no dependencies, no framework. Open
`index.html` in a browser to preview it locally.

## Files

| File | Purpose |
|---|---|
| `index.html` | The entire site — HTML, CSS, and JSON-LD in one file |
| `profile.md` | Source data compiled from public records; not published |
| `README.md` | This file |

## Editing

Everything lives in `index.html`. To add a publication, copy an existing
block and change the text:

```html
<div class="pub">
  <span class="t"><a href="DOI_URL">Title of the paper</a></span>
  <span class="m">Venue, volume <span class="yr">&middot; 2026</span><span class="tag">SCIE</span></span>
</div>
```

Drop the `<a>` wrapper if there is no link yet, and drop the `<span class="tag">`
if there is no badge to show.

Colours, spacing, and fonts are CSS custom properties at the top of the
`<style>` block. `--accent` is the maroon used for links and the callout rule.

## Deploying to GitHub Pages

The repo is already initialised and committed on `main`. Two steps remain.

**1.** Create a new **public** repo on GitHub named exactly `Sarvesh-CSE.github.io`
(github.com/new). Do not add a README, .gitignore, or licence — the repo must
start empty.

**2.** Push:

```bash
git remote add origin https://github.com/Sarvesh-CSE/Sarvesh-CSE.github.io.git
git push -u origin main
```

The site goes live at **https://sarvesh-cse.github.io** within about a minute.
For a `<username>.github.io` repo, Pages turns itself on — no settings needed.

To update later: edit, then `git add -A && git commit -m "..." && git push`.

## Getting indexed by Google

Being live is not the same as being findable. After the site is up:

1. Go to [Google Search Console](https://search.google.com/search-console) and
   add `https://sarvesh-cse.github.io/` as a **URL prefix** property.
2. Verify ownership with the **HTML tag** method — Search Console gives you a
   `<meta name="google-site-verification" ...>` tag. Paste it into `<head>` in
   `index.html`, push, then click Verify.
3. Submit `sitemap.xml` under **Sitemaps**.
4. Use **URL Inspection** → *Request indexing* on the homepage.

Indexing takes days to a few weeks. What actually moves ranking for a common
name is inbound links: add the URL to your Google Scholar profile, LinkedIn,
GitHub bio, ORCID, ResearchGate, and your BHU faculty page. Those links matter
more than anything on the page itself.

## Before going live

- [ ] Add a `<link rel="canonical">` in `<head>` pointing at the real domain
- [ ] Add `og:image` and a profile photo
- [ ] Confirm the Google Scholar profile ID resolves: `eXeYCBgAAAAJ`
- [ ] Verify the GitHub handle `sarvesh-0` is current
- [ ] Add a Teaching section — courses taught at BHU are not yet in the page
- [ ] Add DOI links for the five recent papers currently listed without one
- [ ] Upload a current CV as `cv.pdf` and link it from the nav

## Note on the BHU faculty CV

The publicly indexed CV PDF at `bhu.ac.in` lists a date of birth and a personal
mobile number. Neither appears in this site or in `profile.md`, and neither
should be added. Worth asking the department to publish a redacted version.
