#ifndef BACKEND_H
#define BACKEND_H
#include <QKeyEvent>
#include <QObject>
#include <QString>

class BackEnd : public QObject
{
    Q_OBJECT
     Q_PROPERTY(int current READ current WRITE setCurrent NOTIFY currentChanged)
     Q_PROPERTY(int voltage READ voltage WRITE setVoltage NOTIFY VoltageChanged)
     Q_PROPERTY(int capacity READ capacity WRITE setCapacity NOTIFY CapacityChanged)
     Q_PROPERTY(int temp1 READ temp1 WRITE setTemp1 NOTIFY Temp1Changed)
     Q_PROPERTY(int temp2 READ temp2 WRITE setTemp2 NOTIFY Temp2Changed)
     Q_PROPERTY(double balance READ balance WRITE setBalance NOTIFY BalanceChanged)



public:
    explicit BackEnd(QObject *parent = nullptr);
     ~BackEnd();
    int current();
    void setCurrent(int);
    int voltage();
    void setVoltage(int);
    int capacity();
    void setCapacity(int);
    int temp1();
    void setTemp1(int);
    int temp2();
    void setTemp2(int);
    double balance();
    void setBalance(double);



signals:
     void currentChanged();
     void VoltageChanged();
     void CapacityChanged();
     void Temp1Changed();
     void Temp2Changed();
     void BalanceChanged();


private:
    QString m_userName;
    int m_current = 0;
    int m_voltage = 0;
    int m_capacity = 0;
    int m_temp1 = 25;
    int m_temp2 = 25;
    double m_balance = 0.0;
};
#endif // BACKEND_H
