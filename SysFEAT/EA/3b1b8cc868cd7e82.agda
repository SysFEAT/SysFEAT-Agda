{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Individual Hardware System: 
An Individual Hardware System is a physical, material Artifact engineered to produce and consume physical effects.

Documentation : https://framework.sysfeat.com/pages/3b1b8cc868cd7e82.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.3b1b8cc868cd7e82 where -- ========== IndividualHardwareSystem

open import Agda.Primitive
open import SysFEAT.EA.3b1b91ea68cd8733 public -- IndividualArtifact
open import SysFEAT.EA.3b1bb56c68cd9bfa public -- IndividualPhysicalResourceAgent

IndividualHardwareSystem : AgentType
IndividualHardwareSystem = IndividualAgent


--  IndividualHardwareSystem is subTypeOf IndividualArtifact
st-3b1b8cc868cd7e82-3b1b91ea68cd8733 : IndividualHardwareSystem ⊏ₑ IndividualArtifact
st-3b1b8cc868cd7e82-3b1b91ea68cd8733 = polySubTypeOf-identity

--  IndividualHardwareSystem is subTypeOf IndividualPhysicalResourceAgent
st-3b1b8cc868cd7e82-3b1bb56c68cd9bfa : IndividualHardwareSystem ⊏ₑ IndividualPhysicalResourceAgent
st-3b1b8cc868cd7e82-3b1bb56c68cd9bfa = polySubTypeOf-identity

postulate -- IndividualHardwareSystem is PowerInstanceOf Hardware System Type
  pi-3b1b8d7468cd7f90 : IndividualHardwareSystem ∷ₚₑ HardwareSystemType

-- == Relations =======================
