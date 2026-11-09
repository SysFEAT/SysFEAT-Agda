{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Category of Entity: 
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

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.629565166ad71b60 where -- ============ ConceptCategory

open import SysFEAT.UpperOntology.e8b2f7c7673d36d1 public -- Entity and Relation
open import SysFEAT.UpperOntology.220d23706ad71311 public -- CategorizationFamily

-- ============================================================
-- I. Concept definition
-- ============================================================ 
ConceptCategory : (u : Level) → CategorizationFamily u
ConceptCategory u = ClassOfEntity u

-- ConceptCategory isSubTypeOf ClassOfEntity
800b81396ae83012 : ∀ {u} → (ConceptCategory u) ⊏ₑ (ClassOfEntity u)
800b81396ae83012 {u} = polySubTypeOf-identity

-- ============================================================
-- II. Relation
-- ============================================================ 
{- Categorization Family: the Categorization Family that a Concept Category belongs to -}
parentFamily : ∀ {u v} →  Linkage (ConceptCategory u) (CategorizationFamily v)
parentFamily = make_instanceOf "Category Classification" "Parent Family"

8d1fa37b6ae82572 : ∀ {u v} → parentFamily {u} {u ⊔ v} ⊏⋆ᵣ instanceOfEntity {lsuc u} {lsuc (u ⊔ v)}
8d1fa37b6ae82572 {u} {v} =
  polySubTypeOfRel-fromExtensionMap
    {subRel   = parentFamily {u} {u ⊔ v}}
    {superRel = instanceOfEntity {lsuc u} {lsuc (u ⊔ v)}}
    (λ w → w)



