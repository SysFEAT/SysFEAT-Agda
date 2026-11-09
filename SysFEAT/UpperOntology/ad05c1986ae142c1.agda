{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Enumerated Family: 
An Enumerated Family is a family of Concept Classes that enumerates its classified Concept Classes.

Documentation : https://framework.sysfeat.com/pages/ad05c1986ae142c1.htm

External references:
   ISO 15926 - EnumeratedSetOfClass                                   : https://15926.blog/topics/data-model/index.htm#EnumeratedSetOfClass
   Multi-level conceptual modeling: Theory, language and application  : https://ris.utwente.nl/ws/portalfiles/portal/359288948/1-s2.0-S0169023X21000215-main.pdf
   BORO Research - Unification of Types and Multi-Level Modeling      : https://research.borosolutions.net/kcl-2024-unification-types-multi-level-modeling-introduction/
   SysFEAT - TheoraticalFoundations-MultiLevelModeling.pdf            : https://www.framework.sysfeat.com/resources/framework/SysFEAT-TheoraticalFoundations-MultiLevelModeling.pdf

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.ad05c1986ae142c1 where -- ========== EnumeratedFamily

open import Agda.Primitive
open import SysFEAT.UpperOntology.7e34d3b16af13983 public -- FamilyMetaClass
open import SysFEAT.UpperOntology.8d1fa46c6ae82899 public -- ConceptClass


-- ============================================================
-- I. Concept declaration
-- ============================================================
EnumeratedFamily : ∀ (u : Level) → Set (lsuc (lsuc (lsuc u)))
EnumeratedFamily u = FamilyMetaClass u

-- EnumeratedFamily is subTypeOf MixedOrderMetaClass
7fc6b2ef6ae04264 : ∀ {u v} → (EnumeratedFamily u) ⊏⋆ₑ (FamilyMetaClass v)
7fc6b2ef6ae04264 = trivialPolySubTypeOfEntity


-- ============================================================
-- II. Relation declaration
-- ============================================================
{- The set of Class of Entities that are members of an Enumerated Family. -}
memberClass : ∀ {u v} → Linkage (EnumeratedFamily u) (ConceptClass v)
memberClass = make_classOfRelation "Partitioning" "partitionedClass"

