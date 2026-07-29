import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesTheoremCanonicalLaneLean

structure ClassificationTheoremPackage {G : SymmetricSpaceCurvaturePackage}
    {C : CartanDecompositionPackage G} {H : HolonomyReductionPackage C}
    {P : GeodesicCompletenessPackage H} where
  irreducibleClassification : Prop
  symmetricSpaceListed : Prop
  isometryClassificationComplete : Prop

structure ClassificationTheoremEvidence {G : SymmetricSpaceCurvaturePackage}
    {C : CartanDecompositionPackage G} {H : HolonomyReductionPackage C}
    {P : GeodesicCompletenessPackage H} (T : ClassificationTheoremPackage P) where
  irreducibleClassificationClosed : T.irreducibleClassification
  symmetricSpaceListedClosed : T.symmetricSpaceListed
  isometryClassificationCompleteClosed : T.isometryClassificationComplete

def ClassificationTheoremClosed {G : SymmetricSpaceCurvaturePackage}
    {C : CartanDecompositionPackage G} {H : HolonomyReductionPackage C}
    {P : GeodesicCompletenessPackage H} (T : ClassificationTheoremPackage P) : Prop :=
  T.irreducibleClassification ∧ T.symmetricSpaceListed ∧ T.isometryClassificationComplete

theorem classification_theorem_closed_from_evidence
    {G : SymmetricSpaceCurvaturePackage} {C : CartanDecompositionPackage G}
    {H : HolonomyReductionPackage C} {P : GeodesicCompletenessPackage H}
    (T : ClassificationTheoremPackage P) (E : ClassificationTheoremEvidence T) :
    ClassificationTheoremClosed T := by
  exact And.intro E.irreducibleClassificationClosed
    (And.intro E.symmetricSpaceListedClosed E.isometryClassificationCompleteClosed)

end DifferentialGeometrySymmetricSpacesTheoremCanonicalLaneLean
end HautevilleHouse