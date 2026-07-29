import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesTheoremCanonicalLaneLean

structure CartanDecompositionPackage (G : SymmetricSpaceCurvaturePackage) where
  lieAlgebra : Type u
  involution : lieAlgebra → lieAlgebra
  fixedSet : Prop
  decomposition : Prop
  orthogonalComplement : Prop

structure CartanDecompositionEvidence {G : SymmetricSpaceCurvaturePackage}
    (C : CartanDecompositionPackage G) where
  fixedSetClosed : C.fixedSet
  decompositionClosed : C.decomposition
  orthogonalComplementClosed : C.orthogonalComplement

def CartanDecompositionClosed {G : SymmetricSpaceCurvaturePackage}
    (C : CartanDecompositionPackage G) : Prop :=
  C.fixedSet ∧ C.decomposition ∧ C.orthogonalComplement

theorem cartan_decomposition_closed_from_evidence
    {G : SymmetricSpaceCurvaturePackage} (C : CartanDecompositionPackage G)
    (E : CartanDecompositionEvidence C) : CartanDecompositionClosed C := by
  exact And.intro E.fixedSetClosed
    (And.intro E.decompositionClosed E.orthogonalComplementClosed)

end DifferentialGeometrySymmetricSpacesTheoremCanonicalLaneLean
end HautevilleHouse