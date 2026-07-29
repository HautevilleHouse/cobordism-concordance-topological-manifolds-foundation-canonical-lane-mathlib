import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsFoundationCanonicalLaneLean

structure DualityTheorems where
  poincareDuality : Prop
  alexanderDuality : Prop
  lefschetzDuality : Prop
  poincareDualityTerm : poincareDuality
  alexanderDualityTerm : alexanderDuality
  lefschetzDualityTerm : lefschetzDuality

structure DualityEvidence (D : DualityTheorems) where
  poincareDualityClosed : D.poincareDuality
  alexanderDualityClosed : D.alexanderDuality
  lefschetzDualityClosed : D.lefschetzDuality

def DualityClosed (D : DualityTheorems) : Prop :=
  D.poincareDuality ∧ D.alexanderDuality ∧ D.lefschetzDuality

theorem duality_closed_from_evidence (D : DualityTheorems)
    (E : DualityEvidence D) : DualityClosed D := by
  exact And.intro E.poincareDualityClosed
    (And.intro E.alexanderDualityClosed E.lefschetzDualityClosed)

end CobordismConcordanceTopologicalManifoldsFoundationCanonicalLaneLean
end HautevilleHouse