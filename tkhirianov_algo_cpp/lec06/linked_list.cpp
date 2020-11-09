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

struct node_list
{
    int data;
    node_list *prev;
    node_list *next;
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

void print_all_nodes(node_list *p)
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

void print_all_nodes_reverse(node_list *p)
{
    std::cout << "All Nodes (reversed):" << std::endl;
    uint32_t sep = 1;
    while (p != nullptr)
    {
        std::cout << p->data << '\t';
        p = p->prev;
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

void variant3()
{
    const int MAX_SIZE  = 100;
    node_t *p_begin     = new node_t;
    p_begin->data       = 0;
    p_begin->next       = nullptr;

    node_t *p = p_begin;
    srand(time(0));

    for(int i = 0; i < MAX_SIZE; i++)
    {
        p->data = get_randrom_int(0, 32768);
        p->next = new node_t;
        p = p->next;
        p->data = 0;
        p->next = nullptr;
    }

    print_all_nodes(p_begin);
}

void variant4()
{
    const int MAX_SIZE = 100;
    node_list *p_begin = new node_list;
    node_list *p = p_begin;

    srand(time(0));

    // p->data     = get_randrom_int(0, 32768);
    p->data     = 0;
    p->prev     = nullptr;
    p->next     = nullptr;

    for(int i = 1; i < MAX_SIZE; i++)
    {
        if (p->next == nullptr)
        {
            p->next = new node_list;
            p->next->prev = p;
            p = p->next;
            // p->data = get_randrom_int(0, 32768);
            p->data = i;
            p->next = nullptr;
        }
    }

    print_all_nodes(p_begin);
    print_all_nodes_reverse(p);
}


int main()
{
    // variant1();
    // variant2();
    // variant3();
    variant4();

    return 0;
}
