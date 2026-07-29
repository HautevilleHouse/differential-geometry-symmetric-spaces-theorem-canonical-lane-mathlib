import SymmetricSpacesAdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesTheoremCanonicalLaneLean

structure SymmetricSpacesClassificationPackage where
  classificationTheorem : Prop
  typeListComplete : Prop
  exceptionalSymmetricSpacesCatalogued : Prop
  symmetricSpaceIrreducibleDecomposition : Prop
  symmetricSpaceRankRelation : Prop

structure SymmetricSpacesClassificationEvidence (C : SymmetricSpacesClassificationPackage) where
  classificationTheoremClosed : C.classificationTheorem
  typeListCompleteClosed : C.typeListComplete
  exceptionalSymmetricSpacesCataloguedClosed : C.exceptionalSymmetricSpacesCatalogued
  symmetricSpaceIrreducibleDecompositionClosed : C.symmetricSpaceIrreducibleDecomposition
  symmetricSpaceRankRelationClosed : C.symmetricSpaceRankRelation

def SymmetricSpacesClassificationClosed (C : SymmetricSpacesClassificationPackage) : Prop :=
  C.classificationTheorem ∧ C.typeListComplete ∧
  C.exceptionalSymmetricSpacesCatalogued ∧
  C.symmetricSpaceIrreducibleDecomposition ∧
  C.symmetricSpaceRankRelation

theorem symmetric_spaces_classification_closed_from_evidence
    (C : SymmetricSpacesClassificationPackage) (E : SymmetricSpacesClassificationEvidence C) :
    SymmetricSpacesClassificationClosed C := by
  exact And.intro E.classificationTheoremClosed
    (And.intro E.typeListCompleteClosed
      (And.intro E.exceptionalSymmetricSpacesCataloguedClosed
        (And.intro E.symmetricSpaceIrreducibleDecompositionClosed
          E.symmetricSpaceRankRelationClosed)))

end DifferentialGeometrySymmetricSpacesTheoremCanonicalLaneLean
end HautevilleHouse