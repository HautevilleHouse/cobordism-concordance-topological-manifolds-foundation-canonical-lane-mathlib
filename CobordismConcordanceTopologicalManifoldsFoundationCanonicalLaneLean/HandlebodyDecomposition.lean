import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordanceTopologicalManifoldsFoundationCanonicalLaneLean

structure HandlebodyDecompositionPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  handleSlides : Prop
  gluingMapsCompatible : Prop
  decompositionExists : Prop

structure HandlebodyDecompositionEvidence (H : HandlebodyDecompositionPackage) where
  handleSlidesClosed : H.handleSlides
  gluingMapsCompatibleClosed : H.gluingMapsCompatible
  decompositionExistsClosed : H.decompositionExists

def HandlebodyDecompositionClosed (H : HandlebodyDecompositionPackage) : Prop :=
  H.handleSlides ∧ H.gluingMapsCompatible ∧ H.decompositionExists

theorem handlebody_decomposition_closed_from_evidence
    (H : HandlebodyDecompositionPackage) (E : HandlebodyDecompositionEvidence H) :
    HandlebodyDecompositionClosed H := by
  exact And.intro E.handleSlidesClosed
    (And.intro E.gluingMapsCompatibleClosed E.decompositionExistsClosed)

end CobordismConcordanceTopologicalManifoldsFoundationCanonicalLaneLean
end HautevilleHouse