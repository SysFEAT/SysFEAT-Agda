{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Individual Natural Resource: 
An Individual Natural Resource is an Individual Business Agent that refers to any material or substance that occurs naturally in the environment and can be used by humans for various purposes. These resources are derived from the Earth and include a wide range of physical entities such as water, minerals, forests, fossil fuels, soil, and air. 

Documentation : https://framework.sysfeat.com/pages/c80a3bc867858386.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.c80a3bc867858386 where -- ========== IndividualNaturalResource

open import Agda.Primitive
open import SysFEAT.EA.fe1c231267880201 public -- IndividualResourceAgent
open import SysFEAT.EA.3b1bb56c68cd9bfa public -- IndividualPhysicalResourceAgent
open import SysFEAT.EA.861987db6372446e public -- NaturalResourceType

IndividualNaturalResource : AgentType
IndividualNaturalResource = IndividualAgent


--  IndividualNaturalResource is subTypeOf IndividualResourceAgent
st-c80a3bc867858386-fe1c231267880201 : IndividualNaturalResource ⊏ₑ IndividualResourceAgent
st-c80a3bc867858386-fe1c231267880201 = polySubTypeOf-identity

--  IndividualNaturalResource is subTypeOf IndividualPhysicalResourceAgent
st-c80a3bc867858386-3b1bb56c68cd9bfa : IndividualNaturalResource ⊏ₑ IndividualPhysicalResourceAgent
st-c80a3bc867858386-3b1bb56c68cd9bfa = polySubTypeOf-identity

postulate -- IndividualNaturalResource is PowerInstanceOf Natural Resource Type
  pi-3b1b8dfa68cd8064 : IndividualNaturalResource ∷ₚₑ NaturalResourceType

-- == Relations =======================
