import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsFoundationCanonicalLaneLean

structure CobordismInvariant where
  invariantType : Type
  targetManifold : Type
  targetTopology : TopologicalSpace targetManifold
  propertyDefinition : Prop
  cobordismInvariance : Prop
  relationPreserved : Prop
  propertyDefinitionTerm : propertyDefinition
  cobordismInvarianceTerm : cobordismInvariance
  relationPreservedTerm : relationPreserved

structure CobordismInvariantEvidence (I : CobordismInvariant) where
  propertyDefinitionClosed : I.propertyDefinition
  cobordismInvarianceClosed : I.cobordismInvariance
  relationPreservedClosed : I.relationPreserved

def CobordismInvariantClosed (I : CobordismInvariant) : Prop :=
  I.propertyDefinition ∧ I.cobordismInvariance ∧ I.relationPreserved

theorem cobordism_invariant_closed_from_evidence (I : CobordismInvariant)
    (E : CobordismInvariantEvidence I) : CobordismInvariantClosed I := by
  exact And.intro E.propertyDefinitionClosed (And.intro E.cobordismInvarianceClosed E.relationPreservedClosed)

end CobordismConcordanceTopologicalManifoldsFoundationCanonicalLaneLean
end HautevilleHouse
