{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Location: 
A Location is a geopolitical location anywhere on the earth.Examples: - France- Paris- Washington DC- Cairo- Buenos-Aires- Asia

Documentation : https://framework.sysfeat.com/pages/8d5e986f552e28d5.htm

External references:
  ISO 15926 - SpatialLocation: https://15926.blog/topics/data-model/index.htm#SpatialLocation
  OMG - UAF - ActualLocation: https://www.omg.org/spec/UAF/1.2/Beta1/DMM/PDF#ActualLocation
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.8d5e986f552e28d5 where -- ========== Location

open import Agda.Primitive
open import SysFEAT.UpperOntology.28f07b2354be0d69 public -- BoundedIndividual
open import SysFEAT.SOF.ef5df90463212593 public -- LocationType

Location : LocationType
Location = BoundedIndividual

--  Location is subTypeOf BoundedIndividual
st-8d5e986f552e28d5-28f07b2354be0d69 : Location ⊏ₑ BoundedIndividual
st-8d5e986f552e28d5-28f07b2354be0d69 = polySubTypeOf-identity

postulate -- Location is PowerInstanceOf Location Type
  pi-d8ee797868d22659 : Location ∷ₚₑ LocationType

-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Sub-Site: -}
subSite :  Linkage Location Location
subSite = make_meronymyRelation "Sub-Site" "Sub-Site"

postulate -- subSite is subTypeOf meronymyRelation
  st-b3c3ca876ad025f3-e818e86d6ad45d7a  : subSite  ⊏⋆ᵣ  meronymyRelation
