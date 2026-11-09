{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Privacy Processing: 
A Privacy Processing is a Data Assurance Case  related to any operation or set of operations which is performed on personal data or on sets of personal data, whether or not by automated means, such as collection, recording, organisation, structuring, storage, adaptation or alteration, retrieval, consultation, use, disclosure by transmission, dissemination or otherwise making available, alignment or combination, restriction, erasure or destruction

Documentation : https://framework.sysfeat.com/pages/426a57325aeb3d76.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.426a57325aeb3d76 where -- ========== PrivacyProcessing

open import Agda.Primitive
open import SysFEAT.EA.b90aeac8600e619f public -- DataAssuranceCase
open import SysFEAT.C-SOF.08d17cde678a2b47 public -- Supplier
open import SysFEAT.EA.258c66a25fd25310 public -- PersonRight
open import SysFEAT.SOF.4356520b6a110f68 public -- DataCategoryFamily
open import SysFEAT.EA.582e783366f6b210 public -- PrivacyRiskType
open import SysFEAT.SOF.e6f250185f772ee1 public -- InformationAsset
open import SysFEAT.EA.b3c824665c709228 public -- 

PrivacyProcessing : ClassOfClassOfIndividual
PrivacyProcessing = ClassOfIndividual


--  PrivacyProcessing is subTypeOf DataAssuranceCase
st-426a57325aeb3d76-b90aeac8600e619f : PrivacyProcessing ⊏ₑ DataAssuranceCase
st-426a57325aeb3d76-b90aeac8600e619f = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- impacted data subject: 
People-human beings from whom or about whom you collect information in connection with your business and its operations.
-}
impacteddatasubject :  Linkage PrivacyProcessing Supplier
impacteddatasubject = make_classOfHolonymy "impacted data subject" "impacted data subject"


-- -------------------------------------------------------------------------------------------- 
{- Person Right: -}
personRight :  Linkage PrivacyProcessing PersonRight
personRight = make_classOfHolonymy "Person Right" "Person Right"


-- -------------------------------------------------------------------------------------------- 
{- Data Category Family: -}
dataCategoryFamily : ∀ {u} →  Linkage PrivacyProcessing (DataCategoryFamily u)
dataCategoryFamily = make_classOfRelation "Data Category Family" "Data Category Family"


-- -------------------------------------------------------------------------------------------- 
{- Mitigated Privacy Risk: 
Represents any risk related to data privacy that should be identified and assessed during a DPIA process.
-}
-- Aggregate Member : Mitigated Privacy Risk
MitigatedPrivacyRisk : ClassOfMixedOrderEntity
MitigatedPrivacyRisk = MixedOrderEntity



--  MitigatedPrivacyRisk is subTypeOf MitigatedDataRisk
st-582e841b66f6dd30-582e7e2266f6c278 : MitigatedPrivacyRisk ⊏⋆ₑ MitigatedDataRisk
st-582e841b66f6dd30-582e7e2266f6c278 = polySubTypeOf-identity

-- Membership relation
membershipOfMitigatedPrivacyRisk :  Linkage PrivacyProcessing MitigatedPrivacyRisk
membershipOfMitigatedPrivacyRisk = make_upwardNestingRelation "mitigatedPrivacyRisk membership" "nested mitigatedPrivacyRisk"

-- Aggregation relation
aggregationOfPrivacyRiskTypeMitigatedPrivacyRisk :  Linkage MitigatedPrivacyRisk PrivacyRiskType
aggregationOfPrivacyRiskTypeMitigatedPrivacyRisk = make_Relation "PrivacyRiskType aggregation" "aggregated PrivacyRiskType"

{- mitigatedPrivacyRisk : derived relation obtained by composing
   membershipOfMitigatedPrivacyRisk and aggregationOfPrivacyRiskTypeMitigatedPrivacyRisk
   It directly links an Privacy Processing to the final aggregated PrivacyRiskType
   hiding the reifying MitigatedPrivacyRisk
-}
mitigatedPrivacyRisk : Linkage PrivacyProcessing PrivacyRiskType
mitigatedPrivacyRisk = membershipOfMitigatedPrivacyRisk  ∘  aggregationOfPrivacyRiskTypeMitigatedPrivacyRisk



-- -------------------------------------------------------------------------------------------- 
{- Data Transfer: 
Any transfer of personal data which are undergoing processing or are intended for processing after transfer to a third country or to an international organization.
-}
-- Aggregate Member : Data Transfer
DataTransfer : ClassOfClassOfIndividual
DataTransfer = ClassOfIndividual


-- Membership relation
membershipOfDataTransfer :  Linkage PrivacyProcessing DataTransfer
membershipOfDataTransfer = make_upwardNestingRelation "dataTransfer membership" "nested dataTransfer"

-- Aggregation relation
aggregationOfInformationAssetDataTransfer :  Linkage DataTransfer InformationAsset
aggregationOfInformationAssetDataTransfer = make_Relation "InformationAsset aggregation" "aggregated InformationAsset"

{- dataTransfer : derived relation obtained by composing
   membershipOfDataTransfer and aggregationOfInformationAssetDataTransfer
   It directly links an Privacy Processing to the final aggregated InformationAsset
   hiding the reifying DataTransfer
-}
dataTransfer : Linkage PrivacyProcessing InformationAsset
dataTransfer = membershipOfDataTransfer  ∘  aggregationOfInformationAssetDataTransfer



-- -------------------------------------------------------------------------------------------- 
{- Security Measure: -}
-- Aggregate Member : Security Measure
SecurityMeasure : ClassOfClassOfIndividual
SecurityMeasure = ClassOfIndividual


--  SecurityMeasure is subTypeOf AppliedControlMeasure
st-b13db35b5ede3983-f1600eb767d84743 : SecurityMeasure ⊏ₑ AppliedControlMeasure
st-b13db35b5ede3983-f1600eb767d84743 = polySubTypeOf-identity

-- Membership relation
membershipOfSecurityMeasure :  Linkage PrivacyProcessing SecurityMeasure
membershipOfSecurityMeasure = make_upwardNestingRelation "securityMeasure membership" "nested securityMeasure"

-- Aggregation relation
aggregationOfSecurityMeasure :  Linkage SecurityMeasure 
aggregationOfSecurityMeasure = make_Relation " aggregation" "aggregated "

{- securityMeasure : derived relation obtained by composing
   membershipOfSecurityMeasure and aggregationOfSecurityMeasure
   It directly links an Privacy Processing to the final aggregated 
   hiding the reifying SecurityMeasure
-}
securityMeasure : Linkage PrivacyProcessing 
securityMeasure = membershipOfSecurityMeasure  ∘  aggregationOfSecurityMeasure


