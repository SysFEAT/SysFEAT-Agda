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
open import SysFEAT.UpperOntology.629565166ad71b60 public -- CategoryOfEntity
open import SysFEAT.SOF.8a37921c6ae72add public -- OperatingAssetCategorization

OperatingAssetCategory : ∀ (u : Level) → ClassOfMixedOrderEntity u
OperatingAssetCategory u = MixedOrderEntity u

--  OperatingAssetCategory is subTypeOf CategoryOfEntity
st-e83018fb6ae53018-629565166ad71b60 : ∀ {u v} → (OperatingAssetCategory u) ⊏⋆ₑ (CategoryOfEntity v)
st-e83018fb6ae53018-629565166ad71b60 = trivialPolySubTypeOfEntity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Family: -}
family : ∀ {u v} →  Linkage (OperatingAssetCategory u) (OperatingAssetCategorization v)
family = make_classOfRelation "Family" "Family"

postulate -- family is subTypeOf categorizationFamily
  st-5d545e516ae83f24-890a8a9e6ae8578e  : ∀ {u v} → family {u} {v}  ⊏⋆ᵣ  categorizationFamily {u} {v}

-- -------------------------------------------------------------------------------------------- 
{- Operating Asset Category: -}
operatingAssetCategory : ∀ {u v} →  Linkage (OperatingAssetCategory u) (OperatingAssetCategory v)
operatingAssetCategory = make_subTypeOf "Operating Asset Category" "Operating Asset Category"

postulate -- operatingAssetCategory is subTypeOf subCategorization
  st-800b817a6ae83115-7ca47f996ae858c7  : ∀ {u v} → operatingAssetCategory {u} {v}  ⊏⋆ᵣ  subCategorization {u} {v}
