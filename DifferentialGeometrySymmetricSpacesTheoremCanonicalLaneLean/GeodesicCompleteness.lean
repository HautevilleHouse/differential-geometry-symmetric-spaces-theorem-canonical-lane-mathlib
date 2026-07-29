import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesTheoremCanonicalLaneLean

structure GeodesicCompletenessPackage {G : SymmetricSpaceCurvaturePackage}
    {C : CartanDecompositionPackage G} {H : HolonomyReductionPackage C} where
  geodesicComplete : Prop
  exponentialMapSurjective : Prop
  noConjugatePoints : Prop

structure GeodesicCompletenessEvidence {G : SymmetricSpaceCurvaturePackage}
    {C : CartanDecompositionPackage G} {H : HolonomyReductionPackage C}
    (P : GeodesicCompletenessPackage H) where
  geodesicCompleteClosed : P.geodesicComplete
  exponentialMapSurjectiveClosed : P.exponentialMapSurjective
  noConjugatePointsClosed : P.noConjugatePoints

def GeodesicCompletenessClosed {G : SymmetricSpaceCurvaturePackage}
    {C : CartanDecompositionPackage G} {H : HolonomyReductionPackage C}
    (P : GeodesicCompletenessPackage H) : Prop :=
  P.geodesicComplete ∧ P.exponentialMapSurjective ∧ P.noConjugatePoints

theorem geodesic_completeness_closed_from_evidence
    {G : SymmetricSpaceCurvaturePackage} {C : CartanDecompositionPackage G}
    {H : HolonomyReductionPackage C} (P : GeodesicCompletenessPackage H)
    (E : GeodesicCompletenessEvidence P) : GeodesicCompletenessClosed P := by
  exact And.intro E.geodesicCompleteClosed
    (And.intro E.exponentialMapSurjectiveClosed E.noConjugatePointsClosed)

end DifferentialGeometrySymmetricSpacesTheoremCanonicalLaneLean
end HautevilleHouse