import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesTheoremCanonicalLaneLean

structure HolonomyReductionPackage where
  holonomyGroup : Type
  holonomyAlgebra : Type
  deRhamDecomposition : Prop
  symmetricSpaceHolonomy : Prop
  irreducibilityClassification : Prop

structure HolonomyReductionEvidence (H : HolonomyReductionPackage) where
  deRhamDecompositionClosed : H.deRhamDecomposition
  symmetricSpaceHolonomyClosed : H.symmetricSpaceHolonomy
  irreducibilityClassificationClosed : H.irreducibilityClassification

def HolonomyReductionClosed (H : HolonomyReductionPackage) : Prop :=
  H.deRhamDecomposition ∧ H.symmetricSpaceHolonomy ∧ H.irreducibilityClassification

theorem holonomy_reduction_closed_from_evidence
    (H : HolonomyReductionPackage) (E : HolonomyReductionEvidence H) :
    HolonomyReductionClosed H := by
  exact And.intro E.deRhamDecompositionClosed
    (And.intro E.symmetricSpaceHolonomyClosed E.irreducibilityClassificationClosed)

end DifferentialGeometrySymmetricSpacesTheoremCanonicalLaneLean
end HautevilleHouse