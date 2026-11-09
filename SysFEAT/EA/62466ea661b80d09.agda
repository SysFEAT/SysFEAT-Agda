{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Operating Asset: 
Business Operating Assets comprise physical assets which contribute to the production and consumption of Business Outcome Events of the enterprise. This includes Business Agent Types, their behaviors (Business Behavior:  Business Resource Process, Business Resource Interaction Process),

Documentation : https://framework.sysfeat.com/pages/62466ea661b80d09.htm

External references:
  OpenGroup - TOGAF - Guide - Solution Building Blocks: https://pubs.opengroup.org/togaf-standard/architecture-content/chap05.html#tag_05_02_04
  OpenGroup - TOGAF - Definition - Solution Building Block: https://pubs.opengroup.org/togaf-standard/introduction/chap04.html#tag_04_73
  OMG - UAF - CapableElement: https://www.omg.org/spec/UAF/1.2/Beta1/DMM/PDF#CapableElement
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.62466ea661b80d09 where -- ========== BusinessOperatingAsset

open import Agda.Primitive
open import SysFEAT.EA.6a70b9f6678763db public -- BusinessFunctionalAsset
open import SysFEAT.EA.f8e61da0621db6fa public -- ResourceOperatingAssetType
open import SysFEAT.EA.dd26288968a05d00 public -- BusinessResourceCapability
open import SysFEAT.C-SOF.dd268f2868a08150 public -- BusinessCapability
open import SysFEAT.C-SOF.c8b2238961e5385a public -- ConceptualOperatingAsset
open import SysFEAT.EA.82a9892166ec3b89 public -- ProcessFamily

BusinessOperatingAsset : BoundedIndividualMetaClass
BusinessOperatingAsset = AssetType


--  BusinessOperatingAsset is subTypeOf BusinessFunctionalAsset
st-62466ea661b80d09-6a70b9f6678763db : BusinessOperatingAsset ⊏ₑ BusinessFunctionalAsset
st-62466ea661b80d09-6a70b9f6678763db = polySubTypeOf-identity

--  BusinessOperatingAsset is subTypeOf ResourceOperatingAssetType
st-62466ea661b80d09-f8e61da0621db6fa : BusinessOperatingAsset ⊏ₑ ResourceOperatingAssetType
st-62466ea661b80d09-f8e61da0621db6fa = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Fulfilled Business Resource Capability: -}
fulfilledBusinessResourceCapability :  Linkage BusinessOperatingAsset BusinessResourceCapability
fulfilledBusinessResourceCapability = make_subTypeOf "Fulfilled Business Resource Capability" "Fulfilled Business Resource Capability"

postulate -- fulfilledBusinessResourceCapability is subTypeOf fulfilledResourceCapability
  st-dd2681a968a1b9d1-dd265468689f5a22  : fulfilledBusinessResourceCapability  ⊏⋆ᵣ  fulfilledResourceCapability

-- -------------------------------------------------------------------------------------------- 
{- Fulfilled Business Capability: -}
fulfilledBusinessCapability :  Linkage BusinessOperatingAsset BusinessCapability
fulfilledBusinessCapability = make_subTypeOf "Fulfilled Business Capability" "Fulfilled Business Capability"

postulate -- fulfilledBusinessCapability is subTypeOf fulfilledCapability
  st-dd26824268a1ba99-190c72c368966198  : fulfilledBusinessCapability  ⊏⋆ᵣ  fulfilledCapability

-- -------------------------------------------------------------------------------------------- 
{- Specialized Resource Asset: -}
specializedResourceAsset :  Linkage BusinessOperatingAsset BusinessOperatingAsset
specializedResourceAsset = make_subTypeOf "Specialized Resource Asset" "Specialized Resource Asset"

postulate -- specializedResourceAsset is subTypeOf specializedResourceOperatingAsset
  st-325a380e66f351f6-82a9879766ec3a29  : specializedResourceAsset  ⊏⋆ᵣ  specializedResourceOperatingAsset

-- -------------------------------------------------------------------------------------------- 
{- Realized Logical Operating Asset: -}
realizedLogicalOperatingAsset :  Linkage BusinessOperatingAsset ConceptualOperatingAsset
realizedLogicalOperatingAsset = make_subTypeOf "Realized Logical Operating Asset" "Realized Logical Operating Asset"

postulate -- realizedLogicalOperatingAsset is subTypeOf realizedBusinessOperatingAsset
  st-332c47ab66f17a2e-82a9888a66ec3ad6  : realizedLogicalOperatingAsset  ⊏⋆ᵣ  realizedBusinessOperatingAsset

-- -------------------------------------------------------------------------------------------- 
{- Process Family: 
Classification of Business Operating Asset a by a Process Family.
-}
processFamily :  Linkage BusinessOperatingAsset ProcessFamily
processFamily = make_classOfRelation "Process Family" "Process Family"

postulate -- processFamily is subTypeOf assetCategorizationScheme
  st-82a9894466ec3bc6-f69620606a0f9c94  : processFamily  ⊏⋆ᵣ  assetCategorizationScheme  {lsuc(lsuc(lzero))}

-- -------------------------------------------------------------------------------------------- 
{- Business Operating Asset Part: -}
-- Aggregate Member : Business Operating Asset Part
BusinessOperatingAssetPart : ClassOfClassOfIndividual
BusinessOperatingAssetPart = ClassOfIndividual



--  BusinessOperatingAssetPart is subTypeOf ResourceOperatingAssetPart
st-b777c10368b071b8-b776bf0868b0fbb3 : BusinessOperatingAssetPart ⊏ₑ ResourceOperatingAssetPart
st-b777c10368b071b8-b776bf0868b0fbb3 = polySubTypeOf-identity

-- Membership relation
membershipOfBusinessOperatingAssetPart :  Linkage BusinessOperatingAsset BusinessOperatingAssetPart
membershipOfBusinessOperatingAssetPart = make_upwardNestingRelation "businessOperatingAssetPart membership" "nested businessOperatingAssetPart"

-- Aggregation relation
aggregationOfBusinessOperatingAssetBusinessOperatingAssetPart :  Linkage BusinessOperatingAssetPart BusinessOperatingAsset
aggregationOfBusinessOperatingAssetBusinessOperatingAssetPart = make_Relation "BusinessOperatingAsset aggregation" "aggregated BusinessOperatingAsset"

{- businessOperatingAssetPart : derived relation obtained by composing
   membershipOfBusinessOperatingAssetPart and aggregationOfBusinessOperatingAssetBusinessOperatingAssetPart
   It directly links an Business Operating Asset to the final aggregated BusinessOperatingAsset
   hiding the reifying BusinessOperatingAssetPart
-}
businessOperatingAssetPart : Linkage BusinessOperatingAsset BusinessOperatingAsset
businessOperatingAssetPart = membershipOfBusinessOperatingAssetPart  ∘  aggregationOfBusinessOperatingAssetBusinessOperatingAssetPart


