/*
    Based on paper from Indiana University Computer Science
        Todd L. Veldhuizen: C++ Templates are Turing Complete

    Compilation:
    cl /c /EHsc a_to_blank.cpp
    g++ a_to_blank.cpp
*/

/* States */
struct Halt     {};
struct Q0       {};
struct Q1       {};

/* Alphabet */
struct A        {};
struct Blank    {};
struct Left     {};
struct Right    {};

/* Tape representation */
// [a#a] --> type Pair<A, Pair<Blank, Pair<A, Nil>>>;

struct Nil      {};

template <class Head, class Tail>
struct Pair
{
    typedef Head head;
    typedef Tail tail;
};

/* Transition Function */
template <typename State, typename Character>
struct TransitionFunction
{
};

/* q0 a -> (q1,#) */
template <>
struct TransitionFunction<Q0, A>
{
    typedef Q1 next_state;
    typedef Blank action;
};

/* q0 # -> (h,#) */
template <>
struct TransitionFunction<Q0, Blank>
{
    typedef Halt next_state;
    typedef Blank action;
};

/* q1 a -> (q0,a) */
template <>
struct TransitionFunction<Q1, A>
{
    typedef Q0 next_state;
    typedef A action;
};

/* q1 # -> (q0,->) */
template <>
struct TransitionFunction<Q1, Blank>
{
    typedef Q0 next_state;
    typedef Right action;
};

/* Configuration prototype */
template <typename State, typename Tape_Left, typename Tape_Current, typename Tape_Right, template <typename Q, typename Sigma> class Delta>
struct Configuration;

/* Default action: write to current tape cell */
template <typename NextState, typename Action, typename Tape_Left, typename Tape_Current, typename Tape_Right, template <typename Q, typename Sigma> class Delta>
struct ApplyAction
{
    typedef typename Configuration<NextState, Tape_Left, Action, Tape_Right, Delta>::halted_configuration halted_configuration;
};

/* Move read head left */
template <typename NextState, typename Tape_Left, typename Tape_Current, typename Tape_Right, template <typename Q, typename Sigma> class Delta>
struct ApplyAction<NextState, Left, Tape_Left, Tape_Current, Tape_Right, Delta>
{
    typedef typename Configuration<NextState, typename Tape_Left::tail, typename Tape_Left::head, Pair<Tape_Current, Tape_Right>, Delta>::halted_configuration halted_configuration;
};

/* Move read head right */
template <typename NextState, typename Tape_Left, typename Tape_Current, typename Tape_Right, template <typename Q, typename Sigma> class Delta>
struct ApplyAction<NextState, Right, Tape_Left, Tape_Current, Tape_Right, Delta>
{
    typedef typename Configuration<NextState, Pair<Tape_Current, Tape_Left>, typename Tape_Right::head, typename Tape_Right::tail, Delta>::halted_configuration halted_configuration;
};

/* Move read head right when there are no nonblank characters to the right -- generate a new Blank symbol */
template <typename NextState, typename Tape_Left, typename Tape_Current, template <typename Q, typename Sigma> class Delta>
struct ApplyAction<NextState, Right, Tape_Left, Tape_Current, Nil, Delta>
{
    typedef typename Configuration<NextState, Pair<Tape_Current, Tape_Left>, Blank, Nil, Delta>::halted_configuration halted_configuration;
};

template <typename Action, typename Tape_Left, typename Tape_Current, typename Tape_Right, template <typename Q, typename Sigma> class Delta>
struct ApplyAction<Halt, Action, Tape_Left, Tape_Current, Tape_Right, Delta>
{
    /* We halt by not declaring a halted_configuration. This causes the compiler to display an error message showing the halting configuration. */
};

/* Configuration */
template <typename State, typename Tape_Left, typename Tape_Current, typename Tape_Right, template <typename Q, typename Sigma> class Delta>
struct Configuration
{
    typedef typename Delta<State, Tape_Current>::next_state next_state;
    typedef typename Delta<State, Tape_Current>::action action;
    typedef typename ApplyAction<next_state, action, Tape_Left, Tape_Current, Tape_Right, Delta>::halted_configuration halted_configuration;
};

/* An example "run": on the tape aaa starting in state q0 */
typedef Configuration<Q0, Nil, A, Pair<A, Pair <A, Nil>>, TransitionFunction>::halted_configuration Foo;
