import SymmetricSpacesAdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesTheoremCanonicalLaneLean

structure HolonomyAlgebraPackage where
  holonomyGroupReductive : Prop
  holonomyRepresentationIrreducible : Prop
  curvatureOperatorInHolonomy : Prop
  AmbroseSingerCondition : Prop
  restrictedHolonomyIsotropy : Prop

structure HolonomyAlgebraEvidence (H : HolonomyAlgebraPackage) where
  holonomyGroupReductiveClosed : H.holonomyGroupReductive
  holonomyRepresentationIrreducibleClosed : H.holonomyRepresentationIrreducible
  curvatureOperatorInHolonomyClosed : H.curvatureOperatorInHolonomy
  AmbroseSingerConditionClosed : H.AmbroseSingerCondition
  restrictedHolonomyIsotropyClosed : H.restrictedHolonomyIsotropy

def HolonomyAlgebraClosed (H : HolonomyAlgebraPackage) : Prop :=
  H.holonomyGroupReductive ∧ H.holonomyRepresentationIrreducible ∧
  H.curvatureOperatorInHolonomy ∧ H.AmbroseSingerCondition ∧
  H.restrictedHolonomyIsotropy

theorem holonomy_algebra_closed_from_evidence
    (H : HolonomyAlgebraPackage) (E : HolonomyAlgebraEvidence H) :
    HolonomyAlgebraClosed H := by
  exact And.intro E.holonomyGroupReductiveClosed
    (And.intro E.holonomyRepresentationIrreducibleClosed
      (And.intro E.curvatureOperatorInHolonomyClosed
        (And.intro E.AmbroseSingerConditionClosed
          E.restrictedHolonomyIsotropyClosed)))

end DifferentialGeometrySymmetricSpacesTheoremCanonicalLaneLean
end HautevilleHouse