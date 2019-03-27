# Reinforcement Learning

Goal directed learning for an agent interacting with an environment.

Beyond the agent and the environment, one can identify four main
sub-elements of a reinforcement learning system: a policy, a reward signal,
a value function, and, optionally, a model of the environment.

## Markov Decision Process

A MDP is defined by states, $S$, actions, $A$, rewards, $R\subseteq\bold{R}$,
and transition probabilities, $p(s',r|s,a)
= P(S_{t+1} = s', R_{t+1} = r\mid S_t = s, A_t = a)$,
the probability of moving to state $s'$ and receive reward $r$ give
the agent is in state $s$ and takes action $a$.

Some models specify $A_s\subseteq A$, $s\in S$,
the set of possible actions when in state $s$.

A _gain_ (or _loss_) function is any function of future rewards, $G_t =
g_t(R_{t+1}, R_{t+2}, \ldots)$. A common choice is $G_t = \sum_{k\ge0}
\gamma^k R_{t + k + 1}$, where $0<\gamma<1$ is a _discount factor_.

A _policy_, $\pi(a|s)$, specifies the probability of taking action $a$
given the agent is in state $s$.

The _state-value function_ for policy $\pi$ is $v_\pi(s) = E[G_t\mid
S_t = s]$.  (Note that it does not depend on $t$.)  

The _action-value function_ for $\pi$ is $q_\pi(s,a) = E[G_t\mid S_t = s, A_t = a]$.

Note
$$
v_\pi(s) = \sum_a \pi(a|s) \sum_{s',r} p(s',r|s,a)[r + \gamma v_\pi(s')]
$$
