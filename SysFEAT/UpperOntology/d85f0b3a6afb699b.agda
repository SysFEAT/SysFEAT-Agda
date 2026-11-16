{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Categorization Family: 
A Categorization Family is a Family Meta-Class, based on their paritioning in Concept Category Meta-ClasssExample:The Systemic Level Family categorizes Operating Asset in Micro Operating Asset, , Mezzo Operating Asset and Macro Operating Asset.

Documentation : https://framework.sysfeat.com/pages/d85f0b3a6afb699b.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.d85f0b3a6afb699b where -- ========== CategorizationFamily

open import Agda.Primitive
open import SysFEAT.UpperOntology.e27801e868f17024 public -- MetaClass
open import SysFEAT.UpperOntology.220d23706ad71311 public -- CategorizationSchema

CategorizationFamily : CategorizationSchema
CategorizationFamily = ClassOfEntity

--  CategorizationFamily is subTypeOf MetaClass
st-d85f0b3a6afb699b-e27801e868f17024 : ∀ {u v} → CategorizationFamily (lsuc(lsuc(lsuc(lsuc( u))))) ⊏ₘₑ MetaClass v
st-d85f0b3a6afb699b-e27801e868f17024 = trivialPolySubTypeOfEntity

postulate -- CategorizationFamily is PowerInstanceOf Categorization Schema
  pi-0e0c0f766afb40db : CategorizationFamily ∷ₚₑ CategorizationSchema

-- == Relations =======================
