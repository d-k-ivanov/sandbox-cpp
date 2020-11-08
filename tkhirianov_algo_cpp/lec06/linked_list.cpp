#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <iostream>

int get_randrom_int(int lower, int upper)
{
    return (rand() % (upper - lower + 1)) + lower;
}

struct node_t
{
    int data;
    node_t *next;
};

void print_all_nodes(node_t *p)
{
    std::cout << "All Nodes:" << std::endl;
    uint32_t sep = 1;
    while (p != nullptr)
    {
        std::cout << p->data << '\t';
        p = p->next;
        if (sep % 10 == 0)
        {
            std::cout << '\n';
        }
        sep++;
    }
    std::cout << std::endl;
}

void set_next_node(node_t *list, int pos)
{
    list[pos].data = get_randrom_int(0, 32768);
    if (pos > 0)
        list[pos-1].next = list + pos;
    list[pos].next = nullptr;
}

void variant1()
{
    const int MAX_SIZE = 100;
    node_t a[MAX_SIZE];
    srand(time(0));

    for(int i = 0; i < MAX_SIZE; i++)
    {
        a[i].data = get_randrom_int(0, 32768);
        a[i].next = a + i + 1;
    }

    a[MAX_SIZE-1].next = nullptr;

    node_t *p_begin = a;
    print_all_nodes(p_begin);
}

void variant2()
{
    const int MAX_SIZE = 100;
    node_t a[MAX_SIZE];
    srand(time(0));

    for(int i = 0; i < MAX_SIZE; i++)
    {
        set_next_node(a, i);
        // if (i == 23)
        //    break;
    }

    node_t *p_begin = a;
    print_all_nodes(p_begin);
}


int main()
{
    // variant1();
    variant2();

    return 0;
}
