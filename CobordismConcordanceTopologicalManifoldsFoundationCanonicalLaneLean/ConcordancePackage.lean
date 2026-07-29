import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsFoundationCanonicalLaneLean

structure ConcordancePackage where
  sourceManifold : Type
  targetManifold : Type
  sourceTopology : TopologicalSpace sourceManifold
  targetTopology : TopologicalSpace targetManifold
  concordance : Type
  productStructure : Prop
  boundaryConditions : Prop
  compositionLaw : Prop
  productStructureTerm : productStructure
  boundaryConditionsTerm : boundaryConditions
  compositionLawTerm : compositionLaw

structure ConcordanceEvidence (C : ConcordancePackage) where
  productStructureClosed : C.productStructure
  boundaryConditionsClosed : C.boundaryConditions
  compositionLawClosed : C.compositionLaw

def ConcordanceClosed (C : ConcordancePackage) : Prop :=
  C.productStructure ∧ C.boundaryConditions ∧ C.compositionLaw

theorem concordance_closed_from_evidence (C : ConcordancePackage)
    (E : ConcordanceEvidence C) : ConcordanceClosed C := by
  exact And.intro E.productStructureClosed
    (And.intro E.boundaryConditionsClosed E.compositionLawClosed)

end CobordismConcordanceTopologicalManifoldsFoundationCanonicalLaneLean
end HautevilleHouse