module ProteinTranslation(proteins) where

proteins :: String -> Maybe [String]
proteins rna
    | null rna = Just []
    | codon `elem` ["UAA", "UAG", "UGA"] = Just []
    | otherwise = (:) (translate codon) <$> proteins rest
    where codon = take 3 rna
          rest  = drop 3 rna
    
translate :: String -> String
translate codon
    | codon == "AUG" = "Methionine"
    | codon == "UGG" = "Tryptophan"
    | codon `elem` ["UUU", "UUC"] = "Phenylalanine"
    | codon `elem` ["UUA", "UUG"] = "Leucine"
    | codon `elem` ["UAU", "UAC"] = "Tyrosine"
    | codon `elem` ["UGU", "UGC"] = "Cysteine"
    | codon `elem` ["UCU", "UCC", "UCA", "UCG"] = "Serine"
    | otherwise = error "invalid codon"
