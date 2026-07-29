import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsFoundationCanonicalLaneLean

structure WhiteheadTorsionPackage where
  chainComplexData : Prop
  torsionInvariantDefined : Prop
  torsionVanishesForSimpleHomotopy : Prop
  torsionDeterminesConcordance : Prop

structure WhiteheadTorsionEvidence (W : WhiteheadTorsionPackage) where
  chainComplexDataClosed : W.chainComplexData
  torsionInvariantDefinedClosed : W.torsionInvariantDefined
  torsionVanishesForSimpleHomotopyClosed : W.torsionVanishesForSimpleHomotopy
  torsionDeterminesConcordanceClosed : W.torsionDeterminesConcordance

def WhiteheadTorsionClosed (W : WhiteheadTorsionPackage) : Prop :=
  W.chainComplexData ∧ W.torsionInvariantDefined ∧
  W.torsionVanishesForSimpleHomotopy ∧ W.torsionDeterminesConcordance

theorem whitehead_torsion_closed_from_evidence
    (W : WhiteheadTorsionPackage) (E : WhiteheadTorsionEvidence W) :
    WhiteheadTorsionClosed W := by
  exact And.intro E.chainComplexDataClosed
    (And.intro E.torsionInvariantDefinedClosed
      (And.intro E.torsionVanishesForSimpleHomotopyClosed
        E.torsionDeterminesConcordanceClosed))

end CobordismConcordanceTopologicalManifoldsFoundationCanonicalLaneLean
end HautevilleHouse