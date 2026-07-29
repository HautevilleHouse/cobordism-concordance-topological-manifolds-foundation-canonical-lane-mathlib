import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsFoundationCanonicalLaneLean

structure ConcordanceRelation (M N : Type) [TopologicalSpace M] [TopologicalSpace N] where
  sourceManifold : M
  targetManifold : N
  concordanceManifold : Type
  concordanceTopology : TopologicalSpace concordanceManifold
  cylinderEmbedding : (M × [0,1]) → concordanceManifold
  endpointsIncluded : Prop
  isotopyRelBoundary : Prop
  endpointsIncludedTerm : endpointsIncluded
  isotopyRelBoundaryTerm : isotopyRelBoundary

structure ConcordanceEvidence (C : ConcordanceRelation M N) where
  endpointsIncludedClosed : C.endpointsIncluded
  isotopyRelBoundaryClosed : C.isotopyRelBoundary

def ConcordanceClosed {M N : Type} [TopologicalSpace M] [TopologicalSpace N] (C : ConcordanceRelation M N) : Prop :=
  C.endpointsIncluded ∧ C.isotopyRelBoundary

theorem concordance_closed_from_evidence {M N : Type} [TopologicalSpace M] [TopologicalSpace N]
    (C : ConcordanceRelation M N) (E : ConcordanceEvidence C) : ConcordanceClosed C := by
  exact And.intro E.endpointsIncludedClosed E.isotopyRelBoundaryClosed

end CobordismConcordanceTopologicalManifoldsFoundationCanonicalLaneLean
end HautevilleHouse
