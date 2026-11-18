{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Deployed Hardware Technology: 


Documentation : https://framework.sysfeat.com/pages/c80a87be6785ca30.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.H-SOF.c80a87be6785ca30 where -- ========== DeployedHardwareTechnology

open import Agda.Primitive
open import SysFEAT.R-SOF.c80a54ad6785a44d public -- IndividualTechnologySystem
open import SysFEAT.H-SOF.3b364dc363d9bda7 public -- HardwareTechnology

DeployedHardwareTechnology : ResourceAgentType
DeployedHardwareTechnology = IndividualResourceAgent


--  DeployedHardwareTechnology is subTypeOf IndividualTechnologySystem
st-c80a87be6785ca30-c80a54ad6785a44d : DeployedHardwareTechnology ⊏ₑ IndividualTechnologySystem
st-c80a87be6785ca30-c80a54ad6785a44d = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Technology Type: -}
technologyType :  Linkage DeployedHardwareTechnology HardwareTechnology
technologyType = make_instanceOf "Technology Type" "Technology Type"

postulate -- technologyType is subTypeOf systemType
  st-c80a881c6785cbf9-c80a5a2e6785a53e  : technologyType  ⊏⋆ᵣ  systemType
