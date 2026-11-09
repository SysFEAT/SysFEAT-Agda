{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Cloud Service: 
A Cloud Service is a Software Technology System that is also a Computing Systems that can run software.

Documentation : https://framework.sysfeat.com/pages/02f515ba641c82e4.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.02f515ba641c82e4 where -- ========== CloudService

open import Agda.Primitive
open import SysFEAT.EA.0463ea9a63fd8b6c public -- SOftwareTechnologySystem
open import SysFEAT.EA.f4be0eda5ee1d6c0 public -- ComputingSystem

CloudService : BoundedIndividualMetaClass
CloudService = AssetType


--  CloudService is subTypeOf SOftwareTechnologySystem
st-02f515ba641c82e4-0463ea9a63fd8b6c : CloudService ⊏ₑ SOftwareTechnologySystem
st-02f515ba641c82e4-0463ea9a63fd8b6c = polySubTypeOf-identity

--  CloudService is subTypeOf ComputingSystem
st-02f515ba641c82e4-f4be0eda5ee1d6c0 : CloudService ⊏ₑ ComputingSystem
st-02f515ba641c82e4-f4be0eda5ee1d6c0 = polySubTypeOf-identity


-- == Relations =======================
