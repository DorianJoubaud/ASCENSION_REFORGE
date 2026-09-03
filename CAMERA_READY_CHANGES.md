# Camera-ready change list (for the OpenReview comment accompanying the revision)

Draft of the note to post with the camera-ready upload. Everything below is
implemented in this repository.

---
BEGIN POSTABLE

We thank the Action Editor and both reviewers. The camera-ready implements
every change promised in the rebuttal and the four changes requested in the
decision. We list them below, followed by two additions we disclose for
completeness.

**Changes promised in the rebuttal (y3Bb C1-C7/WS8, Hzd4 Q1-Q6).** The fixed
configuration over three runs is now the main comparison (Table 1), with the
best-per-dataset configuration moved to the appendix. We report the
distribution and concentration of the per-dataset gains, the recomputed
Friedman-Nemenyi analysis in the main text, the per-dataset standard
deviations across runs, the full Moment and VAE specifications, the epoch
rule, the one-to-one generation budget (Section 4.1 and Algorithm 1), the
budget-matched iteration control, the applicability profile against class
count and samples per class, the condensed Section 2.2 with the full
discussion in the appendix, and the corrected abstract figures and claims.
Figure 6 of the submission (Figure 7 in the camera-ready) was regenerated on the fixed-configuration runs.

**Related work (decision request).** Section 2.2 now discusses KoVAE as the
VAE generation baseline, describing its linear Koopman prior on the latent
dynamics and noting that, like VaDE and GMVAE, it offers no mechanism to
generate beyond the learned distribution, which is the difference ASCENSION's
controlled expansion is positioned against. It also cites covariance-based
latent expansion precedents (Wang et al. 2019, ISDA; Wang et al. 2020, speaker
embeddings; Lan et al. 2025) and discusses Gonen et al. (NeurIPS 2025) on
generative modelling under data scarcity.

**Claim framing (decision request).** The abstract now states that the
benefit concentrates where training data is scarce, the conclusion
quantifies this (the gain concentrates below 20 training samples per class,
and the method is close to neutral above 50), and both position ASCENSION
as a low-risk method whose target regime is the small-training-set
setting.

**Alpha-tuning asymmetry (decision request).** A fourth limitation now
states the asymmetry between ASCENSION's fixed configuration and the
baselines' recommended defaults, and calls for an equal per-dataset tuning
budget as future work.

**Three disclosures.** First, the rebuttal promised to update Figure 5 of the submission (Figure 6 in the camera-ready, random
forest feature importances) on the fixed-configuration runs. The regenerated
figure shows ASCENSION alone, one panel per classifier, with the importance
of each feature averaged over the three runs and whiskers giving its range
across runs, since the rankings vary from one run to the next. F24, the
train-test distribution discrepancy, is the only feature that stays among the
leading ones for the three classifiers, which motivates the discrepancy-axis
analysis (Figure 6 of the submission, now Figure 7, with its curves recomputed on the fixed-configuration runs). The text now also reports the direct
statistics along this axis, which show that ASCENSION's gain does not fade as
the train-test discrepancy grows. The corresponding importances for the other eight DA
methods are given as a single figure in a new appendix. Second, the appendix adds one additional analysis, a
deployment rule that selects the iteration count per dataset on an internal
validation fold without consulting the test set, evaluated on the 78 UCR
datasets that admit such a fold. It addresses the model-selection concern
raised in the reviews; we are happy to remove it if the Action Editor
prefers the camera-ready to stay strictly within the reviewed scope. Third,
the per-domain analysis in the appendix has been recomputed on the same fixed
configuration and the same three runs as Table 1, and is now reported as a
single table.

END POSTABLE
