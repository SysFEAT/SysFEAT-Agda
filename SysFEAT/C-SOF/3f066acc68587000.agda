{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Vocabulary: 
A Business Vocabulary is a Model Lexical Scope that provides, for a given Business Dictionary, designation to concepts: Terms, Concept Name and Concept Synonyms.

Documentation : https://framework.sysfeat.com/pages/3f066acc68587000.htm

External references:
  OMG - SBVR - Vocabulary: https://www.omg.org/spec/SBVR/1.5/PDF#page=140
  WordNet - Vocabulary: https://en-word.net/ili/i66619
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.C-SOF.3f066acc68587000 where -- ========== BusinessVocabulary

open import Agda.Primitive
open import SysFEAT.SOF.0eb95db46855bdd5 public -- ModelLexicalScope
open import SysFEAT.C-SOF.3f066af36858706e public -- BusinessVocabularyBlock

BusinessVocabulary : ∀ (u : Level) → ClassOfMixedOrderEntity u 
BusinessVocabulary u  = MixedOrderEntity u 


--  BusinessVocabulary is subTypeOf ModelLexicalScope
st-3f066acc68587000-0eb95db46855bdd5 : ∀ {u v} → (BusinessVocabulary u) ⊏⋆ₑ (ModelLexicalScope v)
st-3f066acc68587000-0eb95db46855bdd5 = trivialPolySubTypeOfEntity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Packaged Vocabulary Block: -}
packagedVocabularyBlock : ∀ {u v} →  Linkage (BusinessVocabulary u) (BusinessVocabularyBlock v)
packagedVocabularyBlock = make_nestingRelation "Packaged Vocabulary Block" "Packaged Vocabulary Block"

postulate -- packagedVocabularyBlock is subTypeOf scopedDictionaryBlock
  st-6c5f6d3968587b98-6bf192976859b8ba  : ∀ {u v} → packagedVocabularyBlock {u} {v}  ⊏⋆ᵣ  scopedDictionaryBlock {u} {v}
