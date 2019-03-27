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
the agent is in state $s$ and takes action $a$ at time $t$.

Some models specify $A_s\subseteq A$, for $s\in S$,
the set of possible actions when in state $s$.

At time $t$ the agent chooses an action $a$. This results in a new
state, $s'$, and reward, $r$, at time $t+1$ according to the transition
probabilities. 

A _policy_, $\pi(a|s)$, specifies the probability of taking action $a$
given the agent is in state $s$. This results in the sequence of random
variables $S_{t + k + 1}, $R_{t + k + 1}$, $k\ge0$, given $S_t = s$.

A _gain_ (or _loss_) function is any function of future rewards, $G_t =
g_t(R_{t+1}, R_{t+2}, \ldots)$. Common choices are are average rewards
$G_t = (1/k) \sum_{j=1}^k R_{t + j + 1}$ and exponential decay $G_t =
\sum_{k\ge0} \gamma^k R_{t + k + 1}$, where $0<\gamma<1$ is the _discount
factor_.

The _state-value function_ for policy $\pi$ is $v_\pi(s) = E[G_t\mid
S_t = s]$.  (Note that it does not depend on $t$.)  We want to
find $v^*(s) = \max_\pi v_\pi(s)$.

The _action-value function_ for $\pi$ is $q_\pi(s,a) = E[G_t\mid S_t = s, A_t = a]$.

Note
$$
v_\pi(s) = \sum_a \pi(a|s) \sum_{s',r} p(s',r|s,a)[r + \gamma v_\pi(s')]
$$
for exponential decay.

### Bandits

An $n$-armed bandit is a MDP with one state and $n$ actions. The general idea behind
a solution is to _explore_ the $n$ available actions and _exploit_ the most promising.
