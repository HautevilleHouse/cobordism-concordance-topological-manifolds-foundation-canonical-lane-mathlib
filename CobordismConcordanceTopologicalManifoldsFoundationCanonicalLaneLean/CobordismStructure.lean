import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsFoundationCanonicalLaneLean

structure CobordismStructure (M N : Type) [TopologicalSpace M] [TopologicalSpace N] where
  boundaryManifolds : M × N
  cobordismManifold : Type
  cobordismTopology : TopologicalSpace cobordismManifold
  boundaryInclusions : (M → cobordismManifold) × (N → cobordismManifold)
  dimension : Nat
  compact : Prop
  orientationConsistent : Prop
  smoothStructure : Prop
  compactTerm : compact
  orientationConsistentTerm : orientationConsistent
  smoothStructureTerm : smoothStructure

structure CobordismEvidence (C : CobordismStructure M N) where
  compactClosed : C.compact
  orientationConsistentClosed : C.orientationConsistent
  smoothStructureClosed : C.smoothStructure

def CobordismClosed {M N : Type} [TopologicalSpace M] [TopologicalSpace N] (C : CobordismStructure M N) : Prop :=
  C.compact ∧ C.orientationConsistent ∧ C.smoothStructure

theorem cobordism_closed_from_evidence {M N : Type} [TopologicalSpace M] [TopologicalSpace N]
    (C : CobordismStructure M N) (E : CobordismEvidence C) : CobordismClosed C := by
  exact And.intro E.compactClosed (And.intro E.orientationConsistentClosed E.smoothStructureClosed)

end CobordismConcordanceTopologicalManifoldsFoundationCanonicalLaneLean
end HautevilleHouse
