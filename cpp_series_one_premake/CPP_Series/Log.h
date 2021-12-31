#ifndef LOG_H
#define LOG_H

class Log
{
public:
    enum Level
    {
        LogLevelError = 0,
        LogLevelWarning,
        LogLevelInfo
    };

private:
    int m_LogLevel = LogLevelInfo;

public:
    Log() = default;

    explicit Log(const int logLevel) : m_LogLevel(logLevel)
    {
    }

    void SetLevel(const int level);
    void Error(const char* message) const;
    void Warn(const char* message) const;
    void Info(const char* message) const;
};

#endif //LOG_H
