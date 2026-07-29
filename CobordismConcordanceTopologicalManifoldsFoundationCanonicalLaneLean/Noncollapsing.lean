import CobordismConcordanceTopologicalManifoldsFoundationCanonicalLaneLean.RiemannianCurvature

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsFoundationCanonicalLaneLean

structure NoncollapsingPackage (G : RiemannianCurvaturePackage) where
  scaleInvariantVolumeBound : Prop
  curvatureScaleControl : Prop
  blowupLimitNoncollapsed : Prop

structure NoncollapsingEvidence (G : RiemannianCurvaturePackage) (N : NoncollapsingPackage G) where
  scaleInvariantVolumeBoundClosed : N.scaleInvariantVolumeBound
  curvatureScaleControlClosed : N.curvatureScaleControl
  blowupLimitNoncollapsedClosed : N.blowupLimitNoncollapsed

def NoncollapsingClosed (G : RiemannianCurvaturePackage) (N : NoncollapsingPackage G) : Prop :=
  N.scaleInvariantVolumeBound ∧ N.curvatureScaleControl ∧ N.blowupLimitNoncollapsed

theorem noncollapsing_closed_from_evidence (G : RiemannianCurvaturePackage) (N : NoncollapsingPackage G) (E : NoncollapsingEvidence G N) : NoncollapsingClosed G N := by
  exact And.intro E.scaleInvariantVolumeBoundClosed (And.intro E.curvatureScaleControlClosed E.blowupLimitNoncollapsedClosed)

end CobordismConcordanceTopologicalManifoldsFoundationCanonicalLaneLean
end HautevilleHouse
