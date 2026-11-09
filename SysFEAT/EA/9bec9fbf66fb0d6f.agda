{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Resource Functional Asset: 
Resource Functional Assets are Functional Assets that define how Business Outcome Events are specified, produced and consumed.

Documentation : https://framework.sysfeat.com/pages/9bec9fbf66fb0d6f.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.9bec9fbf66fb0d6f where -- ========== ResourceFunctionalAsset

open import Agda.Primitive
open import SysFEAT.SOF.a4a5b3f855585ce1 public -- AssetType
open import SysFEAT.EA.d9f4dcc5688d5969 public -- ResourceAsset

ResourceFunctionalAsset : BoundedIndividualMetaClass
ResourceFunctionalAsset = AssetType


--  ResourceFunctionalAsset is subTypeOf AssetType
st-9bec9fbf66fb0d6f-a4a5b3f855585ce1 : ResourceFunctionalAsset ⊏ₑ AssetType
st-9bec9fbf66fb0d6f-a4a5b3f855585ce1 = polySubTypeOf-identity

--  ResourceFunctionalAsset is subTypeOf ResourceAsset
st-9bec9fbf66fb0d6f-d9f4dcc5688d5969 : ResourceFunctionalAsset ⊏ₑ ResourceAsset
st-9bec9fbf66fb0d6f-d9f4dcc5688d5969 = polySubTypeOf-identity


-- == Relations =======================
