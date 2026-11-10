{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Asset Category Family: 
An Asset Category Family is a Category used to classify Asset Types.There are different kinds of Asset Category Family that applies only to certain subtypes of Asset Types.For instance:. Data Category applies to Information Assets.. Process Family applies to Resource Operating Assets.. Risk Type applies to Functional Assets.

Documentation : https://framework.sysfeat.com/pages/f69620466a0f9c2f.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.f69620466a0f9c2f where -- ========== AssetCategoryFamily

open import Agda.Primitive
open import SysFEAT.SOF.0eb97aff6855cd23 public -- ModelCategorizationBlock
open import SysFEAT.UpperOntology.220d23706ad71311 public -- CategorizationFamily

AssetCategoryFamily : ∀ (u : Level) → ClassOfMixedOrderEntity (lsuc u) 
AssetCategoryFamily u  = MixedOrderEntity (lsuc u) 


--  AssetCategoryFamily is subTypeOf ModelCategorizationBlock
st-f69620466a0f9c2f-0eb97aff6855cd23 : ∀ {u v} → AssetCategoryFamily u ⊏⋆ₑ ModelCategorizationBlock (lsuc(lsuc(lsuc( v))))
st-f69620466a0f9c2f-0eb97aff6855cd23 = trivialPolySubTypeOfEntity

--  AssetCategoryFamily is subTypeOf CategorizationFamily
st-f69620466a0f9c2f-220d23706ad71311 : ∀ {u v} → AssetCategoryFamily u ⊏⋆ₑ CategorizationFamily v
st-f69620466a0f9c2f-220d23706ad71311 = trivialPolySubTypeOfEntity


