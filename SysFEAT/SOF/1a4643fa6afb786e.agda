{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Abstraction Category Type: 
Abstraction Category Type is a class of Asset Category Type that defines categories for abstraction layering of the System Operating Framework - SOF.

Documentation : https://framework.sysfeat.com/pages/1a4643fa6afb786e.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.1a4643fa6afb786e where -- ========== AbstractionCategoryType

open import Agda.Primitive
open import SysFEAT.SOF.4efc6b346ae48db7 public -- AssetCategoryType
open import SysFEAT.SOF.1a4623c86afb6437 public -- AbstractionSchema

AbstractionCategoryType : ∀ (u : Level) → ClassOfMixedOrderEntity u 
AbstractionCategoryType u  = MixedOrderEntity u 


--  AbstractionCategoryType is subTypeOf AssetCategoryType
st-1a4643fa6afb786e-4efc6b346ae48db7 : ∀ {u v} → AbstractionCategoryType u ⊏⋆ₑ AssetCategoryType v
st-1a4643fa6afb786e-4efc6b346ae48db7 = trivialPolySubTypeOfEntity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Abstraction Schema: -}
abstractionSchema : ∀ {u v} →  Linkage (AbstractionCategoryType u) (AbstractionSchema v)
abstractionSchema = make_instanceOf "Abstraction Schema" "Abstraction Schema"

postulate -- abstractionSchema is subTypeOf parentAssetCategorizationScheme
  st-1a4644336afb7927-8d1fa3b46ae827f6  : ∀ {u v} → abstractionSchema {u} {u ⊔ v}  ⊏⋆ᵣ  parentAssetCategorizationScheme {u} {u ⊔ v}
