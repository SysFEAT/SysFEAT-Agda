{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Policy Framework: 


Documentation : https://framework.sysfeat.com/pages/786b64656abe7ace.htm

External references:
  UCF Glossary - Policy and Procedure: https://compliancedictionary.com/term/255189
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.786b64656abe7ace where -- ========== BusinessPolicyFramework

open import Agda.Primitive
open import SysFEAT.EA.786b34fc6abe5efe public -- PolicyFramework
open import SysFEAT.EA.4b945e8668a47f80 public -- PolicyFrameworkAsset

BusinessPolicyFramework : PolicyFrameworkClass
BusinessPolicyFramework = PolicyFramework


--  BusinessPolicyFramework is subTypeOf PolicyFramework
st-786b64656abe7ace-786b34fc6abe5efe : BusinessPolicyFramework ⊏ₑ PolicyFramework
st-786b64656abe7ace-786b34fc6abe5efe = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Packaged Framework Asset: -}
packagedFrameworkAsset : ∀ {u} →  Linkage BusinessPolicyFramework (PolicyFrameworkAsset u)
packagedFrameworkAsset = make_nestingRelation "Packaged Framework Asset" "Packaged Framework Asset"

