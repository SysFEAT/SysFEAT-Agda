{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Operational Assurance Case: 


Documentation : https://framework.sysfeat.com/pages/f1606a8267d86149.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.f1606a8267d86149 where -- ========== OperationalAssuranceCase

open import Agda.Primitive
open import SysFEAT.EA.07ca19e95dd854e9 public -- AssuranceCase
open import SysFEAT.EA.f1606adf67d861a5 public -- OperatingRiskType
open import SysFEAT.EA.f8e61da0621db6fa public -- ResourceOperatingAssetType

OperationalAssuranceCase : ClassOfClassOfIndividual
OperationalAssuranceCase = ClassOfIndividual


--  OperationalAssuranceCase is subTypeOf AssuranceCase
st-f1606a8267d86149-07ca19e95dd854e9 : OperationalAssuranceCase ⊏ₑ AssuranceCase
st-f1606a8267d86149-07ca19e95dd854e9 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Mitigated Operational Risk: -}
-- Aggregate Member : Mitigated Operational Risk
MitigatedOperationalRisk : ClassOfMixedOrderEntity
MitigatedOperationalRisk = MixedOrderEntity



--  MitigatedOperationalRisk is subTypeOf MitigatedRisk
st-f1606c2967d86662-582e770166f6a8cf : MitigatedOperationalRisk ⊏⋆ₑ MitigatedRisk
st-f1606c2967d86662-582e770166f6a8cf = polySubTypeOf-identity

-- Membership relation
membershipOfMitigatedOperationalRisk :  Linkage OperationalAssuranceCase MitigatedOperationalRisk
membershipOfMitigatedOperationalRisk = make_upwardNestingRelation "mitigatedOperationalRisk membership" "nested mitigatedOperationalRisk"

-- Aggregation relation
aggregationOfOperatingRiskTypeMitigatedOperationalRisk :  Linkage MitigatedOperationalRisk OperatingRiskType
aggregationOfOperatingRiskTypeMitigatedOperationalRisk = make_Relation "OperatingRiskType aggregation" "aggregated OperatingRiskType"

{- mitigatedOperationalRisk : derived relation obtained by composing
   membershipOfMitigatedOperationalRisk and aggregationOfOperatingRiskTypeMitigatedOperationalRisk
   It directly links an Operational Assurance Case to the final aggregated OperatingRiskType
   hiding the reifying MitigatedOperationalRisk
-}
mitigatedOperationalRisk : Linkage OperationalAssuranceCase OperatingRiskType
mitigatedOperationalRisk = membershipOfMitigatedOperationalRisk  ∘  aggregationOfOperatingRiskTypeMitigatedOperationalRisk



-- -------------------------------------------------------------------------------------------- 
{- Resource Operating Asset Type: -}
-- Aggregate Member : Resource Operating Asset Type
ResourceOperatingAssetType : ClassOfClassOfIndividual
ResourceOperatingAssetType = ClassOfIndividual


--  ResourceOperatingAssetType is subTypeOf InvolvedAsset
st-f1606bb067d86473-9152e6975ed764d3 : ResourceOperatingAssetType ⊏ₑ InvolvedAsset
st-f1606bb067d86473-9152e6975ed764d3 = polySubTypeOf-identity

-- Membership relation
membershipOfResourceOperatingAssetType :  Linkage OperationalAssuranceCase ResourceOperatingAssetType
membershipOfResourceOperatingAssetType = make_upwardNestingRelation "resourceOperatingAssetType membership" "nested resourceOperatingAssetType"

-- Aggregation relation
aggregationOfResourceOperatingAssetTypeResourceOperatingAssetType :  Linkage ResourceOperatingAssetType ResourceOperatingAssetType
aggregationOfResourceOperatingAssetTypeResourceOperatingAssetType = make_Relation "ResourceOperatingAssetType aggregation" "aggregated ResourceOperatingAssetType"

{- resourceOperatingAssetType : derived relation obtained by composing
   membershipOfResourceOperatingAssetType and aggregationOfResourceOperatingAssetTypeResourceOperatingAssetType
   It directly links an Operational Assurance Case to the final aggregated ResourceOperatingAssetType
   hiding the reifying ResourceOperatingAssetType
-}
resourceOperatingAssetType : Linkage OperationalAssuranceCase ResourceOperatingAssetType
resourceOperatingAssetType = membershipOfResourceOperatingAssetType  ∘  aggregationOfResourceOperatingAssetTypeResourceOperatingAssetType


