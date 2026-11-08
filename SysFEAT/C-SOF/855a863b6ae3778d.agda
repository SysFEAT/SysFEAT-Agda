{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Concept Domain: 
A Concept Domain is a functional grouping of Conceptual Entity that are relevant to an Operating Domain.For instance, a  Sales Concept Domain  comprises at least the Concepts of  Customer  and  Order  while a standard  Marketing Concept Domain  comprises at least the Concepts of  Market Segment ,  Product  and  Value Proposition .

Documentation : https://framework.sysfeat.com/pages/855a863b6ae3778d.htm

External references:
  DDD - Bounded Context: https://www.dddcommunity.org/resources/ddd_terms?boundedcontext
  Martin Fowler - BoundedContext.html: https://martinfowler.com/bliki/BoundedContext.html
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.C-SOF.855a863b6ae3778d where -- ========== ConceptDomain

open import Agda.Primitive
open import SysFEAT.SOF.cd90e5976ae187c0 public -- InformationDomain
open import SysFEAT.C-SOF.6bf190796859b4ff public -- BusinessDictionaryBlock
open import SysFEAT.C-SOF.229b34eb5b3f79d2 public -- ConceptualEntity

ConceptDomain : ∀ (u : Level) → MetaClass u 
ConceptDomain u  = ClassOfEntity u 


--  ConceptDomain is subTypeOf InformationDomain
st-855a863b6ae3778d-cd90e5976ae187c0 : ∀ {u v} → (ConceptDomain u) ⊏⋆ₑ (InformationDomain v)
st-855a863b6ae3778d-cd90e5976ae187c0 = trivialPolySubTypeOfEntity

--  ConceptDomain is subTypeOf BusinessDictionaryBlock
st-855a863b6ae3778d-6bf190796859b4ff : ∀ {u v} → (ConceptDomain u) ⊏ₘₑ (BusinessDictionaryBlock v)
st-855a863b6ae3778d-6bf190796859b4ff = trivialPolySubTypeOfEntity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Conceptual Entity: -}
conceptualEntity : ∀ {u} →  Linkage (ConceptDomain u) ConceptualEntity
conceptualEntity = make_classOfRelation "Conceptual Entity" "Conceptual Entity"

