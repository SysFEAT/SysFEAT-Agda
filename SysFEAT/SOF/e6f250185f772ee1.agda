{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Information Asset: 
An Information Asset  represents anything that can be conceptualized and memorized by an Agent Type to produce and react to Outcome Events.An Information Asset is either an Information Entity or an Information Property.The difference lies in their relationship to change and to time. Information Entity(ies) can change over time and have a lifeycle while Information Propertys are immutable characteristics.

Documentation : https://framework.sysfeat.com/pages/e6f250185f772ee1.htm

External references:
  OpenGroup - ArchiMate - Passive-Structure-Elements: https://pubs.opengroup.org/architecture/archimate32-doc/ch-Generic-Metamodel.html#sec-Passive-Structure-Elements
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.e6f250185f772ee1 where -- ========== InformationAsset

open import Agda.Primitive
open import SysFEAT.SOF.a44fb6bc6748b088 public -- FunctionalAsset
open import SysFEAT.SOF.6c5f80e468587f06 public -- InformationBlock
open import SysFEAT.SOF.ded830e46ae385d9 public -- DataCatagory
open import SysFEAT.SOF.4356520b6a110f68 public -- DataCategoryFamily
open import SysFEAT.SOF.582e785466f6b36f public -- DataRiskType

InformationAsset : BoundedIndividualMetaClass
InformationAsset = AssetType


--  InformationAsset is subTypeOf FunctionalAsset
st-e6f250185f772ee1-a44fb6bc6748b088 : InformationAsset ⊏ₑ FunctionalAsset
st-e6f250185f772ee1-a44fb6bc6748b088 = polySubTypeOf-identity

--  InformationAsset withAspect InformationBlock
st-e6f250185f772ee1-6c5f80e468587f06 : InformationAsset ⊏ₐₑ (InformationBlock (lsuc(lzero)))
st-e6f250185f772ee1-6c5f80e468587f06 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Data Categorization: 
Classification of an Information Asset as belonging to a Data Catagory.
-}
dataCategorization : ∀ {u} →  Linkage InformationAsset (DataCatagory u)
dataCategorization = make_subTypeOf "Data Categorization" "Data Categorization"

postulate -- dataCategorization is subTypeOf assetCategorization
  st-ded838016ae3883c-4efc6b426ae48e32  : dataCategorization  ⊏⋆ᵣ  assetCategorization

-- -------------------------------------------------------------------------------------------- 
{- Data Categorization Scheme: 
Classification of an Information Asset as belonging to a Data Category Family.
-}
dataCategorizationScheme : ∀ {u} →  Linkage InformationAsset (DataCategoryFamily u)
dataCategorizationScheme = make_classOfRelation "Data Categorization Scheme" "Data Categorization Scheme"

postulate -- dataCategorizationScheme is subTypeOf assetCategorizationScheme
  st-435652586a111043-f69620606a0f9c94  : dataCategorizationScheme  {lsuc(lsuc(lzero))}  ⊏⋆ᵣ  assetCategorizationScheme  {lsuc(lsuc(lzero))}

-- -------------------------------------------------------------------------------------------- 
{- Specialized Information Asset: -}
specializedInformationAsset :  Linkage InformationAsset InformationAsset
specializedInformationAsset = make_subTypeOf "Specialized Information Asset" "Specialized Information Asset"

postulate -- specializedInformationAsset is subTypeOf subTypeOfEntity
  st-325a372e66f33bca-8336837268e9448b  : specializedInformationAsset  ⊏⋆ᵣ  subTypeOfEntity {lsuc(lzero)}

-- -------------------------------------------------------------------------------------------- 
{- Realized Information Asset: -}
realizedInformationAsset :  Linkage InformationAsset InformationAsset
realizedInformationAsset = make_subTypeOf "Realized Information Asset" "Realized Information Asset"

postulate -- realizedInformationAsset is subTypeOf subTypeOfEntity
  st-325a3a0b66f354a7-8336837268e9448b  : realizedInformationAsset  ⊏⋆ᵣ  subTypeOfEntity {lsuc(lzero)}

-- -------------------------------------------------------------------------------------------- 
{- Data Risk: 
A Data Risk is Risk that refers to the potential for loss resulting from inadequate structure and usage of an Information Asset.
-}
-- Aggregate Member : Data Risk
DataRisk : ClassOfMixedOrderEntity
DataRisk = MixedOrderEntity



--  DataRisk is subTypeOf Risk
st-582e78cd66f6b425-0e55219466f11fd7 : DataRisk ⊏⋆ₑ Risk
st-582e78cd66f6b425-0e55219466f11fd7 = polySubTypeOf-identity

-- Membership relation
membershipOfDataRisk :  Linkage InformationAsset DataRisk
membershipOfDataRisk = make_upwardNestingRelation "dataRisk membership" "nested dataRisk"

-- Aggregation relation
aggregationOfDataRiskTypeDataRisk :  Linkage DataRisk DataRiskType
aggregationOfDataRiskTypeDataRisk = make_Relation "DataRiskType aggregation" "aggregated DataRiskType"

{- dataRisk : derived relation obtained by composing
   membershipOfDataRisk and aggregationOfDataRiskTypeDataRisk
   It directly links an Information Asset to the final aggregated DataRiskType
   hiding the reifying DataRisk
-}
dataRisk : Linkage InformationAsset DataRiskType
dataRisk = membershipOfDataRisk  ∘  aggregationOfDataRiskTypeDataRisk



-- -------------------------------------------------------------------------------------------- 
{- Information Asset Relationship: 
An Information Asset Relationship is a characteristic of an Information Asset.It can be either an Information Relation or a Property Component.
-}
-- Aggregate Member : Information Asset Relationship
InformationAssetRelationship : ClassOfMixedOrderEntity
InformationAssetRelationship = MixedOrderEntity



--  InformationAssetRelationship withAspect AggregateMember
st-18eb1f335fdb6e7f-23d5ddef68514dba : InformationAssetRelationship ⊏ₐₑ (AggregateMember (lsuc(lzero)))
st-18eb1f335fdb6e7f-23d5ddef68514dba = polySubTypeOf-identity

-- Membership relation
membershipOfInformationAssetRelationship :  Linkage InformationAsset InformationAssetRelationship
membershipOfInformationAssetRelationship = make_upwardNestingRelation "informationAssetRelationship membership" "nested informationAssetRelationship"

-- Aggregation relation
aggregationOfInformationAssetInformationAssetRelationship :  Linkage InformationAssetRelationship InformationAsset
aggregationOfInformationAssetInformationAssetRelationship = make_Relation "InformationAsset aggregation" "aggregated InformationAsset"

{- informationAssetRelationship : derived relation obtained by composing
   membershipOfInformationAssetRelationship and aggregationOfInformationAssetInformationAssetRelationship
   It directly links an Information Asset to the final aggregated InformationAsset
   hiding the reifying InformationAssetRelationship
-}
informationAssetRelationship : Linkage InformationAsset InformationAsset
informationAssetRelationship = membershipOfInformationAssetRelationship  ∘  aggregationOfInformationAssetInformationAssetRelationship


