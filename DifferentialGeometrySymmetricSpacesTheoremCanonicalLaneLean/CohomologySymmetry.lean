import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesTheoremCanonicalLaneLean

structure CohomologySymmetryPackage where
  deRhamCohomology : Type
  invariantForms : Prop
  primitiveCohomology : Prop
  hardLefschetz : Prop
  hodgeDecomposition : Prop

structure CohomologySymmetryEvidence (C : CohomologySymmetryPackage) where
  invariantFormsClosed : C.invariantForms
  primitiveCohomologyClosed : C.primitiveCohomology
  hardLefschetzClosed : C.hardLefschetz
  hodgeDecompositionClosed : C.hodgeDecomposition

def CohomologySymmetryClosed (C : CohomologySymmetryPackage) : Prop :=
  C.invariantForms ∧ C.primitiveCohomology ∧ C.hardLefschetz ∧ C.hodgeDecomposition

theorem cohomology_symmetry_closed_from_evidence
    (C : CohomologySymmetryPackage) (E : CohomologySymmetryEvidence C) :
    CohomologySymmetryClosed C := by
  exact And.intro E.invariantFormsClosed
    (And.intro E.primitiveCohomologyClosed
      (And.intro E.hardLefschetzClosed E.hodgeDecompositionClosed))

end DifferentialGeometrySymmetricSpacesTheoremCanonicalLaneLean
end HautevilleHouse