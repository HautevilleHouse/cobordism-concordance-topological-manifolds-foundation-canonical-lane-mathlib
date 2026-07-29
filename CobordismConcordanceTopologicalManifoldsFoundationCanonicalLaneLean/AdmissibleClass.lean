import CobordismConcordanceTopologicalManifoldsFoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : CobordismConcordanceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CobordismConcordanceWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CobordismConcordanceTopologicalManifoldsFoundationCanonicalLaneLean
end HautevilleHouse
