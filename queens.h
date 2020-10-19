#ifndef QUEENS_H_
#define QUEENS_H_
#include <iostream>
#include <vector>

class Queens
{
public:
    Queens();
    Queens(int);
    ~Queens();

private:
    std::vector<std::vector<bool>> chessTable;
    unsigned int _numOfQueens;
    bool setQueens(int);
    bool validPlacement(int, int) const;

friend std::ostream& operator<<(std::ostream&,const Queens&);
};

#endif    // QUEENS_H_