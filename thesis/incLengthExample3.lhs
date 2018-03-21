
%include  lhs2TeX.fmt
%include lhs2TeX.sty



\begin{Listing}
\begin{code}
mylength :: [a] -> Int
mylength = length

-- 
mylength :: [a] -> Int
mylength xs = if null xs then 0 else 1+ mylength (tail xs)

--
mylength :: [a] -> Int
mylength  = mylength' 0  where
    mylength' n [] = n
    mylength' n (x:xs) = (mylength' $! (n+1)) xs

--
mylength :: [a] -> Int
mylength  = foldl (\x _ -> x+1) 0
\end{code}
\caption{Some other solutions}\label{sol2}
\end{Listing}
