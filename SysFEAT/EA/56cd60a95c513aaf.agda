{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Deployed Application: 
A Deployed Application offers a set of functionalities to users.

Documentation : https://framework.sysfeat.com/pages/56cd60a95c513aaf.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.56cd60a95c513aaf where -- ========== DeployedApplication

open import Agda.Primitive
open import SysFEAT.S-SOF.66f870ce620b2d8c public -- IndividualBusinessSOftwareSystem
open import SysFEAT.S-SOF.56cd60c05c513ad9 public -- DeployedSOftwareTechnology
open import SysFEAT.S-SOF.bcebd8e9549144db public -- Application

DeployedApplication : BusinessAgentType
DeployedApplication = IndividualBusinessAgent


--  DeployedApplication is subTypeOf IndividualBusinessSOftwareSystem
st-56cd60a95c513aaf-66f870ce620b2d8c : DeployedApplication ⊏ₑ IndividualBusinessSOftwareSystem
st-56cd60a95c513aaf-66f870ce620b2d8c = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Technology Installation Used: -}
technologyInstallationUsed :  Linkage DeployedApplication DeployedSOftwareTechnology
technologyInstallationUsed = make_holonymyRelation "Technology Installation Used" "Technology Installation Used"


-- -------------------------------------------------------------------------------------------- 
{- Application Type: -}
applicationType :  Linkage DeployedApplication Application
applicationType = make_instanceOf "Application Type" "Application Type"

postulate -- applicationType is subTypeOf sOftwareSystemType
  st-e2dc054b66fd4a63-e2dc060266fd4c0c  : applicationType  ⊏⋆ᵣ  sOftwareSystemType
