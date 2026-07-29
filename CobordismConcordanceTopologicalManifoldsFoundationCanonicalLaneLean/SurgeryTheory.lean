import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsFoundationCanonicalLaneLean

structure SurgeryTheoryPackage (H : HandlebodyDecompositionPackage) where
  surgeryData : Prop
  surgeryTraceExists : Prop
  surgeryLiftExists : Prop
  surgeryObstructionVanishes : Prop

structure SurgeryTheoryEvidence {H : HandlebodyDecompositionPackage}
    (S : SurgeryTheoryPackage H) where
  surgeryDataClosed : S.surgeryData
  surgeryTraceExistsClosed : S.surgeryTraceExists
  surgeryLiftExistsClosed : S.surgeryLiftExists
  surgeryObstructionVanishesClosed : S.surgeryObstructionVanishes

def SurgeryTheoryClosed {H : HandlebodyDecompositionPackage}
    (S : SurgeryTheoryPackage H) : Prop :=
  S.surgeryData ∧ S.surgeryTraceExists ∧
  S.surgeryLiftExists ∧ S.surgeryObstructionVanishes

theorem surgery_theory_closed_from_evidence
    {H : HandlebodyDecompositionPackage} (S : SurgeryTheoryPackage H)
    (E : SurgeryTheoryEvidence S) :
    SurgeryTheoryClosed S := by
  exact And.intro E.surgeryDataClosed
    (And.intro E.surgeryTraceExistsClosed
      (And.intro E.surgeryLiftExistsClosed E.surgeryObstructionVanishesClosed))

end CobordismConcordanceTopologicalManifoldsFoundationCanonicalLaneLean
end HautevilleHouse