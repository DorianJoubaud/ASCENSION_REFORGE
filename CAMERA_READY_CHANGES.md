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
Figure 6 was regenerated on the fixed-configuration runs.

**Related work (decision request).** Section 2.2 now discusses KoVAE as the
strongest VAE-based generative baseline and positions ASCENSION's controlled
expansion against it, cites covariance-based latent expansion precedents
(Wang et al. 2019, ISDA; Wang et al. 2020, speaker embeddings; Lan et al.
2025), and discusses Gonen et al. (NeurIPS 2025) on generative modelling
under data scarcity.

**Claim framing (decision request).** The abstract and conclusion now state
that the benefit concentrates below 20 training samples per class, that the
method is close to neutral above 50 samples per class, and position
ASCENSION as a low-risk method whose target regime is the small-training-set
setting.

**Alpha-tuning asymmetry (decision request).** A fourth limitation now
states the asymmetry between ASCENSION's fixed configuration and the
baselines' recommended defaults, and calls for an equal per-dataset tuning
budget as future work.

**Two disclosures.** First, the rebuttal promised to update Figure 5 (random
forest feature importances) on the fixed-configuration runs. When we reran
this analysis we found that its out-of-bag R2 is near zero for all 27
method-classifier pairs (median 0.03, maximum 0.24) and that the importance
rankings are not stable across the three runs. We therefore replaced the
figure with this measured finding, and the discrepancy-axis analysis
(Figure 6, unchanged) is now motivated by the mechanism and by the direct
statistics, which show that ASCENSION's gain does not fade as the train-test
discrepancy grows. Second, the appendix adds one additional analysis, a
deployment rule that selects the iteration count per dataset on an internal
validation fold without consulting the test set, evaluated on the 78 UCR
datasets that admit such a fold. It addresses the model-selection concern
raised in the reviews; we are happy to remove it if the Action Editor
prefers the camera-ready to stay strictly within the reviewed scope.

END POSTABLE
