{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Infrastructure Landscape: 
An Infrastructure Landscape is a set of human and physical resources (hardware and software) required for the existence, operation and management of an enterprise in its environment.

Documentation : https://framework.sysfeat.com/pages/9e38361d6192f8da.htm

External references:
  C4 Model - Supplementary diagrams - System Landscape diagram: https://c4model.com/#SystemLandscapeDiagram
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.9e38361d6192f8da where -- ========== InfrastructureLandscape

open import Agda.Primitive
open import SysFEAT.EA.66f8685a620b1440 public -- IndividualBusinessAgent
open import SysFEAT.EA.9e38352f6192f750 public -- DataCenter
open import SysFEAT.EA.46195775560d4ec0 public -- SystemOfSystems

InfrastructureLandscape : AssetType
InfrastructureLandscape = IndividualAsset


--  InfrastructureLandscape is subTypeOf IndividualBusinessAgent
st-9e38361d6192f8da-66f8685a620b1440 : InfrastructureLandscape ⊏ₑ IndividualBusinessAgent
st-9e38361d6192f8da-66f8685a620b1440 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Owned Data Center: -}
ownedDataCenter :  Linkage InfrastructureLandscape DataCenter
ownedDataCenter = make_holonymyRelation "Owned Data Center" "Owned Data Center"


-- -------------------------------------------------------------------------------------------- 
{- Infrastructure Type: -}
infrastructureType :  Linkage InfrastructureLandscape SystemOfSystems
infrastructureType = make_Relation "Infrastructure Type" "Infrastructure Type"

