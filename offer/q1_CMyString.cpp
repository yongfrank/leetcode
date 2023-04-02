#include <iostream>
#include <string.h>

class CMyString
{
private:
    /* data */
    char* m_pData;
public:
    CMyString(char* pData = nullptr);
    CMyString(const CMyString& str);
    ~CMyString(void);
    
    // CMyString& operator=(const CMyString& str);
    void print() {
        std::cout << this->m_pData << std::endl;
    }
};

CMyString::CMyString(char* pData)
{
    this->m_pData = pData;
}

CMyString::~CMyString(void)
{
}

CMyString::CMyString(const CMyString& str)
{
    this->m_pData = str.m_pData;
}
// CMyString& CMyString::operator=(const CMyString& str) {

// }

int main() {
    CMyString a = strdup("apple");
    a.print();
    CMyString b;
    b = a;
    b.print();
}