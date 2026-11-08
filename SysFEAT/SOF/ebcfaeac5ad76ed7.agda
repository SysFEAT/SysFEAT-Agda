{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Individual Asset: 
An Individual Asset is an Individual which is used in the description of the enterprise and its systems.Individual Assets can be qualified by Condition Scale Values.

Documentation : https://framework.sysfeat.com/pages/ebcfaeac5ad76ed7.htm

External references:
  OpenGroup - TOGAF - Architecture Building Blocks: https://pubs.opengroup.org/togaf-standard/architecture-content/chap04.html#tag_04_02_01
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.ebcfaeac5ad76ed7 where -- ========== IndividualAsset

open import Agda.Primitive
open import SysFEAT.UpperOntology.28f07b2354be0d69 public -- BoundedIndividual
open import SysFEAT.SOF.a4a5b3f855585ce1 public -- AssetType
open import SysFEAT.SOF.31cf36be6ad16caa public -- Period
open import SysFEAT.SOF.515c6a856893324e public -- AssetProperty
open import SysFEAT.SOF.21ed231d689c0679 public -- ConditionProperty
open import SysFEAT.SOF.8d5e986f552e28d5 public -- Location

IndividualAsset : AssetType
IndividualAsset = BoundedIndividual

--  IndividualAsset is subTypeOf BoundedIndividual
st-ebcfaeac5ad76ed7-28f07b2354be0d69 : IndividualAsset ⊏ₑ BoundedIndividual
st-ebcfaeac5ad76ed7-28f07b2354be0d69 = polySubTypeOf-identity

postulate -- IndividualAsset is PowerInstanceOf Asset Type
  pi-12b0296966e9378b : IndividualAsset ∷ₚₑ AssetType

-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- happens during: -}
happensduring :  Linkage IndividualAsset Period
happensduring = make_meronymyRelation "happens during" "happens during"

postulate -- happensduring is subTypeOf meronymyRelation
  st-391539766ad51c09-e818e86d6ad45d7a  : happensduring  ⊏⋆ᵣ  meronymyRelation

-- -------------------------------------------------------------------------------------------- 
{- Qualifying Asset Property: -}
qualifyingAssetProperty :  Linkage IndividualAsset AssetProperty
qualifyingAssetProperty = make_Relation "Qualifying Asset Property" "Qualifying Asset Property"

postulate -- qualifyingAssetProperty is subTypeOf propertyOfIndividual
  st-190c414968965640-19763dbb68926a48  : qualifyingAssetProperty  ⊏⋆ᵣ  propertyOfIndividual 

-- -------------------------------------------------------------------------------------------- 
{- Qualifying Condition Property: 
The classification of Individual Assets  by Condition Propertys.
-}
qualifyingConditionProperty :  Linkage IndividualAsset ConditionProperty
qualifyingConditionProperty = make_Relation "Qualifying Condition Property" "Qualifying Condition Property"

postulate -- qualifyingConditionProperty is subTypeOf qualifyingAssetProperty
  st-21ed5601689c1844-190c414968965640  : qualifyingConditionProperty  ⊏⋆ᵣ  qualifyingAssetProperty

-- -------------------------------------------------------------------------------------------- 
{- Located at: -}
locatedat :  Linkage IndividualAsset Location
locatedat = make_meronymyRelation "Located at" "Located at"

postulate -- locatedat is subTypeOf meronymyRelation
  st-b3c3c99d6ad02557-e818e86d6ad45d7a  : locatedat  ⊏⋆ᵣ  meronymyRelation
