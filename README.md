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

```bash
git init && git add . && git commit -m "Initial site"
```

Create a repo named `<username>.github.io` on GitHub, then:

```bash
git remote add origin https://github.com/<username>/<username>.github.io.git
git branch -M main && git push -u origin main
```

Pages serves it at `https://<username>.github.io` within a minute or two.
Netlify and Vercel also work — drag the folder into either dashboard.

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
