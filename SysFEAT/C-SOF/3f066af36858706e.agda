{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Vocabulary Block: 
A Business Vocabulary Block is a Dictionary Lexical Block used in the designation of Conceptual Elements.

Documentation : https://framework.sysfeat.com/pages/3f066af36858706e.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.C-SOF.3f066af36858706e where -- ========== BusinessVocabularyBlock

open import Agda.Primitive
open import SysFEAT.C-SOF.9397d98f6877c4e5 public -- DictionaryLexicalBlock

BusinessVocabularyBlock : ∀ (u : Level) → ClassOfMixedOrderEntity u 
BusinessVocabularyBlock u  = MixedOrderEntity u 


--  BusinessVocabularyBlock is subTypeOf DictionaryLexicalBlock
st-3f066af36858706e-9397d98f6877c4e5 : ∀ {u v} → (BusinessVocabularyBlock u) ⊏⋆ₑ (DictionaryLexicalBlock v)
st-3f066af36858706e-9397d98f6877c4e5 = trivialPolySubTypeOfEntity


-- == Relations =======================
