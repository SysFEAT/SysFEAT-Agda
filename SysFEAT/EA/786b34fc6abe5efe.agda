{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Policy Framework: 
A Policy Framework is a container of Policy Assets, defined in laws published by governements or in Policy Frameworks defined by the enterprise.Examples:1) Regulatory Framework2) Business Policy Framework

Documentation : https://framework.sysfeat.com/pages/786b34fc6abe5efe.htm

External references:
  UCF Glossary - Framework: https://compliancedictionary.com/term/572
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.786b34fc6abe5efe where -- ========== PolicyFramework

open import Agda.Primitive
open import SysFEAT.SOF.3aca50c46aa63f3b public -- ReferenceDictionary
open import SysFEAT.SOF.a88122526ad9893a public -- PolicyFrameworkClass
open import SysFEAT.SOF.9397c3d86877842f public -- PolicyAsset

PolicyFramework : PolicyFrameworkClass
PolicyFramework = MixedOrderEntity

--  PolicyFramework is subTypeOf ReferenceDictionary
st-786b34fc6abe5efe-3aca50c46aa63f3b : PolicyFramework ⊏ₑ ReferenceDictionary
st-786b34fc6abe5efe-3aca50c46aa63f3b = polySubTypeOf-identity

postulate -- PolicyFramework is PowerInstanceOf Policy Framework Class
  pi-a88122906ad98a73 : PolicyFramework ∷ₚₑ PolicyFrameworkClass

-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Packaged Policy Asset: -}
packagedPolicyAsset : ∀ {u} →  Linkage PolicyFramework (PolicyAsset u)
packagedPolicyAsset = make_nestingRelation "Packaged Policy Asset" "Packaged Policy Asset"

postulate -- packagedPolicyAsset is subTypeOf scopedModelBlock
  st-4b94598868a47965-0eb96a306855c816  : packagedPolicyAsset  ⊏⋆ᵣ  scopedModelBlock {lzero} {lzero}
postulate -- packagedPolicyAsset is subTypeOf packagedAssetBlock
  st-4b94598868a47965-9397bbda687781e0  : packagedPolicyAsset  ⊏⋆ᵣ  packagedAssetBlock {lzero} {lzero}
postulate -- packagedPolicyAsset is subTypeOf scopedArchitectureBlock
  st-4b94598868a47965-0eb95f9a6855c081  : packagedPolicyAsset  ⊏⋆ᵣ  scopedArchitectureBlock {lzero} {lzero}
