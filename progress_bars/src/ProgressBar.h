#ifndef PROGRESSBAR_H
#define PROGRESSBAR_H
/*
 * =====================================================================
 *      Project :  progress_bars
 *      File    :  ProgressBar.h
 *      Created :  16.02.2020 2:51:01 +0300
 *      Author  :  Dmitriy Ivanov
 * =====================================================================
 */

/*
 * Layout:
 * [{...completed} {remaining...}] {percentage} {status_text}
 * ◄-------- Bar Width --------►
 *
 * Example:
 * [■■■■■■■■■■■■■■■■■■■■■■-------] 71% Extracting Archive
 */

#include <algorithm>
#include <mutex>
#include <iostream>

class ProgressBar
{
public:
    void set_progress(const float value)
    {
        std::unique_lock lock{m_mutex_};
        m_progress_ = value;
    }

    void set_bar_width(const size_t width)
    {
        std::unique_lock lock{m_mutex_};
        m_bar_width_ = width;
    }

    void fill_bar_progress_with(const std::string& chars)
    {
        std::unique_lock lock{m_mutex_};
        m_fill_ = chars;
    }

    void fill_bar_remainder_with(const std::string& chars)
    {
        std::unique_lock lock{m_mutex_};
        m_remainder_ = chars;
    }

    void set_status_text(const std::string& status)
    {
        std::unique_lock lock{m_mutex_};
        m_status_text_ = status;
    }

    void update(const float value, std::ostream& os = std::cout)
    {
        set_progress(value);
        write_progress(os);
    }

    void write_progress(std::ostream& os = std::cout)
    {
        std::unique_lock lock{m_mutex_};

        // No need to write once progress is 100%
        if (m_progress_ > 100.0f) return;

        // Move cursor to the first position on the same line and flush
        os << "\r" << std::flush;

        // Start bar
        os << "[";

        const auto completed = static_cast<size_t>(m_progress_ * static_cast<float>(m_bar_width_) / 100.0);
        for (size_t i = 0; i < m_bar_width_; ++i)
        {
            if (i <= completed)
                os << m_fill_;
            else
                os << m_remainder_;
        }

        // End bar
        os << "]";

        // Write progress percentage
        os << " " << std::min(static_cast<size_t>(m_progress_), size_t(100)) << "%";

        // Write status text
        os << " " << m_status_text_;
    }

private:
    std::mutex m_mutex_;
    float m_progress_{0.0f};

    size_t m_bar_width_{100};
    std::string m_fill_{"#"}, m_remainder_{" "}, m_status_text_{""};
};


#endif //PROGRESSBAR_H
