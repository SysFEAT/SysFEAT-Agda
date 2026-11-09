{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Object Assurance Case: 
A Business Object Assurance Case is a Data Assurance Case related to a critial Business Object.Its purpose is to defined the quality and integrity rules that apply to a Business Object in each business contexts such as activity domains on the enterprise.

Documentation : https://framework.sysfeat.com/pages/fe6314c8618165e2.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.fe6314c8618165e2 where -- ========== BusinessObjectAssuranceCase

open import Agda.Primitive
open import SysFEAT.EA.b90aeac8600e619f public -- DataAssuranceCase
open import SysFEAT.EA.582e7ac266f6b8ef public -- DataQualityRiskType
open import SysFEAT.C-SOF.229b34eb5b3f79d2 public -- ConceptualEntity

BusinessObjectAssuranceCase : ClassOfClassOfIndividual
BusinessObjectAssuranceCase = ClassOfIndividual


--  BusinessObjectAssuranceCase is subTypeOf DataAssuranceCase
st-fe6314c8618165e2-b90aeac8600e619f : BusinessObjectAssuranceCase ⊏ₑ DataAssuranceCase
st-fe6314c8618165e2-b90aeac8600e619f = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Mitigated Quality Risk: -}
-- Aggregate Member : Mitigated Quality Risk
MitigatedQualityRisk : ClassOfMixedOrderEntity
MitigatedQualityRisk = MixedOrderEntity



--  MitigatedQualityRisk is subTypeOf MitigatedDataRisk
st-582e7b2366f6b927-582e7e2266f6c278 : MitigatedQualityRisk ⊏⋆ₑ MitigatedDataRisk
st-582e7b2366f6b927-582e7e2266f6c278 = polySubTypeOf-identity

-- Membership relation
membershipOfMitigatedQualityRisk :  Linkage BusinessObjectAssuranceCase MitigatedQualityRisk
membershipOfMitigatedQualityRisk = make_upwardNestingRelation "mitigatedQualityRisk membership" "nested mitigatedQualityRisk"

-- Aggregation relation
aggregationOfDataQualityRiskTypeMitigatedQualityRisk :  Linkage MitigatedQualityRisk DataQualityRiskType
aggregationOfDataQualityRiskTypeMitigatedQualityRisk = make_Relation "DataQualityRiskType aggregation" "aggregated DataQualityRiskType"

{- mitigatedQualityRisk : derived relation obtained by composing
   membershipOfMitigatedQualityRisk and aggregationOfDataQualityRiskTypeMitigatedQualityRisk
   It directly links an Business Object Assurance Case to the final aggregated DataQualityRiskType
   hiding the reifying MitigatedQualityRisk
-}
mitigatedQualityRisk : Linkage BusinessObjectAssuranceCase DataQualityRiskType
mitigatedQualityRisk = membershipOfMitigatedQualityRisk  ∘  aggregationOfDataQualityRiskTypeMitigatedQualityRisk



-- -------------------------------------------------------------------------------------------- 
{- Assured Business Object: -}
-- Aggregate Member : Assured Business Object
AssuredBusinessObject : ClassOfClassOfIndividual
AssuredBusinessObject = ClassOfIndividual


--  AssuredBusinessObject is subTypeOf ConcernedInformation
st-fe631645618166c9-b90afa69600e715c : AssuredBusinessObject ⊏ₑ ConcernedInformation
st-fe631645618166c9-b90afa69600e715c = polySubTypeOf-identity

-- Membership relation
membershipOfAssuredBusinessObject :  Linkage BusinessObjectAssuranceCase AssuredBusinessObject
membershipOfAssuredBusinessObject = make_upwardNestingRelation "assuredBusinessObject membership" "nested assuredBusinessObject"

-- Aggregation relation
fE631645618166E4 :  Linkage AssuredBusinessObject ConceptualEntity
fE631645618166E4 = make_Relation "ConceptualEntity aggregation" "aggregated ConceptualEntity"

{- assuredBusinessObject : derived relation obtained by composing
   membershipOfAssuredBusinessObject and fE631645618166E4
   It directly links an Business Object Assurance Case to the final aggregated ConceptualEntity
   hiding the reifying AssuredBusinessObject
-}
assuredBusinessObject : Linkage BusinessObjectAssuranceCase ConceptualEntity
assuredBusinessObject = membershipOfAssuredBusinessObject  ∘  fE631645618166E4


