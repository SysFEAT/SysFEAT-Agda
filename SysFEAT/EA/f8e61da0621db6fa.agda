{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Resource Operating Asset Type: 
Resource Operating Asset Types comprise all resources which contributes to the production and consumption of Business Outcome Events of the enterprise.Resource Operating Asset Types are subject to Operational Risks.

Documentation : https://framework.sysfeat.com/pages/f8e61da0621db6fa.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.f8e61da0621db6fa where -- ========== ResourceOperatingAssetType

open import Agda.Primitive
open import SysFEAT.SOF.a371a43b5b865817 public -- OperatingAssetType
open import SysFEAT.EA.9bec9fbf66fb0d6f public -- ResourceFunctionalAsset
open import SysFEAT.EA.dd265414689f5987 public -- ResourceCapability
open import SysFEAT.EA.07b60b4168a50438 public -- ResourceRule

ResourceOperatingAssetType : BoundedIndividualMetaClass
ResourceOperatingAssetType = AssetType


--  ResourceOperatingAssetType is subTypeOf OperatingAssetType
st-f8e61da0621db6fa-a371a43b5b865817 : ResourceOperatingAssetType ⊏ₑ OperatingAssetType
st-f8e61da0621db6fa-a371a43b5b865817 = polySubTypeOf-identity

--  ResourceOperatingAssetType is subTypeOf ResourceFunctionalAsset
st-f8e61da0621db6fa-9bec9fbf66fb0d6f : ResourceOperatingAssetType ⊏ₑ ResourceFunctionalAsset
st-f8e61da0621db6fa-9bec9fbf66fb0d6f = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Fulfilled Resource Capability: 
Resource Capability(ies) fulfilled by a Resource Operating Asset Type.
-}
fulfilledResourceCapability :  Linkage ResourceOperatingAssetType ResourceCapability
fulfilledResourceCapability = make_subTypeOf "Fulfilled Resource Capability" "Fulfilled Resource Capability"

postulate -- fulfilledResourceCapability is subTypeOf fulfilledCapability
  st-dd265468689f5a22-190c72c368966198  : fulfilledResourceCapability  ⊏⋆ᵣ  fulfilledCapability

-- -------------------------------------------------------------------------------------------- 
{- Specialized Resource Operating Asset: -}
specializedResourceOperatingAsset :  Linkage ResourceOperatingAssetType ResourceOperatingAssetType
specializedResourceOperatingAsset = make_subTypeOf "Specialized Resource Operating Asset" "Specialized Resource Operating Asset"

postulate -- specializedResourceOperatingAsset is subTypeOf specializedOperatingAsset
  st-82a9879766ec3a29-6a70772167873276  : specializedResourceOperatingAsset  ⊏⋆ᵣ  specializedOperatingAsset

-- -------------------------------------------------------------------------------------------- 
{- Realized Business Operating Asset: -}
realizedBusinessOperatingAsset :  Linkage ResourceOperatingAssetType ResourceOperatingAssetType
realizedBusinessOperatingAsset = make_subTypeOf "Realized Business Operating Asset" "Realized Business Operating Asset"


-- -------------------------------------------------------------------------------------------- 
{- Resource Rule Enforcement: -}
-- Aggregate Member : Resource Rule Enforcement
ResourceRuleEnforcement : AbstractEntityMetaClass
ResourceRuleEnforcement = ClassOfAbstractEntity



--  ResourceRuleEnforcement is subTypeOf RuleEnforcement
st-07b60bd468a50731-7bc2d4c26897a1c4 : ResourceRuleEnforcement ⊏ₑ RuleEnforcement
st-07b60bd468a50731-7bc2d4c26897a1c4 = polySubTypeOf-identity

-- Membership relation
membershipOfResourceRuleEnforcement :  Linkage ResourceOperatingAssetType ResourceRuleEnforcement
membershipOfResourceRuleEnforcement = make_upwardNestingRelation "resourceRuleEnforcement membership" "nested resourceRuleEnforcement"

-- Aggregation relation
aggregationOfResourceRuleResourceRuleEnforcement :  Linkage ResourceRuleEnforcement ResourceRule
aggregationOfResourceRuleResourceRuleEnforcement = make_Relation "ResourceRule aggregation" "aggregated ResourceRule"

{- resourceRuleEnforcement : derived relation obtained by composing
   membershipOfResourceRuleEnforcement and aggregationOfResourceRuleResourceRuleEnforcement
   It directly links an Resource Operating Asset Type to the final aggregated ResourceRule
   hiding the reifying ResourceRuleEnforcement
-}
resourceRuleEnforcement : Linkage ResourceOperatingAssetType ResourceRule
resourceRuleEnforcement = membershipOfResourceRuleEnforcement  ∘  aggregationOfResourceRuleResourceRuleEnforcement



-- -------------------------------------------------------------------------------------------- 
{- Resource Operating Asset Part: -}
-- Aggregate Member : Resource Operating Asset Part
ResourceOperatingAssetPart : ClassOfClassOfIndividual
ResourceOperatingAssetPart = ClassOfIndividual



--  ResourceOperatingAssetPart is subTypeOf OperatingAssetPart
st-b776bf0868b0fbb3-b776b8c668b04b35 : ResourceOperatingAssetPart ⊏ₑ OperatingAssetPart
st-b776bf0868b0fbb3-b776b8c668b04b35 = polySubTypeOf-identity

-- Membership relation
membershipOfResourceOperatingAssetPart :  Linkage ResourceOperatingAssetType ResourceOperatingAssetPart
membershipOfResourceOperatingAssetPart = make_upwardNestingRelation "resourceOperatingAssetPart membership" "nested resourceOperatingAssetPart"

-- Aggregation relation
aggregationOfResourceOperatingAssetTypeResourceOperatingAssetPart :  Linkage ResourceOperatingAssetPart ResourceOperatingAssetType
aggregationOfResourceOperatingAssetTypeResourceOperatingAssetPart = make_Relation "ResourceOperatingAssetType aggregation" "aggregated ResourceOperatingAssetType"

{- resourceOperatingAssetPart : derived relation obtained by composing
   membershipOfResourceOperatingAssetPart and aggregationOfResourceOperatingAssetTypeResourceOperatingAssetPart
   It directly links an Resource Operating Asset Type to the final aggregated ResourceOperatingAssetType
   hiding the reifying ResourceOperatingAssetPart
-}
resourceOperatingAssetPart : Linkage ResourceOperatingAssetType ResourceOperatingAssetType
resourceOperatingAssetPart = membershipOfResourceOperatingAssetPart  ∘  aggregationOfResourceOperatingAssetTypeResourceOperatingAssetPart


