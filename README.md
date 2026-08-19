# ASCENSION — TMLR Submission

LaTeX source for the TMLR version of:

> **ASCENSION: Autoencoder-Based Latent Space Class Expansion for Time Series Data Augmentation**
> Dorian Joubaud, Matthieu Olekhnovitch, Adrien Bolling, Evgeny Zotov, Sylvain Kubler,
> Maxime Cordy, Mike Papadakis, Yves Le Traon
> SerVal / SnT / University of Luxembourg

**Previously submitted to** ICML 2026 (submission #1088, OpenReview `eEuGZhWAKJ`)
with scores 3, 3→4, 4, 2→3. This TMLR version folds the ICML rebuttal material
into the main paper and adds the reviewer-requested experiments (cVAE baselines,
F₁ scores, complexity analysis, 5-macro-domain breakdown) to main-text sections.

**Code:** <https://github.com/DorianJoubaud/ASCENSION>

## Build

```bash
make           # latexmk build
make watch     # continuous rebuild
make clean     # remove build artifacts
```

Requires TeX Live with `latexmk` and `bibtex`.

## Structure

```
main.tex                                  # entry point (TMLR class via tmlr.sty)
tmlr.sty / tmlr.bst / fancyhdr.sty        # vendored from JmlrOrg/tmlr-style-file
math_commands.tex                         # TMLR optional notation
references.bib                            # bibliography (to be ported from ICML)

sections/
  01_introduction.tex
  02_related_work.tex                     # incl. GMVAE/VaDE differentiation subsection
  03_method.tex                           # incl. Algorithm 1 box, cVAE discussion
  04_experimental_setup.tex               # 11 domains → 5 macro-domains, cVAE baselines
  05_results.tex                          # main + cVAE + F1/precision/recall/AUC tables
  06_analysis.tex                         # ablation, F24, stopping criterion, confidence
  07_complexity.tex                       # asymptotic + wall-clock (new TMLR section)
  08_discussion.tex                       # OOD, spectral, anisotropy discussions
  09_conclusion.tex
  10_impact_and_reproducibility.tex       # TMLR-recommended statements
  appendix.tex                            # per-dataset results, extended ablations

figures/                                  # (empty — port from ICML source)
```

## Status — review-driven improvements (tracking the ICML reviews)

| Review | Concern | Section | Status |
|---|---|---|---|
| uqH7 W1 | cVAE baseline | §3.6, §5.2, App. A | 🔴 content to port |
| uqH7 W3 | Computational overhead | §7 | 🔴 content to port |
| mMHX W1 | Clarity / algorithmic routine | §3.5 Alg 1 | 🔴 content to port |
| mMHX W1 | Abbreviations not defined | § throughout | 🔴 pass-through |
| mMHX W2 | Novelty vs GMVAE/VaDE | §2.5 | 🔴 content to port |
| mMHX W3 | F₁/precision/recall/AUC | §5.3 | 🔴 content to port |
| mMHX f/u | Spectral artefacts | §8.2 | 🔴 content to port |
| mMHX f/u | "Algorithmic bloat" | §6.6 | 🔴 content to port |
| siJn W1 | Domain presentation | §4.1, §6.4 | 🔴 content to port |
| siJn W2 | Scaling / stopping study | §6.6 | 🔴 content to port |
| siJn W3 | Complexity analysis | §7.1 | 🔴 content to port |
| kCG7 | VAE OOD | §8.1 | 🔴 content to port |
| kCG7 | Losses "not significant" | §6.1 | 🔴 content to port |
| kCG7 | Isotropic assumption | §8.3 | 🔴 content to port |
| TMLR | Non-anonymous + Impact + Repro | §10 | 🔴 pass-through |
| TMLR | Extended appendix (no page limit) | App. | 🔴 port per-dataset table |

Every section file is seeded with `\todo{}` markers that reference the
precise vault notes holding the relevant content (rebuttal files in
`PhD/Publication/ASCENSION/`).

## Drafting conventions

- `\usepackage{tmlr}` — default: **anonymous** review mode (hides authors).
  Flip to `\usepackage[preprint]{tmlr}` for arXiv, `\usepackage[accepted]{tmlr}`
  for camera-ready.
- `\todo{...}` (margin) and `\todo[inline]{...}` (block) collect automatically
  into the PDF's list of TODOs.
- `\rev{reviewer}{note}` macro marks review-driven paragraphs inline while
  drafting — strip before submission.

## Relation to the Obsidian vault

Source material lives in `PhD/Publication/ASCENSION/`:
- `ASCENSION - Summary.md` — master outline
- `ICML/Reviews.md` — all ICML reviews with rebuttals
- `ASCENSION_AuthorRebuttal_Draft1.md` + `ASCENSION_Response_*.md` — per-concern rebuttal text
- `ASCENSION_Results_Comparison_Table.md` — new experimental results

The LaTeX `\todo` markers in each section point to the specific vault file to
pull content from.
