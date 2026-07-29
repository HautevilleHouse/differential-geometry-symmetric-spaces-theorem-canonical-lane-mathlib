import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesTheoremCanonicalLaneLean

structure SymmetricSpaceConnectionPackage where
  involution : Type
  fixedPointSet : Type
  geodesicSymmetric : Prop
  connectionTorsionFree : Prop
  curvatureParallel : Prop
  involutiveProperty : Prop
  uniqueGeodesicThroughPoint : Prop

structure SymmetricSpaceConnectionEvidence (C : SymmetricSpaceConnectionPackage) where
  geodesicSymmetricClosed : C.geodesicSymmetric
  connectionTorsionFreeClosed : C.connectionTorsionFree
  curvatureParallelClosed : C.curvatureParallel
  involutivePropertyClosed : C.involutiveProperty
  uniqueGeodesicThroughPointClosed : C.uniqueGeodesicThroughPoint

def SymmetricSpaceConnectionClosed (C : SymmetricSpaceConnectionPackage) : Prop :=
  C.geodesicSymmetric ∧ C.connectionTorsionFree ∧ C.curvatureParallel ∧ C.involutiveProperty ∧ C.uniqueGeodesicThroughPoint

theorem symmetric_space_connection_closed_from_evidence
    (C : SymmetricSpaceConnectionPackage) (E : SymmetricSpaceConnectionEvidence C) :
    SymmetricSpaceConnectionClosed C := by
  exact And.intro E.geodesicSymmetricClosed
    (And.intro E.connectionTorsionFreeClosed
      (And.intro E.curvatureParallelClosed
        (And.intro E.involutivePropertyClosed E.uniqueGeodesicThroughPointClosed)))

end DifferentialGeometrySymmetricSpacesTheoremCanonicalLaneLean
end HautevilleHouse