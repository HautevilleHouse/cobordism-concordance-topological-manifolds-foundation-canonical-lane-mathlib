import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsFoundationCanonicalLaneLean

structure ConcordancePackage where
  sourceManifold : Type u
  targetManifold : Type u
  sourceTopology : TopologicalSpace sourceManifold
  targetTopology : TopologicalSpace targetManifold
  concordanceManifold : Type u
  concordanceTopology : TopologicalSpace concordanceManifold
  concordanceCylinderCondition : Prop
  concordanceStructure : Prop

structure ConcordanceEvidence (C : ConcordancePackage) where
  concordanceCylinderConditionClosed : C.concordanceCylinderCondition
  concordanceStructureClosed : C.concordanceStructure

def ConcordanceClosed (C : ConcordancePackage) : Prop :=
  C.concordanceCylinderCondition ∧ C.concordanceStructure

theorem concordance_closed_from_evidence (C : ConcordancePackage) (E : ConcordanceEvidence C) :
    ConcordanceClosed C := by
  exact And.intro E.concordanceCylinderConditionClosed E.concordanceStructureClosed

end CobordismConcordanceTopologicalManifoldsFoundationCanonicalLaneLean
end HautevilleHouse
