{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Asset Type: 
An Asset Type is a Class of Individual which is used in the description of the enterprise and its systems, such as Action Process Typees, Department Types, Applications, Location Types, Period Types.

Documentation : https://framework.sysfeat.com/pages/a4a5b3f855585ce1.htm

External references:
  OpenGroup - TOGAF - Architecture Building Blocks: https://pubs.opengroup.org/togaf-standard/architecture-content/chap04.html#tag_04_02_01
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.a4a5b3f855585ce1 where -- ========== AssetType

open import Agda.Primitive
open import SysFEAT.SOF.0eb95f356855bf94 public -- AssetBlock
open import SysFEAT.UpperOntology.3492c53e619642ed public -- ClassOfBoundedIndividual
open import SysFEAT.SOF.e53af71366e37de2 public -- ConditionPropertyType
open import SysFEAT.UpperOntology.60876d5c68de82f2 public -- BoundedIndividualMetaClass
open import SysFEAT.SOF.4efc6b346ae48db7 public -- AssetCategory
open import SysFEAT.SOF.f69620466a0f9c2f public -- AssetCategoryFamily
open import SysFEAT.SOF.515c6a856893324e public -- AssetProperty

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
  st-4efc6b426ae48e32-8d1fcd3c6ae82f99  : assetCategorization  ⊏⋆ᵣ  conceptCategorization {lzero} {lsuc(lzero)} {lzero} {lsuc(lzero)}

-- -------------------------------------------------------------------------------------------- 
{- Asset Categorization Scheme: -}
assetCategorizationScheme : ∀ {u} →  Linkage AssetType (AssetCategoryFamily u)
assetCategorizationScheme = make_classOfRelation "Asset Categorization Scheme" "Asset Categorization Scheme"

postulate -- assetCategorizationScheme is subTypeOf categorizingFamily
  st-f69620606a0f9c94-d9b8dfaa6ae044ee  : assetCategorizationScheme  {lsuc(lsuc(lzero))}  ⊏⋆ᵣ  categorizingFamily

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
