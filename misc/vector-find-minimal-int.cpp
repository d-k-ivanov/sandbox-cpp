int minInt(vector<int> &A) {
    int i = 1;
    while(i < 100000) {
        int j = i;
        for(auto const& val: A) {
            if(i == val)
                i++;
        }
        if(j==i)
            break;
    }
    return i;
}