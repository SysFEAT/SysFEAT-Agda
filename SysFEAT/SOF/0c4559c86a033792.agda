{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Operating Asset: 
An Operating Asset is a kind of Asset Block which is architectured accross Systemic Levels.Any Operating Asset must be either a Micro Operating Asset, a Mezzo Operating Asset or a Macro Operating Asset.

Documentation : https://framework.sysfeat.com/pages/0c4559c86a033792.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.0c4559c86a033792 where -- ========== OperatingAsset

open import Agda.Primitive
open import SysFEAT.SOF.0eb95f356855bf94 public -- AssetBlock
open import SysFEAT.UpperOntology.6ef572f868f1366f public -- MixedOrderEntity
open import SysFEAT.SOF.855a946b6ae392c1 public -- SystemicLevelFamily
open import SysFEAT.SOF.5d5461906ae84234 public -- ConceptualizationLevel
open import SysFEAT.SOF.e83018fb6ae53018 public -- OperatingAssetCategory
open import SysFEAT.SOF.8a37921c6ae72add public -- OperatingAssetCategorization

OperatingAsset : ∀ (u : Level) → ClassOfMixedOrderEntity u 
OperatingAsset u  = MixedOrderEntity u 


--  OperatingAsset is subTypeOf AssetBlock
st-0c4559c86a033792-0eb95f356855bf94 : ∀ {u v} → OperatingAsset u ⊏⋆ₑ AssetBlock v
st-0c4559c86a033792-0eb95f356855bf94 = trivialPolySubTypeOfEntity

--  OperatingAsset is subTypeOf MixedOrderEntity
st-0c4559c86a033792-6ef572f868f1366f : ∀ {u v} → OperatingAsset u ⊏⋆ₑ MixedOrderEntity v
st-0c4559c86a033792-6ef572f868f1366f = trivialPolySubTypeOfEntity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Operating Asset Category: -}
operatingAssetCategory : ∀ {u v} →  Linkage (OperatingAsset u) (OperatingAssetCategory v)
operatingAssetCategory = make_subTypeOf "Operating Asset Category" "Operating Asset Category"


-- -------------------------------------------------------------------------------------------- 
{- Operating Asset Categorization: -}
operatingAssetCategorization : ∀ {u v} →  Linkage (OperatingAsset u) (OperatingAssetCategorization v)
operatingAssetCategorization = make_Relation "Operating Asset Categorization" "Operating Asset Categorization"

