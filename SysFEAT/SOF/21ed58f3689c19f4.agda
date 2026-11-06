{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Environmental Property: 
An Environmental Property is a specific value of an Environmental Property Type.Environmental Propertys are used as constraints on Asset Blocks in the context of non-functional requirement analysis and Value Proposition analysis.Examples:- Muddy, frozen ground, deep snow (Terrain Type),- Broad daylight, dusk, moonlit  (Light condition).

Documentation : https://framework.sysfeat.com/pages/21ed58f3689c19f4.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.21ed58f3689c19f4 where -- ========== EnvironmentalProperty

open import Agda.Primitive
open import SysFEAT.SOF.21ed231d689c0679 public -- ConditionProperty
open import SysFEAT.UpperOntology.3e525f966ab05bd8 public -- ElementaryProperty
open import SysFEAT.SOF.e53af85b66e37f78 public -- EnvironmentalPropertyType

EnvironmentalProperty : EnvironmentalPropertyType
EnvironmentalProperty = ElementaryProperty

--  EnvironmentalProperty is subTypeOf ConditionProperty
st-21ed58f3689c19f4-21ed231d689c0679 : EnvironmentalProperty ⊏ₑ ConditionProperty
st-21ed58f3689c19f4-21ed231d689c0679 = polySubTypeOf-identity

--  EnvironmentalProperty is subTypeOf ElementaryProperty
st-21ed58f3689c19f4-3e525f966ab05bd8 : EnvironmentalProperty ⊏ₑ ElementaryProperty
st-21ed58f3689c19f4-3e525f966ab05bd8 = polySubTypeOf-identity

postulate -- EnvironmentalProperty is PowerInstanceOf Environmental Property Type
  pi-38f6c9276aed2929 : EnvironmentalProperty ∷ₚₑ EnvironmentalPropertyType

-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Environmental Property Type: -}
environmentalPropertyType :  Linkage EnvironmentalProperty EnvironmentalPropertyType
environmentalPropertyType = make_classOfRelation "Environmental Property Type" "Environmental Property Type"

postulate -- environmentalPropertyType is subTypeOf conditionPropertyType
  st-21ed5b67689c1c35-21ed5a16689c1a59  : environmentalPropertyType  ⊏⋆ᵣ  conditionPropertyType
