{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Macro Resource Operating Asset: 


Documentation : https://framework.sysfeat.com/pages/61e3ae8f679f0e2d.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.61e3ae8f679f0e2d where -- ========== MacroResourceOperatingAsset

open import Agda.Primitive
open import SysFEAT.EA.f8e61da0621db6fa public -- ResourceOperatingAssetType

MacroResourceOperatingAsset : BoundedIndividualMetaClass
MacroResourceOperatingAsset = AssetType


--  MacroResourceOperatingAsset is subTypeOf ResourceOperatingAssetType
st-61e3ae8f679f0e2d-f8e61da0621db6fa : MacroResourceOperatingAsset ⊏ₑ ResourceOperatingAssetType
st-61e3ae8f679f0e2d-f8e61da0621db6fa = polySubTypeOf-identity


-- == Relations =======================
