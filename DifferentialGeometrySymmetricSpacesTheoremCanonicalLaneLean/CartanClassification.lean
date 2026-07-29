import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesTheoremCanonicalLaneLean

structure CartanClassification where
  symmetricSpaceType : Type u
  irreducibleComponents : List (Type v)
  rank : Nat
  dualPairing : Prop
  classificationComplete : Prop

structure CartanClassificationEvidence (C : CartanClassification) where
  classificationCompleteClosed : C.classificationComplete

def CartanClassificationClosed (C : CartanClassification) : Prop :=
  C.classificationComplete

theorem cartan_classification_closed_from_evidence (C : CartanClassification) (E : CartanClassificationEvidence C) :
    CartanClassificationClosed C := by
  exact E.classificationCompleteClosed

end DifferentialGeometrySymmetricSpacesTheoremCanonicalLaneLean
end HautevilleHouse
