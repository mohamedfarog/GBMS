#include "backend.h"
#include "QDebug"
#include <QKeyEvent>


//hello

BackEnd::BackEnd(QObject *parent) :
    QObject(parent)
{

balance();
}

BackEnd::~BackEnd(){


}


void BackEnd::setCurrent(int current)
{

    if(current == m_current)
            return;
    m_current = current;
    emit currentChanged();

}


int BackEnd::current()
{

    return m_current;
}


void BackEnd::setVoltage(int voltage)
{

    if(voltage == m_voltage)
            return;
    m_voltage = voltage;
    emit VoltageChanged();

}


int BackEnd::voltage()
{

    return m_voltage;
}


void BackEnd::setCapacity(int capacity)
{

    if(capacity == m_capacity)
            return;
    m_capacity = capacity;
    emit CapacityChanged();

}


int BackEnd::capacity()
{

    return m_capacity;
}


void BackEnd::setTemp1(int temp1)
{

    if(temp1 == m_temp1)
            return;
    m_temp1 = temp1;

    emit Temp1Changed();
    balance();



}


int BackEnd::temp1()
{

    return m_temp1;




}

void BackEnd::setTemp2(int temp2)
{

    if(temp2 == m_temp2)
            return;
    m_temp2 = temp2;
    emit Temp1Changed();
    balance();



}

int BackEnd::temp2()
{
    return m_temp2;



}

double BackEnd::balance()
{
m_balance = (abs(25.0 - m_temp1) + abs(25.0 - m_temp2)) / 2;
 qDebug()<<m_balance;

    return m_balance;

}

void BackEnd::setBalance(double balance){
        if (balance == m_balance)
                return;
        m_balance = balance;
  emit BalanceChanged();

}


