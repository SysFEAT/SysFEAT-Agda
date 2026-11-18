{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Asset Category Type: 
An 

Documentation : https://framework.sysfeat.com/pages/4efc6b346ae48db7.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.4efc6b346ae48db7 where -- ========== AssetCategoryType

open import Agda.Primitive
open import SysFEAT.SOF.0eb97aff6855cd23 public -- ModelCategorizationBlock
open import SysFEAT.UpperOntology.629565166ad71b60 public -- ConceptCategoryType

AssetCategoryType : ∀ (u : Level) → MetaClass (lsuc u)
AssetCategoryType u = MetaClass u


--  AssetCategoryType is subTypeOf ModelCategorizationBlock
st-4efc6b346ae48db7-0eb97aff6855cd23 : ∀ {u v} → AssetCategoryType u ⊏⋆ₑ ModelCategorizationBlock (lsuc(lsuc( v)))
st-4efc6b346ae48db7-0eb97aff6855cd23 = trivialPolySubTypeOfEntity

--  AssetCategoryType is subTypeOf ConceptCategoryType
st-4efc6b346ae48db7-629565166ad71b60 : ∀ {u v} → AssetCategoryType u ⊏⋆ₑ ConceptCategoryType v
st-4efc6b346ae48db7-629565166ad71b60 = trivialPolySubTypeOfEntity


