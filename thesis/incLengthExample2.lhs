
%include  lhs2TeX.fmt
%include lhs2TeX.sty

\begin{Listing}
\begin{code}
mylength [1,2,3] =
mylength (1:[2,3]) =
1 + mylength (2:[3]) =
1 + (1 + mylength (3:[])) =
1 + (1 + (1 + (mylength []))) = 
1 + (1 + (1 + 0)) = 
1 + (1 + 1) = 
1 + 2 = 
3 
\end{code}
\caption{Expression evaluation}\label{list:eqreason}
\end{Listing}
