
%include  lhs2TeX.fmt
%include lhs2TeX.sty

\begin{listing}
\begin{code}

learningTaskErrorRule :: Rule
learningTaskErrorRule = 
    [learningTaskState FINI, learningTaskHasErrors] 
    =-> 
    [taskInError]


learningTaskSuccessRule :: Rule
learningTaskSuccessRule = 
    [learningTaskState FINI, learningTaskSucces, objectivesMet] 
    =-> 
    [taskSuccess, updateStudentModel]


abandonedRule :: Rule
abandonedRule = 
    [learningTaskState FINI,learningTaskSucces, notP objectivesMet] 
    =-> 
    [taskFailed]

readyRule :: Rule
readyRule = 
    [learningTaskState INIT, prerequisitesMet] 
    =-> 
    [taskReady]


\end{code}
\caption{The rules for learning task finishing}\label{fig:ltFiniRules}
\end{listing}

