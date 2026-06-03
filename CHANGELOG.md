# CHANGELOG

All notable changes to DBCheck will be documented in this file.

---

## [v2.5.1] - 2026-06-02

### 📡 New: Real-Time Monitoring Dashboard

Two new monitoring pages added under the **实时监控** section in the Web UI sidebar:

#### 实时慢查询监控 (Real-Time Slow Query Monitoring)

- Cross-datasource slow query aggregation with unified table view
- Automatic database type detection with color-coded tags (MySQL, PostgreSQL, TiDB, Oracle, DM8, SQL Server)
- Smart execution time formatting (ms / s / m based on magnitude)
- Severity indicators with visual dots (🔴 High >60s / 🟡 Medium >10s / 🟢 Low)
- Sorting by average time, max time, total time, or execution count
- Filtering by datasource, time range (5/15/30/60 min), and SQL keyword search
- One-click CSV export with UTF-8 BOM encoding
- Configurable auto-refresh with live countdown indicator (5-60 second intervals)

#### 活跃连接监控 (Active Connection Monitoring)

- Per-datasource connection usage bars with color-coded fill (green <50% / yellow 50-80% / red >80%)
- 12-hour connection heatmap aggregated by hour with 5-level color scale
- Active session TOP 10 table with user, state, duration, and SQL preview
- Blocking session detection with affected datasource details
- Idle connection tracking with duration in minutes
- Two-column responsive layout (connections + heatmap | active sessions)
- Shared polling engine with slow query monitor

### 🎨 UI Enhancements

- Redesigned monitoring dashboard with professional card-based overview (gradient icons, contextual sub-labels)
- Start/Stop monitoring buttons with SVG icons, gradient styling, and hover effects — positioned in page header for discoverability
- Filter bar with datasource dropdown, time range, sorting, keyword search, and action buttons
- Connection bar labels widened to 140-240px for better datasource name readability
- Responsive two-column layout for connection monitoring page

### 📝 Documentation

- Added **实时监控 (Real-Time Monitoring)** section to both English and Chinese README
- Updated core capabilities from 6→7 (English) and 7→8 (Chinese)
- Updated version badge to v2.5.1

---

## [v2.5.0] - 2026-05-14

### Major Release

- Real-time monitoring framework backend implementation
- Monitoring API endpoints (`/api/monitor/config`, `/api/monitor/data`)
- Initial polling engine with configurable intervals
- Monitoring sidebar navigation structure

---

## [v2.4.7] - 2026-05-21

### New Features

- IvorySQL support (PostgreSQL-compatible engine)
- PostgreSQL enhanced health check (5 new high-priority risk rules)
- Word report Chapter 9 for PG enhanced health check

---

## [v2.4.6] - 2026-05-15

### Improvements

- smart_analyze and config_baseline dual-track separation
- Removed duplicate configuration checks from smart_analyze

---

## [v2.4.5] - 2026-05-10

### New Features

- Oracle dynamic chapter rendering
- Template-driven chapter structure for Oracle inspections

---

## [v2.4.4] - 2026-05-01

### New Features

- P0 Lock Diagnostics across all 6 database engines
- Lock blocking chain visualization
- Deadlock statistics and trace analysis
- Long transaction detection

---

## [v2.4.3] - 2026-04-25

### New Features

- REST API with API Key authentication
- Share link feature for inspection reports

---

## [v2.4.2] - 2026-04-20

### New Features

- RAG Knowledge Base for AI-enhanced diagnostics
- Document upload and vectorization (PDF, Word, Markdown, TXT, HTML)

---

## [v2.4.1] - 2026-04-15

### New Features

- Scheduled inspection with cron expressions
- Email and Webhook notification support
- AI Chat inspection via natural language

---

## [v2.4.0] - 2026-04-10

### New Features

- Index Health Analysis (missing, redundant, unused indexes)
- Slow Query Deep Analysis with AI enhancement
- One-Click Fix for risk remediation SQL

---

## [v2.3.0] - 2026-04-01

### New Features

- Server Inspection with comprehensive hardware and system resource checks
- Configuration Baseline Checks for all supported databases

---

## [v2.2.0] - 2026-03-20

### New Features

- Datasource Management with grouping and CSV import/export
- Inspection Config Management with visual chapter toggle
- Baseline Config Management with Web UI editor

---

## [v2.1.0] - 2026-03-10

### New Features

- Historical Trend Analysis with SQLite persistence
- SQL Editor with syntax highlighting
- Remote Terminal (SSH)
- Multi-language support (Chinese/English)

---

## [v2.0.0] - 2026-03-01

### Major Release

- Web UI with Flask + Jinja2
- AI-Powered Intelligent Diagnosis (Ollama)
- 150+ enhanced risk detection rules
- 7 database support (MySQL, PostgreSQL, Oracle, SQL Server, DM8, TiDB, IvorySQL)
