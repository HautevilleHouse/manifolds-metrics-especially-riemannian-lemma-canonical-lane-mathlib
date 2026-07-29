import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManifoldsMetricsEspeciallyRiemannianLemmaCanonicalLaneLean

structure RiemannianManifold where
  carrier : Type
  metric : carrier → carrier → ℝ
  positiveDefinite : ∀ x y, metric x y ≥ 0 ∧ (metric x y = 0 ↔ x = y)
  symmetric : ∀ x y, metric x y = metric y x
  triangleInequality : ∀ x y z, metric x z ≤ metric x y + metric y z
  complete : Prop

defaultRiemannianManifold : RiemannianManifold := {
  carrier := Unit
, metric := λ _ _ => 0
, positiveDefinite := λ x y => by
    simp
, symmetric := λ x y => rfl
, triangleInequality := λ x y z => by
    nlinarith
, complete := True
}

end ManifoldsMetricsEspeciallyRiemannianLemmaCanonicalLaneLean
end HautevilleHouse
