#include "Log.h"

#include <iostream>

void Log::SetLevel(const int level)
{
    m_LogLevel = level;
}

void Log::Error(const char* message) const
{
    if (m_LogLevel >= LogLevelError)
        std::cout << "[ERROR]: " << message << std::endl;
}

void Log::Warn(const char* message) const
{
    if (m_LogLevel >= LogLevelWarning)
        std::cout << "[WARNING]: " << message << std::endl;
}

void Log::Info(const char* message) const
{
    if (m_LogLevel >= LogLevelInfo)
        std::cout << "[INFO]: " << message << std::endl;
}
