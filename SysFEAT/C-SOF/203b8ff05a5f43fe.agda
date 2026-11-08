{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Concept Domain: 
A Concept Domain is a subset of the Concepts of a Business Dictionary that are relevant to an Operating Domain.For instance, a  Sales Concept Domain  comprises at least the Concepts of  Customer  and  Order  while a standard  Marketing Concept Domain  comprises at least the Concepts of  Market Segment ,  Product  and  Value Proposition .

Documentation : https://framework.sysfeat.com/pages/203b8ff05a5f43fe.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.C-SOF.203b8ff05a5f43fe where -- ========== ConceptDomain

open import Agda.Primitive
open import SysFEAT.C-SOF.6bf190796859b4ff public -- BusinessDictionaryBlock
open import SysFEAT.C-SOF.855a863b6ae3778d public -- ConceptDomain

ConceptDomain : ClassOfMixedOrderEntity
ConceptDomain = MixedOrderEntity


--  ConceptDomain withAspect BusinessDictionaryBlock
st-203b8ff05a5f43fe-6bf190796859b4ff : ConceptDomain ⊏ₐₑ (BusinessDictionaryBlock (lsuc(lzero)))
st-203b8ff05a5f43fe-6bf190796859b4ff = polySubTypeOf-identity

--  ConceptDomain withAspect ConceptDomain
st-203b8ff05a5f43fe-855a863b6ae3778d : ConceptDomain ⊏ₐₑ (ConceptDomain (lsuc(lzero)))
st-203b8ff05a5f43fe-855a863b6ae3778d = polySubTypeOf-identity


-- == Relations =======================
