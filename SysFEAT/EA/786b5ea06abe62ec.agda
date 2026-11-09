{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Control Framework: 
A Control Framework is a set of Control Directives originating from Regulatory Frameworks and their Regulation Articles.

Documentation : https://framework.sysfeat.com/pages/786b5ea06abe62ec.htm

External references:
  UCF - What is a compliance framework: https://www.unifiedcompliance.com/education/what-is-a-compliance-framework/
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.786b5ea06abe62ec where -- ========== ControlFramework

open import Agda.Primitive
open import SysFEAT.EA.786b34fc6abe5efe public -- PolicyFramework
open import SysFEAT.EA.4b9477ae68a4926d public -- ControlAsset

ControlFramework : PolicyFrameworkClass
ControlFramework = PolicyFramework


--  ControlFramework is subTypeOf PolicyFramework
st-786b5ea06abe62ec-786b34fc6abe5efe : ControlFramework ⊏ₑ PolicyFramework
st-786b5ea06abe62ec-786b34fc6abe5efe = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Packaged Control Asset: -}
packagedControlAsset : ∀ {u} →  Linkage ControlFramework (ControlAsset u)
packagedControlAsset = make_nestingRelation "Packaged Control Asset" "Packaged Control Asset"

postulate -- packagedControlAsset is subTypeOf packagedPolicyAsset
  st-4b9472f668a489c8-4b94598868a47965  : packagedControlAsset  ⊏⋆ᵣ  packagedPolicyAsset
