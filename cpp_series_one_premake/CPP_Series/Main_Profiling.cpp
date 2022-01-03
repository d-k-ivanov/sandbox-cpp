#include <algorithm>
#include <chrono>
#include <cmath>
#include <fstream>
#include <iostream>
#include <string>
#include <thread>

namespace MainProfiling
{
    struct ProfileResult
    {
        std::string Name;
        long long Start, End;
        uint32_t ThreadID;
    };

    struct InstrumentationSession
    {
        std::string Name;
    };

    class Instrumentor
    {
    private:
        InstrumentationSession* m_CurrentSession;
        std::ofstream m_OutputStream;
        int m_ProfileCount;
    public:
        Instrumentor()
            : m_CurrentSession(nullptr), m_ProfileCount(0)
        {
        }

        void BeginSession(const std::string& name, const std::string& filepath = "results.json")
        {
            m_OutputStream.open(filepath);
            WriteHeader();
            m_CurrentSession = new InstrumentationSession{name};
        }

        void EndSession()
        {
            WriteFooter();
            m_OutputStream.close();
            delete m_CurrentSession;
            m_CurrentSession = nullptr;
            m_ProfileCount = 0;
        }

        void WriteProfile(const ProfileResult& result)
        {
            if (m_ProfileCount++ > 0)
                m_OutputStream << ",";

            std::string name = result.Name;
            std::ranges::replace(name, '"', '\'');

            m_OutputStream << "{";
            m_OutputStream << R"("cat":"function",)";
            m_OutputStream << R"("dur":)" << (result.End - result.Start) << ',';
            m_OutputStream << R"("name":")" << name << "\",";
            m_OutputStream << R"("ph":"X",)";
            m_OutputStream << R"("pid":0,)";
            m_OutputStream << R"("tid":)" << result.ThreadID << ",";
            m_OutputStream << R"("ts":)" << result.Start;
            m_OutputStream << "}";

            m_OutputStream.flush();
        }

        void WriteHeader()
        {
            m_OutputStream << R"({"otherData": {},"traceEvents":[)";
            m_OutputStream.flush();
        }

        void WriteFooter()
        {
            m_OutputStream << "]}";
            m_OutputStream.flush();
        }

        static Instrumentor& Get()
        {
            static Instrumentor instance;
            return instance;
        }
    };

    class InstrumentationTimer
    {
    public:
        InstrumentationTimer(const char* name)
            : m_Name(name), m_Stopped(false)
        {
            m_StartTimepoint = std::chrono::high_resolution_clock::now();
        }

        ~InstrumentationTimer()
        {
            if (!m_Stopped)
                Stop();
        }

        void Stop()
        {
            const auto endTimepoint = std::chrono::high_resolution_clock::now();

            const long long start =
                std::chrono::time_point_cast<std::chrono::microseconds>(m_StartTimepoint).time_since_epoch().count();
            const long long end =
                std::chrono::time_point_cast<std::chrono::microseconds>(endTimepoint).time_since_epoch().count();

            #pragma warning(push)
            #pragma warning(disable : 4267) // ignore the possible data loss
            const uint32_t threadId = std::hash<std::thread::id>{}(std::this_thread::get_id());  // NOLINT(clang-diagnostic-shorten-64-to-32)
            #pragma warning(pop)

            Instrumentor::Get().WriteProfile({m_Name, start, end, threadId});

            m_Stopped = true;
        }

    private:
        const char* m_Name;
        std::chrono::time_point<std::chrono::high_resolution_clock> m_StartTimepoint;
        bool m_Stopped;
    };

    #define PROFILING 1
    #if PROFILING
    #define PROFILE_SCOPE(name) InstrumentationTimer timer##__LINE__(name)
    // #define PROFILE_FUNCTION() PROFILE_SCOPE(__FUNCTION__)
    #define PROFILE_FUNCTION() PROFILE_SCOPE(__FUNCSIG__)
    #else
    #define PROFILE_SCOPE(name)
    #endif

    void Function1()
    {
        // InstrumentationTimer timer("Function1");
        // PROFILE_SCOPE("Function1");
        PROFILE_FUNCTION();
        for (int i = 0; i < 1000; i++)
            std::cout << "Hello World #" << i << std::endl;
    }

    void Function2()
    {
        // InstrumentationTimer timer("Function2");
        // PROFILE_SCOPE("Function2");
        PROFILE_FUNCTION();
        for (int i = 0; i < 1000; i++)
            std::cout << "Hello World #" << sqrt(i) << std::endl;
    }

    void PrintFunction(const int x)
    {
        // InstrumentationTimer timer("Function1");
        // PROFILE_SCOPE("PrintFunction");
        PROFILE_FUNCTION();
        for (int i = 0; i < 1000; i++)
            std::cout << "Integer World #" << (x + i) << std::endl;
    }

    void PrintFunction(const float f)
    {
        // InstrumentationTimer timer("Function2");
        // PROFILE_SCOPE("PrintFunction");
        PROFILE_FUNCTION();
        for (int i = 0; i < 1000; i++)
            std::cout << "Float World #" << sqrt((f + i)) << std::endl;
    }

    void RunBenchMarks()
    {
        // InstrumentationTimer timer("RunBenchMarks");
        // PROFILE_SCOPE("RunBenchMarks");
        PROFILE_FUNCTION();
        std::cout << "Running Benchmarks...\n";

        Function1();
        Function2();
        PrintFunction(1);
        PrintFunction(1.1f);
    }

    void Main()
    {
        Instrumentor::Get().BeginSession("Profile");
        Function1();
        Function2();
        RunBenchMarks();
        PrintFunction(1);
        PrintFunction(1.1f);
        Instrumentor::Get().EndSession();
    }
}
