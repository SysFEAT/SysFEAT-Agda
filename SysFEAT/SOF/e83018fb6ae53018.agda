{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Operating Asset Category: 


Documentation : https://framework.sysfeat.com/pages/e83018fb6ae53018.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.e83018fb6ae53018 where -- ========== OperatingAssetCategory

open import Agda.Primitive
open import SysFEAT.SOF.4efc6b346ae48db7 public -- AssetCategory
open import SysFEAT.SOF.8a37921c6ae72add public -- OperatingAssetCategorization

OperatingAssetCategory : ∀ (u : Level) → CategorizationFamily u 
OperatingAssetCategory u  = ConceptCategory u 


--  OperatingAssetCategory is subTypeOf AssetCategory
st-e83018fb6ae53018-4efc6b346ae48db7 : ∀ {u v} → OperatingAssetCategory u ⊏⋆ₑ AssetCategory v
st-e83018fb6ae53018-4efc6b346ae48db7 = trivialPolySubTypeOfEntity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Family: -}
family : ∀ {u v} →  Linkage (OperatingAssetCategory u) (OperatingAssetCategorization v)
family = make_instanceOf "Family" "Family"

postulate -- family is subTypeOf assetCategoryFamily
  st-5d545e516ae83f24-8d1fa3b46ae827f6  : ∀ {u v} → family {u} {u ⊔ v}  ⊏⋆ᵣ  assetCategoryFamily {u} {u ⊔ v}

-- -------------------------------------------------------------------------------------------- 
{- Parent Operating Category: -}
parentOperatingCategory : ∀ {u v} →  Linkage (OperatingAssetCategory u) (OperatingAssetCategory v)
parentOperatingCategory = make_subTypeOf "Parent Operating Category" "Parent Operating Category"

postulate -- parentOperatingCategory is subTypeOf parentAssetCategory
  st-800b817a6ae83115-38f63c776aec1911  : ∀ {u v} → parentOperatingCategory {u} {v}  ⊏⋆ᵣ  parentAssetCategory {u} {v}
