{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Concept MetaClass: 
An Operating Asset is a kind of Asset Block which is architectured accross Systemic Levels.Any Operating Asset must be either a Micro Operating Asset, a Mezzo Operating Asset or a Macro Operating Asset.

Documentation : https://framework.sysfeat.com/pages/f88216e76af71a76.htm

External references:
  CycProject 2005 - At Least Nth-Order Class                       : https://framework.sysfeat.com/resources/external-references/CycProject-2005-Instances_of_instances_modeled_via_higher-order-classes.pdf#page=7
  Stanford Encyclopedia of Philosophy - Non-wellfounded set theory : https://plato.stanford.edu/entries/nonwellfounded-set-theory/#1
  Survey of Classification Modeling in Software & Systems Modeling : https://doi.org/10.1007/s10270-016-0521-5
  BORO Research - Unification of Types and Multi-Level Modeling    : https://research.borosolutions.net/kcl-2024-unification-types-multi-level-modeling-introduction/
  SysFEAT - TheoraticalFoundations- Multilevel Modeling            : https://framework.sysfeat.com/resources/framework/SysFEAT-TheoraticalFoundations-MultiLevelModeling.pdf

 - ============================== -}

{-# OPTIONS --safe --cubical --guardedness #-}

module SysFEAT.UpperOntology.f88216e76af71a76 where -- ========== ConceptMetaClass

open import Agda.Primitive
open import SysFEAT.UpperOntology.e27801e868f17024 public -- MetaClass and MetaRelation

-- ============================================================
-- I. The metaclass of all concept class of classes
-- ============================================================ 
ConceptMetaClass : (u : Level) → MetaClass (lsuc u)
ConceptMetaClass u = MetaClass u

-- ConceptMetaClass isSubTypeOf MetaClass
f88216f66af71ad7 : ∀ {u} →  (ConceptMetaClass u) ⊏⋆ₑ (MetaClass u)
f88216f66af71ad7 {u} = polySubTypeOf-identity

