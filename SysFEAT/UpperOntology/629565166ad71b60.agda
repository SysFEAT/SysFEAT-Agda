{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Concept Categoru Meta-Class: 
A Concept Category is a Class of Entity, typically used to group or organize collections of Class of Entitys that share some structural, relational, or definitional property. 
Micro Operating Asset, Mezzo Operating Asset and Macro Operating Asset are categorization of Operating Assets.

Documentation : https://framework.sysfeat.com/pages/629565166ad71b60.htm

External references:
  CycProject 2005 - At Least Nth-Order Class                        : https://framework.sysfeat.com/resources/external-references/CycProject-2005-Instances_of_instances_modeled_via_higher-order-classes.pdf#page=7
  Stanford Encyclopedia of Philosophy - Non-wellfounded set theory  : https://plato.stanford.edu/entries/nonwellfounded-set-theory/#1
  Survey of Classification Modeling in Software & Systems Modeling  : https://doi.org/10.1007/s10270-016-0521-5
  BORO Research - Unification of Types and Multi-Level Modeling     : https://research.borosolutions.net/kcl-2024-unification-types-multi-level-modeling-introduction/
  Multi-level conceptual modeling: Theory, language and application : https://ris.utwente.nl/ws/portalfiles/portal/359288948/1-s2.0-S0169023X21000215-main.pdf
  SysFEAT - TheoraticalFoundations- Multilevel Modeling             : https://framework.sysfeat.com/resources/framework/SysFEAT-TheoraticalFoundations-MultiLevelModeling.pdf

 - ============================== -}

{-# OPTIONS --safe --cubical --guardedness #-}

module SysFEAT.UpperOntology.629565166ad71b60 where -- ============ ConceptCategoryType

open import SysFEAT.UpperOntology.e8b2f7c7673d36d1 public -- Entity and Relation
open import SysFEAT.UpperOntology.220d23706ad71311 public -- CategorizationSchema

-- ============================================================
-- I. Concept definition
-- ============================================================ 
ConceptCategoryType : (u : Level) → MetaClass (lsuc u)
ConceptCategoryType u = MetaClass u

-- ConceptCategoryType isSubTypeOf MetaClass
d85feb856afa6099 : ∀ {u} → (ConceptCategoryType u) ⊏ₑ (MetaClass u)
d85feb856afa6099 {u} = polySubTypeOf-identity

-- ============================================================
-- II. Relation
-- ============================================================ 
{- Parent Scheme: the Categorization Family that a Concept Category Type belongs to -}
parentScheme : ∀ {u v} →  Linkage (ConceptCategoryType u) (CategorizationSchema v)
parentScheme = make_instanceOf "Category Classification" "Parent Scheme"

8d1fa37b6ae82572 : ∀ {u v} → parentScheme {u} {u ⊔ v} ⊏⋆ᵣ instanceOfEntity {lsuc(lsuc u)} {lsuc(lsuc (u ⊔ v))}
8d1fa37b6ae82572 {u} {v} =
  polySubTypeOfRel-fromExtensionMap
    {subRel   = parentScheme {u} {u ⊔ v}}
    {superRel = instanceOfEntity {lsuc(lsuc u)} {lsuc(lsuc (u ⊔ v))}}
    (λ w → w)


{- Super Concept Category Type. -}
parentCategorization : ∀ {u v} →  Linkage (ConceptCategoryType u) (ConceptCategoryType v)
parentCategorization = make_subTypeOf "Parent Categorization" "Parent Category"

-- parentCategorization isSubTypeOf polySubTypeOfEntity
800b80a26ae82d7f : ∀ {u v} → parentCategorization {u} {v} ⊏⋆ᵣ polySubTypeOfEntity {lsuc(u)} {lsuc(v)} 
800b80a26ae82d7f {u} {v} =
  polySubTypeOfRel-fromExtensionMap
    {subRel   = parentCategorization {u} {v} }
    {superRel = polySubTypeOfEntity {lsuc(u)} {lsuc(v)} }
    (λ w → w)


