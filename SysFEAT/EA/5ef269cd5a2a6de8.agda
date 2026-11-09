{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Privacy Endpoint: 
It represents an establishment. It allows to add a geographic location to an organization. This is a minimum requirement to use the organization when documenting a data flow.

Documentation : https://framework.sysfeat.com/pages/5ef269cd5a2a6de8.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.5ef269cd5a2a6de8 where -- ========== PrivacyEndpoint

open import Agda.Primitive
open import SysFEAT.EA.7d3786425fd04ea2 public -- PrivacyBlock
open import SysFEAT.SOF.8d5e986f552e28d5 public -- Location

PrivacyEndpoint : ClassOfMixedOrderEntity
PrivacyEndpoint = MixedOrderEntity


--  PrivacyEndpoint is subTypeOf PrivacyBlock
st-5ef269cd5a2a6de8-7d3786425fd04ea2 : PrivacyEndpoint ⊏ₑ PrivacyBlock
st-5ef269cd5a2a6de8-7d3786425fd04ea2 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Location: -}
location :  Linkage PrivacyEndpoint Location
location = make_holonymyRelation "Location" "Location"

