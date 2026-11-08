{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Asset Type: 
An Asset Type is a Class of Individual which is used in the description of the enterprise and its systems, such as Action Process Typees, Department Types, Applications, Location Types, Period Types.Functional Assets encompasse all Asset Types used to describe why and how systems operate/function. This includes the Operating Eco-System where system operates to fulfill these purposes (Agent Types and their  Behavior Types).Asset Type include:1. Blocks defining results of Behavior Types of the enterprise or its sub-systems, that benefit to it internal or external customers : Outcome Event,2. Blocks used to describe information: Information Asset.3. Blocks used to describe how the enterprise operates: Operating Asset Types (Agent Type, Behavior Type, Service Interface).All Functional Assets are constrained by Policys and are exposed to Risk Types.

Documentation : https://framework.sysfeat.com/pages/a4a5b3f855585ce1.htm

External references:
  Russell Ackoff - Choice & Communication - FunctionalClass: ../resources/external-references/Ackoff-1967-Choice-Communication-and-Conflict.pdf#FunctionalClass
  de Weck - The three dimensions of complexity: https://complexsystems.mst.edu/media/conference/complexsystems/documents/de_Weck_CAS_Keynote_Nov_2015_updated.pdf#page=40
  OpenGroup - ArchiMate - Element: https://pubs.opengroup.org/architecture/archimate32-doc/ch-Language-Structure.html#sec-Top-Level-Language-Structure
  OMG - UAF - Asset: https://www.omg.org/spec/UAF/1.2/Beta1/DMM/PDF#Asset
  Wikipedia - Software Functional Architecture: https://en.wikipedia.org/wiki/Functional_software_architecture#:~:text=A%20functional%20software%20architecture%20(FSA,%2Doperative%20information%2Ddriven%20enterprise.
  SEBoK - Functional Architecture: https://www.sebokwiki.org/wiki/Functional_Architecture_(glossary)
  OpenGroup - TOGAF - Architecture Building Blocks: https://pubs.opengroup.org/togaf-standard/architecture-content/chap04.html#tag_04_02_01
  WordNet - Product (Production): https://en-word.net/ili/i57699
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.a4a5b3f855585ce1 where -- ========== AssetType

open import Agda.Primitive
open import SysFEAT.SOF.0eb95f356855bf94 public -- AssetBlock
open import SysFEAT.UpperOntology.3492c53e619642ed public -- ClassOfBoundedIndividual
open import SysFEAT.SOF.515c6a856893324e public -- AssetProperty
open import SysFEAT.SOF.e53af71366e37de2 public -- ConditionPropertyType
open import SysFEAT.UpperOntology.60876d5c68de82f2 public -- BoundedIndividualMetaClass
open import SysFEAT.SOF.4efc6b346ae48db7 public -- AssetCategory
open import SysFEAT.SOF.f69620466a0f9c2f public -- AssetCategoryFamily
open import SysFEAT.SOF.0e55206a66f11ec5 public -- RiskType
open import SysFEAT.SOF.190c7429689664b5 public -- Policy

AssetType : BoundedIndividualMetaClass
AssetType = ClassOfBoundedIndividual

--  AssetType withAspect AssetBlock
st-a4a5b3f855585ce1-0eb95f356855bf94 : AssetType ⊏ₐₑ (AssetBlock (lsuc(lzero)))
st-a4a5b3f855585ce1-0eb95f356855bf94 = polySubTypeOf-identity

--  AssetType is subTypeOf ClassOfBoundedIndividual
st-a4a5b3f855585ce1-3492c53e619642ed : AssetType ⊏ₑ ClassOfBoundedIndividual
st-a4a5b3f855585ce1-3492c53e619642ed = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Asset Type Qualification: 
Qualification of an Asset Type by an Asset Property.
-}
assetTypeQualification :  Linkage AssetType AssetProperty
assetTypeQualification = make_subTypeOf "Asset Type Qualification" "Asset Type Qualification"

postulate -- assetTypeQualification is subTypeOf qualifyingProperty
  st-a04ea2346ae7302f-16621f9a689131e0  : assetTypeQualification  ⊏⋆ᵣ  qualifyingProperty

-- -------------------------------------------------------------------------------------------- 
{- Specialized Asset: 
A specialization of Asset Types.
-}
specializedAsset :  Linkage AssetType AssetType
specializedAsset = make_subTypeOf "Specialized Asset" "Specialized Asset"

postulate -- specializedAsset is subTypeOf specializedClassOfBoundedIndividual
  st-12b0287266e936d5-e53a627766e4b4cd  : specializedAsset  ⊏⋆ᵣ  specializedClassOfBoundedIndividual

