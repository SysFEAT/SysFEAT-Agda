{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Mezzo Resource Operating Asset: 
A Mezzo Resource Operating Asset is a Resource Operating Asset Type that corresponds to the mezzo systemic level.

Documentation : https://framework.sysfeat.com/pages/61e3afb3679f1256.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.61e3afb3679f1256 where -- ========== MezzoResourceOperatingAsset

open import Agda.Primitive
open import SysFEAT.SOF.855a8f436ae38fce public -- MezzoOperatingAsset
open import SysFEAT.R-SOF.f8e61da0621db6fa public -- ResourceOperatingAssetType

MezzoResourceOperatingAsset : AbstractionCategoryType
MezzoResourceOperatingAsset = AbstractionCategory


--  MezzoResourceOperatingAsset withAspect MezzoOperatingAsset
st-61e3afb3679f1256-855a8f436ae38fce : MezzoResourceOperatingAsset ⊏ₐₑ MezzoOperatingAsset lzero
st-61e3afb3679f1256-855a8f436ae38fce = polySubTypeOf-identity

--  MezzoResourceOperatingAsset is subTypeOf ResourceOperatingAssetType
st-61e3afb3679f1256-f8e61da0621db6fa : MezzoResourceOperatingAsset ⊏ₑ ResourceOperatingAssetType
st-61e3afb3679f1256-f8e61da0621db6fa = polySubTypeOf-identity


-- == Relations =======================
