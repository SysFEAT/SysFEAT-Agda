{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Categorization Scheme:
Categorization Schema is a Family Meta-Class, based on the paritioning of Concept Classes in Concept Categorys.
Example:
The Systemic Level Family categorizes Operating Asset in Micro Operating Asset, , Mezzo Operating Asset and Macro Operating Asset.

Documentation : https://framework.sysfeat.com/pages/220d23706ad71311.htm

External references:
   Multi-level conceptual modeling: Theory, language and application  : https://ris.utwente.nl/ws/portalfiles/portal/359288948/1-s2.0-S0169023X21000215-main.pdf
   BORO Research - Unification of Types and Multi-Level Modeling      : https://research.borosolutions.net/kcl-2024-unification-types-multi-level-modeling-introduction/
   SysFEAT - TheoraticalFoundations-MultiLevelModeling.pdf            : https://www.framework.sysfeat.com/resources/framework/SysFEAT-TheoraticalFoundations-MultiLevelModeling.pdf

 - ============================== -}

{-# OPTIONS --safe --cubical --guardedness #-}

module SysFEAT.UpperOntology.220d23706ad71311 where -- ========== CategorizationSchema

open import Agda.Primitive
open import SysFEAT.UpperOntology.7e34d3b16af13983 public -- FamilyMetaClass

-- ============================================================
-- I. Concept declaration
-- ============================================================ 

CategorizationSchema : ∀ (u : Level) → MetaClass (lsuc(lsuc u))
CategorizationSchema u = FamilyMetaClass u

--  CategorizationSchema is subTypeOf FamilyMetaClass
7e34dd1a6af13b29 : ∀ {u v} → (CategorizationSchema u) ⊏⋆ₑ (FamilyMetaClass v)
7e34dd1a6af13b29 = trivialPolySubTypeOfEntity

