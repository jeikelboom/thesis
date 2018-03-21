
%include  lhs2TeX.fmt
%include lhs2TeX.sty

\begin{Listing}
\begin{code}
mylength :: [a] -> Int
mylength []         = 0
mylength (x:xs)  = 1 + mylength xs
\end{code}
\caption{The standard recursive solution}\label{sol1}
\end{Listing}

