{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Asset Category: 


Documentation : https://framework.sysfeat.com/pages/4efc6b346ae48db7.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.4efc6b346ae48db7 where -- ========== AssetCategory

open import Agda.Primitive
open import SysFEAT.UpperOntology.629565166ad71b60 public -- ConceptCategory
open import SysFEAT.SOF.0eb97aff6855cd23 public -- ModelCategorizationBlock

AssetCategory : ∀ (u : Level) → CategorizationFamily u 
AssetCategory u  = ConceptCategory u 


--  AssetCategory is subTypeOf ConceptCategory
st-4efc6b346ae48db7-629565166ad71b60 : ∀ {u v} → AssetCategory u ⊏⋆ₑ ConceptCategory v
st-4efc6b346ae48db7-629565166ad71b60 = trivialPolySubTypeOfEntity

--  AssetCategory is subTypeOf ModelCategorizationBlock
st-4efc6b346ae48db7-0eb97aff6855cd23 : ∀ {u v} → AssetCategory u ⊏⋆ₑ ModelCategorizationBlock (lsuc( v))
st-4efc6b346ae48db7-0eb97aff6855cd23 = trivialPolySubTypeOfEntity


