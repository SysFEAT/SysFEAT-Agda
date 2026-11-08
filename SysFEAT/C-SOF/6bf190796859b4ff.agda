{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Dictionary Block: 
A Business Dictionary Block is an Business Dictionary Block involved in informative descriptions of the enterprise.Business Dictionary Blocks range from Conceptual Information Assets to Concept Domain Maps..Conceptual Information Assets are managed in Data Catalogs.

Documentation : https://framework.sysfeat.com/pages/6bf190796859b4ff.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.C-SOF.6bf190796859b4ff where -- ========== BusinessDictionaryBlock

open import Agda.Primitive
open import SysFEAT.C-SOF.9397d98f6877c4e5 public -- DictionaryLexicalBlock

BusinessDictionaryBlock : ∀ (u : Level) → ClassOfMixedOrderEntity u 
BusinessDictionaryBlock u  = MixedOrderEntity u 


--  BusinessDictionaryBlock is subTypeOf DictionaryLexicalBlock
st-6bf190796859b4ff-9397d98f6877c4e5 : ∀ {u v} → (BusinessDictionaryBlock u) ⊏⋆ₑ (DictionaryLexicalBlock v)
st-6bf190796859b4ff-9397d98f6877c4e5 = trivialPolySubTypeOfEntity


-- == Relations =======================
