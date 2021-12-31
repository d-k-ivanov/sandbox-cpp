#ifndef LOG_H
#define LOG_H

class Log
{
public:
    const int LogLevelError = 0;
    const int LogLevelWarning = 1;
    const int LogLevelInfo = 2;

private:
    int m_LogLevel = LogLevelInfo;

public:
    void SetLevel(const int level);
    void Error(const char* message) const;
    void Warn(const char* message) const;
    void Info(const char* message) const;
};

#endif //LOG_H
