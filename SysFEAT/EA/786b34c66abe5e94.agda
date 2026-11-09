{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Regulatory Framework: 


Documentation : https://framework.sysfeat.com/pages/786b34c66abe5e94.htm

External references:
  UCF Glossary - Regulatory Framework: https://compliancedictionary.com/term/386219
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.786b34c66abe5e94 where -- ========== RegulatoryFramework

open import Agda.Primitive
open import SysFEAT.EA.786b34fc6abe5efe public -- PolicyFramework
open import SysFEAT.EA.4b947d2068a49dbb public -- RegulatoryAsset

RegulatoryFramework : PolicyFrameworkClass
RegulatoryFramework = PolicyFramework


--  RegulatoryFramework is subTypeOf PolicyFramework
st-786b34c66abe5e94-786b34fc6abe5efe : RegulatoryFramework ⊏ₑ PolicyFramework
st-786b34c66abe5e94-786b34fc6abe5efe = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Packaged Regulatory Asset: -}
packagedRegulatoryAsset : ∀ {u} →  Linkage RegulatoryFramework (RegulatoryAsset u)
packagedRegulatoryAsset = make_nestingRelation "Packaged Regulatory Asset" "Packaged Regulatory Asset"

postulate -- packagedRegulatoryAsset is subTypeOf packagedPolicyAsset
  st-4b947d9d68a49ec6-4b94598868a47965  : packagedRegulatoryAsset  ⊏⋆ᵣ  packagedPolicyAsset
