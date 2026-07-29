import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManifoldsMetricsEspeciallyRiemannianLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

def ConstrainedTheoremClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_theorem_closure (A : AdmissibleClass) :
    ConstrainedTheoremClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)
  where
    bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
      A.gateWitness
    gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
      A.gateWitness

end ManifoldsMetricsEspeciallyRiemannianLemmaCanonicalLaneLean
end HautevilleHouse