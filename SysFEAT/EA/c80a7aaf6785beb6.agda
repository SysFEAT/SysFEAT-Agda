{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Deployed Cloud Service: 


Documentation : https://framework.sysfeat.com/pages/c80a7aaf6785beb6.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.c80a7aaf6785beb6 where -- ========== DeployedCloudService

open import Agda.Primitive
open import SysFEAT.EA.2c93304a6764424d public -- DeployedSOftwareTechnologySystem
open import SysFEAT.EA.02f515ba641c82e4 public -- CloudService

DeployedCloudService : AgentType
DeployedCloudService = IndividualAgent


--  DeployedCloudService is subTypeOf DeployedSOftwareTechnologySystem
st-c80a7aaf6785beb6-2c93304a6764424d : DeployedCloudService ⊏ₑ DeployedSOftwareTechnologySystem
st-c80a7aaf6785beb6-2c93304a6764424d = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Cloud Service Type: -}
cloudServiceType :  Linkage DeployedCloudService CloudService
cloudServiceType = make_Relation "Cloud Service Type" "Cloud Service Type"

postulate -- cloudServiceType is subTypeOf sOftwareTechnologyType
  st-219134a867862275-2c9330e06764470a  : cloudServiceType  ⊏⋆ᵣ  sOftwareTechnologyType
