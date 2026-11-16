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
open import SysFEAT.SOF.0e0c12ee6afb4347 public -- SystemicFamily
open import SysFEAT.SOF.1a461dd76afb55cd public -- ConceptualizationFamily
open import SysFEAT.SOF.1a4623c86afb6437 public -- AbstractionSchema

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
{- Abstraction Scheme: -}
abstractionScheme : ∀ {u v} →  Linkage (OperatingAsset u) (AbstractionSchema v)
abstractionScheme = make_Relation "Abstraction Scheme" "Abstraction Scheme"

postulate -- abstractionScheme is subTypeOf applicableAssetScheme
  st-1a4624fa6afb669c-f69620606a0f9c94  : ∀ {u} → abstractionScheme {lsuc(lzero)} {u}  ⊏⋆ᵣ  applicableAssetScheme {u}
