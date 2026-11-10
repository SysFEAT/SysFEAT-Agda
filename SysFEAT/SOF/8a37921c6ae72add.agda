{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Operating Asset Categorization: 


Documentation : https://framework.sysfeat.com/pages/8a37921c6ae72add.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.8a37921c6ae72add where -- ========== OperatingAssetCategorization

open import Agda.Primitive
open import SysFEAT.UpperOntology.220d23706ad71311 public -- CategorizationFamily

OperatingAssetCategorization : ∀ (u : Level) → MetaClass (lsuc u) 
OperatingAssetCategorization u  = ClassOfEntity (lsuc u) 


--  OperatingAssetCategorization is subTypeOf CategorizationFamily
st-8a37921c6ae72add-220d23706ad71311 : ∀ {u v} → OperatingAssetCategorization u ⊏⋆ₑ CategorizationFamily v
st-8a37921c6ae72add-220d23706ad71311 = trivialPolySubTypeOfEntity


