{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Dictionary Lexical Scope: 
A Dictionary Lexical Scope is a kind of Information Lexical Scope for Business Dictionary Blocks.

Documentation : https://framework.sysfeat.com/pages/6c5f6da668587c34.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.C-SOF.6c5f6da668587c34 where -- ========== DictionaryLexicalScope

open import Agda.Primitive
open import SysFEAT.SOF.6c5f808b68587e49 public -- InformationLexicalScope
open import SysFEAT.C-SOF.9397d98f6877c4e5 public -- DictionaryLexicalBlock

DictionaryLexicalScope : ∀ (u : Level) → ClassOfMixedOrderEntity u
DictionaryLexicalScope u = MixedOrderEntity u


--  DictionaryLexicalScope is subTypeOf InformationLexicalScope
st-6c5f6da668587c34-6c5f808b68587e49 : ∀ {u v} → DictionaryLexicalScope u ⊏⋆ₑ InformationLexicalScope v
st-6c5f6da668587c34-6c5f808b68587e49 = trivialPolySubTypeOfEntity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Scoped Dictionary Block: -}
scopedDictionaryBlock : ∀ {u v} →  Linkage (DictionaryLexicalScope u) (DictionaryLexicalBlock v)
scopedDictionaryBlock = make_nestingRelation "Scoped Dictionary Block" "Scoped Dictionary Block"

postulate -- scopedDictionaryBlock is subTypeOf scopedInformationBlock
  st-6bf192976859b8ba-6c5f82aa68588092  : ∀ {u v} → scopedDictionaryBlock {u} {v}  ⊏⋆ᵣ  scopedInformationBlock {u} {v}
