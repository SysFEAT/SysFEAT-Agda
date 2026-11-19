{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Control Measure: 
A Control Measure is a Resource Operating Asset Type (agent or behavior) that is taken to prevent, eliminate or reduce the occurrence of a hazard that has been identified in the context of an Assurance Case.

Documentation : https://framework.sysfeat.com/pages/f1600ddf67d8444b.htm

External references:
  UCF Glossary - Control Measure: https://compliancedictionary.com/term/379025
  UCF Glossary - Control: https://compliancedictionary.com/term/5788
  OpenGroup - TOGAF - Enterprise MetaModel - Control: https://pubs.opengroup.org/togaf-standard/architecture-content/chap02.html#tag_02_04
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOPAS.f1600ddf67d8444b where -- ========== ControlMeasure

open import Agda.Primitive
open import SysFEAT.EA.4b9477ae68a4926d public -- ControlAsset
open import SysFEAT.R-SOF.f8e61da0621db6fa public -- ResourceOperatingAssetType
open import SysFEAT.SOPAS.582e764f66f6a4cc public -- ControlMeasureCategory
open import SysFEAT.SOPAS.01f1156d689b5ecc public -- ControlDirective

ControlMeasure : BoundedIndividualMetaClass
ControlMeasure = ClassOfBoundedIndividual


--  ControlMeasure withAspect ControlAsset
st-f1600ddf67d8444b-4b9477ae68a4926d : ControlMeasure ⊏ₐₑ ControlAsset (lsuc( lzero))
st-f1600ddf67d8444b-4b9477ae68a4926d = polySubTypeOf-identity

--  ControlMeasure is subTypeOf ResourceOperatingAssetType
st-f1600ddf67d8444b-f8e61da0621db6fa : ControlMeasure ⊏ₑ ResourceOperatingAssetType
st-f1600ddf67d8444b-f8e61da0621db6fa = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Control Measure Category: -}
controlMeasureCategory :  Linkage ControlMeasure ControlMeasureCategory
controlMeasureCategory = make_instanceOf "Control Measure Category" "Control Measure Category"


-- -------------------------------------------------------------------------------------------- 
{- Enforced Control Directive: -}
enforcedControlDirective :  Linkage ControlMeasure ControlDirective
enforcedControlDirective = make_subTypeOf "Enforced Control Directive" "Enforced Control Directive"

