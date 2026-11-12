{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Set of Condition Properties: 
A Set of Condition Properties is a And combination of Condition Propertys.Example: . Delivery time of 30 minutes, at a cost ranging between $8.50 and $10, in stormy conditions.

Documentation : https://framework.sysfeat.com/pages/21ed5bf7689c1ca3.htm

External references:
  OMG - UAF - ActualMeasurementSet: https://www.omg.org/spec/UAF/1.2/Beta1/DMM/PDF#ActualMeasurementSet
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.21ed5bf7689c1ca3 where -- ========== SetOfConditionProperties

open import Agda.Primitive
open import SysFEAT.SOF.21ed231d689c0679 public -- ConditionProperty
open import SysFEAT.UpperOntology.3e525e406ab05b0d public -- CompositeProperty
open import SysFEAT.SOF.e53af87666e37fcd public -- SetOfEnvironmentalConditionType

SetOfConditionProperties : SetOfEnvironmentalConditionType
SetOfConditionProperties = CompositeProperty

--  SetOfConditionProperties is subTypeOf ConditionProperty
st-21ed5bf7689c1ca3-21ed231d689c0679 : SetOfConditionProperties ⊏ₑ ConditionProperty
st-21ed5bf7689c1ca3-21ed231d689c0679 = polySubTypeOf-identity

--  SetOfConditionProperties is subTypeOf CompositeProperty
st-21ed5bf7689c1ca3-3e525e406ab05b0d : SetOfConditionProperties ⊏ₑ CompositeProperty
st-21ed5bf7689c1ca3-3e525e406ab05b0d = polySubTypeOf-identity

postulate -- SetOfConditionProperties is PowerInstanceOf Set of Environmental Condition Type
  pi-38f6dc1a6aed2f4d : SetOfConditionProperties ∷ₚₑ SetOfEnvironmentalConditionType

-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Set of Environmental Condition Type: -}
setOfEnvironmentalConditionType :  Linkage SetOfConditionProperties SetOfEnvironmentalConditionType
setOfEnvironmentalConditionType = make_instanceOf "Set of Environmental Condition Type" "Set of Environmental Condition Type"

postulate -- setOfEnvironmentalConditionType is subTypeOf conditionPropertyType
  st-21ed5c28689c1d28-21ed5a16689c1a59  : setOfEnvironmentalConditionType  ⊏⋆ᵣ  conditionPropertyType

-- -------------------------------------------------------------------------------------------- 
{- Combined Property: 
And combination of a Condition Propertys.
-}
-- Aggregate Member : Combined Property
CombinedProperty : AbstractEntityMetaClass
CombinedProperty = ClassOfAbstractEntity



--  CombinedProperty is subTypeOf PropertyPart
st-dd26df9f689e4681-3e5261066ab05e0f : CombinedProperty ⊏⋆ₑ PropertyPart
st-dd26df9f689e4681-3e5261066ab05e0f = polySubTypeOf-identity

-- Membership relation
membershipOfCombinedProperty :  Linkage SetOfConditionProperties CombinedProperty
membershipOfCombinedProperty = make_upwardNestingRelation "combinedProperty membership" "nested combinedProperty"

-- Aggregation relation
aggregationOfConditionPropertyCombinedProperty :  Linkage CombinedProperty ConditionProperty
aggregationOfConditionPropertyCombinedProperty = make_Relation "ConditionProperty aggregation" "aggregated ConditionProperty"

{- combinedProperty : derived relation obtained by composing
   membershipOfCombinedProperty and aggregationOfConditionPropertyCombinedProperty
   It directly links an Set of Condition Properties to the final aggregated ConditionProperty
   hiding the reifying CombinedProperty
-}
combinedProperty : Linkage SetOfConditionProperties ConditionProperty
combinedProperty = membershipOfCombinedProperty  ∘  aggregationOfConditionPropertyCombinedProperty


