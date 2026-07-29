import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesTheoremCanonicalLaneLean

structure SymmetricSpaceClassificationPackage where
  symmetricSpaceType : Type
  isIrreducible : Prop
  isOfCompactType : Prop
  isOfNonCompactType : Prop
  isOfEuclideanType : Prop
  classificationComplete : Prop

structure SymmetricSpaceClassificationEvidence (C : SymmetricSpaceClassificationPackage) where
  isIrreducibleClosed : C.isIrreducible
  isOfCompactTypeClosed : C.isOfCompactType
  isOfNonCompactTypeClosed : C.isOfNonCompactType
  isOfEuclideanTypeClosed : C.isOfEuclideanType
  classificationCompleteClosed : C.classificationComplete

def SymmetricSpaceClassificationClosed (C : SymmetricSpaceClassificationPackage) : Prop :=
  C.isIrreducible ∧ C.isOfCompactType ∧ C.isOfNonCompactType ∧ C.isOfEuclideanType ∧ C.classificationComplete

theorem symmetric_space_classification_closed_from_evidence
    (C : SymmetricSpaceClassificationPackage) (E : SymmetricSpaceClassificationEvidence C) :
    SymmetricSpaceClassificationClosed C := by
  exact And.intro E.isIrreducibleClosed
    (And.intro E.isOfCompactTypeClosed
      (And.intro E.isOfNonCompactTypeClosed
        (And.intro E.isOfEuclideanTypeClosed E.classificationCompleteClosed)))

end DifferentialGeometrySymmetricSpacesTheoremCanonicalLaneLean
end HautevilleHouse