{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Asset Category: 
An Asset Category is a Concept Category used to categorise Asset Type.

Documentation : https://framework.sysfeat.com/pages/1a461b676afb4ec5.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.1a461b676afb4ec5 where -- ========== AssetCategory

open import Agda.Primitive
open import SysFEAT.SOF.0eb97aff6855cd23 public -- ModelCategorizationBlock
open import SysFEAT.UpperOntology.f882bd9d6afa3429 public -- ConceptCategory
open import SysFEAT.SOF.4efc6b346ae48db7 public -- AssetCategoryType

AssetCategory : ∀ (u : Level) → AssetCategoryType u
AssetCategory u = ConceptCategory u


--  AssetCategory is subTypeOf ModelCategorizationBlock
st-1a461b676afb4ec5-0eb97aff6855cd23 : ∀ {u v} → AssetCategory u ⊏⋆ₑ ModelCategorizationBlock (lsuc( v))
st-1a461b676afb4ec5-0eb97aff6855cd23 = trivialPolySubTypeOfEntity

--  AssetCategory is subTypeOf ConceptCategory
st-1a461b676afb4ec5-f882bd9d6afa3429 : ∀ {u v} → AssetCategory u ⊏⋆ₑ ConceptCategory v
st-1a461b676afb4ec5-f882bd9d6afa3429 = trivialPolySubTypeOfEntity

postulate -- AssetCategory is PowerInstanceOf Asset Category Type
  pi-1a461b996afb5068 : ∀ {u} → AssetCategory u  ∷ₚₑ AssetCategoryType u 

-- == Relations =======================
