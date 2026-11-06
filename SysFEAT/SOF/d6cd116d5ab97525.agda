{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Information Domain: 
An Information Domain is a family of Information Entity(ies) which constitutes a unit a knowlege required by an Agent Type to operate during Behavior Type execution.

Documentation : https://framework.sysfeat.com/pages/d6cd116d5ab97525.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.d6cd116d5ab97525 where -- ========== InformationDomain

open import Agda.Primitive
open import SysFEAT.SOF.cd90e5976ae187c0 public -- InformationDomain
open import SysFEAT.SOF.6c5f80e468587f06 public -- InformationBlock

InformationDomain : MetaClass
InformationDomain = ClassOfEntity


--  InformationDomain withAspect InformationDomain
st-d6cd116d5ab97525-cd90e5976ae187c0 : InformationDomain ⊏ₐₑ (InformationDomain (lsuc(lzero)))
st-d6cd116d5ab97525-cd90e5976ae187c0 = polySubTypeOf-identity

--  InformationDomain withAspect InformationBlock
st-d6cd116d5ab97525-6c5f80e468587f06 : InformationDomain ⊏ₐₑ (InformationBlock (lsuc(lzero)))
st-d6cd116d5ab97525-6c5f80e468587f06 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Specialized Information Domain: -}
specializedInformationDomain :  Linkage InformationDomain InformationDomain
specializedInformationDomain = make_subTypeOf "Specialized Information Domain" "Specialized Information Domain"

postulate -- specializedInformationDomain is subTypeOf subTypeOfEntity
  st-325a380a66f34efb-8336837268e9448b  : specializedInformationDomain  ⊏⋆ᵣ  subTypeOfEntity {lsuc(lzero)}
