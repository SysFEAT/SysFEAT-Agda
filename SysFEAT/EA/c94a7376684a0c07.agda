{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Resource Operational Asset: 
A Resource Operational Asset is a kind of Resource Operating Asset Type (agent or behavior) that is involved in core operations, as distinct from Resource Operating Asset Types that govern their security and reliability (Control Measures).

Documentation : https://framework.sysfeat.com/pages/c94a7376684a0c07.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.c94a7376684a0c07 where -- ========== ResourceOperationalAsset

open import Agda.Primitive
open import SysFEAT.EA.f8e61da0621db6fa public -- ResourceOperatingAssetType

ResourceOperationalAsset : BoundedIndividualMetaClass
ResourceOperationalAsset = AssetType


--  ResourceOperationalAsset is subTypeOf ResourceOperatingAssetType
st-c94a7376684a0c07-f8e61da0621db6fa : ResourceOperationalAsset ⊏ₑ ResourceOperatingAssetType
st-c94a7376684a0c07-f8e61da0621db6fa = polySubTypeOf-identity


-- == Relations =======================
