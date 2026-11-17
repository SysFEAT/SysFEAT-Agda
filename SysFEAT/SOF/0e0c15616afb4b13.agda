{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Asset Category Family: 


Documentation : https://framework.sysfeat.com/pages/0e0c15616afb4b13.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.0e0c15616afb4b13 where -- ========== AssetCategoryFamily

open import Agda.Primitive
open import SysFEAT.UpperOntology.d85f0b3a6afb699b public -- CategorizationFamily
open import SysFEAT.SOF.0eb97aff6855cd23 public -- ModelCategorizationBlock
open import SysFEAT.SOF.f69620466a0f9c2f public -- AssetCategorizationSchema

AssetCategoryFamily : AssetCategorizationSchema
AssetCategoryFamily = CategorizationFamily

--  AssetCategoryFamily is subTypeOf CategorizationFamily
st-0e0c15616afb4b13-d85f0b3a6afb699b : ∀ {u v} → AssetCategoryFamily u ⊏⋆ₑ CategorizationFamily v
st-0e0c15616afb4b13-d85f0b3a6afb699b = trivialPolySubTypeOfEntity

--  AssetCategoryFamily is subTypeOf ModelCategorizationBlock
st-0e0c15616afb4b13-0eb97aff6855cd23 : ∀ {u v} → AssetCategoryFamily u ⊏⋆ₑ ModelCategorizationBlock (lsuc(lsuc( v)))
st-0e0c15616afb4b13-0eb97aff6855cd23 = trivialPolySubTypeOfEntity

postulate -- AssetCategoryFamily is PowerInstanceOf Asset Categorization Schema
  pi-0e0c16ae6afb4be7 : AssetCategoryFamily ∷ₚₑ AssetCategorizationSchema

-- == Relations =======================
