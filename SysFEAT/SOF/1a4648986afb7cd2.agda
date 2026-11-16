{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Policy Category: 
A Policy Category is a classification of policies. In regulations, it represents sections of the law.

Documentation : https://framework.sysfeat.com/pages/1a4648986afb7cd2.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.1a4648986afb7cd2 where -- ========== PolicyCategory

open import Agda.Primitive
open import SysFEAT.UpperOntology.f882bd9d6afa3429 public -- ConceptCategory
open import SysFEAT.SOF.7e3474f06af36c2f public -- PolicyCategoryType

PolicyCategory : PolicyCategoryType
PolicyCategory = ConceptCategory

--  PolicyCategory is subTypeOf ConceptCategory
st-1a4648986afb7cd2-f882bd9d6afa3429 : ∀ {u v} → PolicyCategory u ⊏⋆ₑ ConceptCategory v
st-1a4648986afb7cd2-f882bd9d6afa3429 = trivialPolySubTypeOfEntity

postulate -- PolicyCategory is PowerInstanceOf Policy Category Type
  pi-1a4648bc6afb7d7c : PolicyCategory ∷ₚₑ PolicyCategoryType

-- == Relations =======================
