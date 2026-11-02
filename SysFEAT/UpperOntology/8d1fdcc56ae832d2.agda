{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Family Meta-Class: 

Documentation : https://framework.sysfeat.com/pages/8d1fdcc56ae832d2.htm

External references:
  Stanford Encyclopedia of Philosophy - Non-wellfounded set theory  : https://plato.stanford.edu/entries/nonwellfounded-set-theory/#1
  Survey of Classification Modeling in Software & Systems Modeling  : https://doi.org/10.1007/s10270-016-0521-5
  BORO Research - Unification of Types and Multi-Level Modeling     : https://research.borosolutions.net/kcl-2024-unification-types-multi-level-modeling-introduction/
  Multi-level conceptual modeling: Theory, language and application : https://ris.utwente.nl/ws/portalfiles/portal/359288948/1-s2.0-S0169023X21000215-main.pdf
  SysFEAT - TheoraticalFoundations- Multilevel Modeling             : https://framework.sysfeat.com/resources/framework/SysFEAT-TheoraticalFoundations-MultiLevelModeling.pdf

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.8d1fdcc56ae832d2 where -- ============ FamilyMetaClass

open import SysFEAT.UpperOntology.e27801e868f17024 public -- MetaClass and metaRelation

-- ============================================================
-- I. Concept definition
-- ============================================================ 
FamilyMetaClass : (u : Level) → Set (lsuc (lsuc (lsuc u)))
FamilyMetaClass u = MetaClass u

-- FamilyMetaClass isSubTypeOf MetaClass
8d1fdce76ae8335d : ∀ {u} →  (FamilyMetaClass u) ⊏⋆ₑ (MetaClass u)
8d1fdce76ae8335d {u} = polySubTypeOf-identity