-- -------------------------------------------------------------------------------------------- 
{- Realized Functional Asset: 
A kind of specialization between an implementing Functional Asset and its abstract Realized Functional Asset.Realization relationships are the foundation to establish the mapping between Functional Assets that belong to different Conceptualization Levels.
-}
realizedFunctionalAsset :  Linkage AssetType AssetType
realizedFunctionalAsset = make_subTypeOf "Realized Functional Asset" "Realized Functional Asset"

postulate -- realizedFunctionalAsset is subTypeOf specializedClassOfIndividual
  st-7dc1907b684951ae-e429632e66ec72ab  : realizedFunctionalAsset  ⊏⋆ᵣ  specializedClassOfIndividual

-- -------------------------------------------------------------------------------------------- 
{- Applicable Condition Type: 
Set of Condition Property Types that can be applied to an Asset Type.
-}
applicableConditionType :  Linkage AssetType ConditionPropertyType
applicableConditionType = make_classOfRelation "Applicable Condition Type" "Applicable Condition Type"

postulate -- applicableConditionType is subTypeOf categorizingFamily
  st-c2f2709166ea21a0-d9b8dfaa6ae044ee  : applicableConditionType  ⊏⋆ᵣ  categorizingFamily

-- -------------------------------------------------------------------------------------------- 
{- Asset Categorization: -}
assetCategorization : ∀ {u} →  Linkage AssetType (AssetCategory u)
assetCategorization = make_subTypeOf "Asset Categorization" "Asset Categorization"

postulate -- assetCategorization is subTypeOf conceptCategorization
  st-4efc6b426ae48e32-8d1fcd3c6ae82f99  : assetCategorization  {lsuc(lzero)}  ⊏⋆ᵣ  conceptCategorization {lsuc(lzero)} {lsuc(lzero)}

-- -------------------------------------------------------------------------------------------- 
{- Asset Categorization Scheme: -}
assetCategorizationScheme : ∀ {u} →  Linkage AssetType (AssetCategoryFamily u)
assetCategorizationScheme = make_classOfRelation "Asset Categorization Scheme" "Asset Categorization Scheme"

postulate -- assetCategorizationScheme is subTypeOf categorizingFamily
  st-f69620606a0f9c94-d9b8dfaa6ae044ee  : assetCategorizationScheme  {lsuc(lsuc(lzero))}  ⊏⋆ᵣ  categorizingFamily

-- -------------------------------------------------------------------------------------------- 
{- Risk: 
A  Risk refers to the potential for loss resulting from inadequate structure or behavior of a Functional Asset.
-}
-- Aggregate Member : Risk
Risk : ClassOfMixedOrderEntity
Risk = MixedOrderEntity



--  Risk withAspect UnboundedMember
st-0e55219466f11fd7-8cfaf71a6852b042 : Risk ⊏ₐₑ (UnboundedMember (lsuc(lsuc(lzero))))
st-0e55219466f11fd7-8cfaf71a6852b042 = polySubTypeOf-identity

-- Membership relation
membershipOfRisk :  Linkage AssetType Risk
membershipOfRisk = make_upwardNestingRelation "risk membership" "nested risk"

-- Aggregation relation
aggregationOfRiskTypeRisk :  Linkage Risk RiskType
aggregationOfRiskTypeRisk = make_Relation "RiskType aggregation" "aggregated RiskType"

{- risk : derived relation obtained by composing
   membershipOfRisk and aggregationOfRiskTypeRisk
   It directly links an Asset Type to the final aggregated RiskType
   hiding the reifying Risk
-}
risk : Linkage AssetType RiskType
risk = membershipOfRisk  ∘  aggregationOfRiskTypeRisk



-- -------------------------------------------------------------------------------------------- 
{- Policy Conformance: 
A Policy Conformance is the conformity requirement that applies a Functional Asset.
-}
-- Aggregate Member : Policy Conformance
PolicyConformance : AbstractEntityMetaClass
PolicyConformance = ClassOfAbstractEntity



--  PolicyConformance is subTypeOf AggregateQualification
st-01f1189f689b641d-b83e30bc696f51e5 : PolicyConformance ⊏ₑ AggregateQualification
st-01f1189f689b641d-b83e30bc696f51e5 = polySubTypeOf-identity

-- Membership relation
membershipOfPolicyConformance :  Linkage AssetType PolicyConformance
membershipOfPolicyConformance = make_upwardNestingRelation "policyConformance membership" "nested policyConformance"

-- Aggregation relation
aggregationOfPolicyPolicyConformance :  Linkage PolicyConformance Policy
aggregationOfPolicyPolicyConformance = make_Relation "Policy aggregation" "aggregated Policy"

{- policyConformance : derived relation obtained by composing
   membershipOfPolicyConformance and aggregationOfPolicyPolicyConformance
   It directly links an Asset Type to the final aggregated Policy
   hiding the reifying PolicyConformance
-}
policyConformance : Linkage AssetType Policy
policyConformance = membershipOfPolicyConformance  ∘  aggregationOfPolicyPolicyConformance


