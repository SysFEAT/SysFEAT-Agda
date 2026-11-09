{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Hardware System Type: 
A Hardware System Type is a type of physical, material Artifact engineered to produce and consume physical effects.

Documentation : https://framework.sysfeat.com/pages/ffdf60af68608674.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.ffdf60af68608674 where -- ========== HardwareSystemType

open import Agda.Primitive
open import SysFEAT.EA.ffdf5eb7686083b4 public -- Artifact
open import SysFEAT.EA.340f52dc686212f5 public -- PhysicalResourceAgent

HardwareSystemType : AgentMetaClass
HardwareSystemType = AgentType


--  HardwareSystemType is subTypeOf Artifact
st-ffdf60af68608674-ffdf5eb7686083b4 : HardwareSystemType ⊏ₑ Artifact
st-ffdf60af68608674-ffdf5eb7686083b4 = polySubTypeOf-identity

--  HardwareSystemType is subTypeOf PhysicalResourceAgent
st-ffdf60af68608674-340f52dc686212f5 : HardwareSystemType ⊏ₑ PhysicalResourceAgent
st-ffdf60af68608674-340f52dc686212f5 = polySubTypeOf-identity


-- == Relations =======================
