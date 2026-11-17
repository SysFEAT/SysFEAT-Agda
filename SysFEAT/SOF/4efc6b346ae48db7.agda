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
open import SysFEAT.UpperOntology.629565166ad71b60 public -- ConceptCategoryType
open import SysFEAT.SOF.0eb97aff6855cd23 public -- ModelCategorizationBlock
open import SysFEAT.SOF.f69620466a0f9c2f public -- AssetCategorizationSchema

AssetCategoryType : ∀ (u : Level) → MetaClass (lsuc u)
AssetCategoryType u = MetaClass u


--  AssetCategoryType is subTypeOf ConceptCategoryType
st-4efc6b346ae48db7-629565166ad71b60 : ∀ {u v} → AssetCategoryType u ⊏⋆ₑ ConceptCategoryType v
st-4efc6b346ae48db7-629565166ad71b60 = trivialPolySubTypeOfEntity

--  AssetCategoryType is subTypeOf ModelCategorizationBlock
st-4efc6b346ae48db7-0eb97aff6855cd23 : ∀ {u v} → AssetCategoryType u ⊏⋆ₑ ModelCategorizationBlock (lsuc(lsuc( v)))
st-4efc6b346ae48db7-0eb97aff6855cd23 = trivialPolySubTypeOfEntity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Parent Asset Scheme: -}
parentAssetScheme : ∀ {u v} →  Linkage (AssetCategoryType u) (AssetCategorizationSchema v)
parentAssetScheme = make_instanceOf "Parent Asset Scheme" "Parent Asset Scheme"

postulate -- parentAssetScheme is subTypeOf parentScheme
  st-8d1fa3b46ae827f6-890a8a9e6ae8578e  : ∀ {u v} → parentAssetScheme {u} {u ⊔ v}  ⊏⋆ᵣ  parentScheme {u} {u ⊔ v}

-- -------------------------------------------------------------------------------------------- 
{- Parent Asset Category: -}
parentAssetCategory : ∀ {u v} →  Linkage (AssetCategoryType u) (AssetCategoryType v)
parentAssetCategory = make_subTypeOf "Parent Asset Category" "Parent Asset Category"

postulate -- parentAssetCategory is subTypeOf parentCategorization
  st-38f63c776aec1911-7ca47f996ae858c7  : ∀ {u v} → parentAssetCategory {u} {v}  ⊏⋆ᵣ  parentCategorization {u} {v}
