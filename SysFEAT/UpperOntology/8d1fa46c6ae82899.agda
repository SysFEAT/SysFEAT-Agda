{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Concept Class: 
A Concept Class is a  Class of Entity whose instances are classes that represent concepts, 
unlike Category of Entity which represents grouping of class of concepts within a Categorization Family.

Documentation : https://framework.sysfeat.com/pages/8d1fa46c6ae82899.htm

External references:
  Stanford Encyclopedia of Philosophy - Non-wellfounded set theory  : https://plato.stanford.edu/entries/nonwellfounded-set-theory/#1
  Survey of Classification Modeling in Software & Systems Modeling  : https://doi.org/10.1007/s10270-016-0521-5
  BORO Research - Unification of Types and Multi-Level Modeling     : https://research.borosolutions.net/kcl-2024-unification-types-multi-level-modeling-introduction/
  Multi-level conceptual modeling: Theory, language and application : https://ris.utwente.nl/ws/portalfiles/portal/359288948/1-s2.0-S0169023X21000215-main.pdf
  SysFEAT - TheoraticalFoundations- Multilevel Modeling             : https://framework.sysfeat.com/resources/framework/SysFEAT-TheoraticalFoundations-MultiLevelModeling.pdf

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.8d1fa46c6ae82899 where -- ============ ConceptClass

open import SysFEAT.UpperOntology.629565166ad71b60 public -- ConceptCategory

-- ============================================================
-- I. Concept definition
-- ============================================================ 
ConceptClass : (u : Level) → MetaClass u
ConceptClass u = ClassOfEntity u

-- Concept Class isSubTypeOf ClassOfEntity
8d1fbb286ae82e54 : ∀ {u} → (ConceptClass u) ⊏ₑ (ClassOfEntity u)
8d1fbb286ae82e54 {u} = polySubTypeOf-identity

-- ============================================================
-- II. Relation
-- ============================================================ 
-- -------------------------------------------------------------------------------------------- 
{- Concept Categorization: 
Concept Categorization is classification of Concept Classs by means of Category of Entity.
-}
conceptCategorization :  ∀ {u v} → Linkage (ConceptClass u) (ConceptCategory v)
conceptCategorization = make_subTypeOf "Concept Categorization" "Categorizing Category"
