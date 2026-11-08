{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Concept View: 
A Concept View specifies an aspect of a Conceptual Entity based on the selection of characteristics and relationship of this Conceptual Entity that matter for a particular processing.

Documentation : https://framework.sysfeat.com/pages/229b33d95b3f7993.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.C-SOF.229b33d95b3f7993 where -- ========== ConceptView

open import Agda.Primitive
open import SysFEAT.C-SOF.229b34eb5b3f79d2 public -- ConceptualEntity

ConceptView : ClassOfElement
ConceptView = Element


--  ConceptView is subTypeOf ConceptualEntity
st-229b33d95b3f7993-229b34eb5b3f79d2 : ConceptView ⊏ₑ ConceptualEntity
st-229b33d95b3f7993-229b34eb5b3f79d2 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Base Type: -}
baseType :  Linkage ConceptView ConceptualEntity
baseType = make_subTypeOf "Base Type" "Base Type"

postulate -- baseType is subTypeOf specializedClassOfIndividual
  st-40cd57cc6ade30eb-e429632e66ec72ab  : baseType  ⊏⋆ᵣ  specializedClassOfIndividual

-- -------------------------------------------------------------------------------------------- 
{- Embedding Member: -}
-- Aggregate Member : Embedding Member
EmbeddingMember : ClassOfMixedOrderEntity
EmbeddingMember = MixedOrderEntity



--  EmbeddingMember is subTypeOf ConceptRelation
st-dfa4e11c5ebb489a-f654f7e85ebb76fa : EmbeddingMember ⊏ₑ ConceptRelation
st-dfa4e11c5ebb489a-f654f7e85ebb76fa = polySubTypeOf-identity

-- Membership relation
membershipOfEmbeddingMember :  Linkage ConceptView EmbeddingMember
membershipOfEmbeddingMember = make_upwardNestingRelation "embeddingMember membership" "nested embeddingMember"

-- Aggregation relation
dFA4E11C5EBB489E :  Linkage EmbeddingMember ConceptualEntity
dFA4E11C5EBB489E = make_Relation "ConceptualEntity aggregation" "aggregated ConceptualEntity"

{- embeddingMember : derived relation obtained by composing
   membershipOfEmbeddingMember and dFA4E11C5EBB489E
   It directly links an Concept View to the final aggregated ConceptualEntity
   hiding the reifying EmbeddingMember
-}
embeddingMember : Linkage ConceptView ConceptualEntity
embeddingMember = membershipOfEmbeddingMember  ∘  dFA4E11C5EBB489E



-- -------------------------------------------------------------------------------------------- 
{- Referencing Member: -}
-- Aggregate Member : Referencing Member
ReferencingMember : ClassOfMixedOrderEntity
ReferencingMember = MixedOrderEntity



--  ReferencingMember is subTypeOf ConceptRelation
st-dfa4e1325ebb4926-f654f7e85ebb76fa : ReferencingMember ⊏ₑ ConceptRelation
st-dfa4e1325ebb4926-f654f7e85ebb76fa = polySubTypeOf-identity

-- Membership relation
membershipOfReferencingMember :  Linkage ConceptView ReferencingMember
membershipOfReferencingMember = make_upwardNestingRelation "referencingMember membership" "nested referencingMember"

-- Aggregation relation
dFA4E1325EBB492A :  Linkage ReferencingMember ConceptualEntity
dFA4E1325EBB492A = make_Relation "ConceptualEntity aggregation" "aggregated ConceptualEntity"

{- referencingMember : derived relation obtained by composing
   membershipOfReferencingMember and dFA4E1325EBB492A
   It directly links an Concept View to the final aggregated ConceptualEntity
   hiding the reifying ReferencingMember
-}
referencingMember : Linkage ConceptView ConceptualEntity
referencingMember = membershipOfReferencingMember  ∘  dFA4E1325EBB492A


