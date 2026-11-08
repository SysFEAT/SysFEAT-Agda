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

DictionaryLexicalScope : ∀ (u : Level) → ClassOfMixedOrderEntity u 
DictionaryLexicalScope u  = MixedOrderEntity u 


--  DictionaryLexicalScope is subTypeOf InformationLexicalScope
st-6c5f6da668587c34-6c5f808b68587e49 : ∀ {u v} → (DictionaryLexicalScope u) ⊏⋆ₑ (InformationLexicalScope v)
st-6c5f6da668587c34-6c5f808b68587e49 = trivialPolySubTypeOfEntity


-- == Relations =======================
