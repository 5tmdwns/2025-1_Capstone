#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import matplotlib.pyplot as plt
import os

# 파일 경로 설정
runtime_log_path = 'runtime_latency.log'
cyclic_hist_path  = 'cyclictest.log'  # histogram 형식으로 저장된 파일

# 로그 파일 검사
if not os.path.exists(runtime_log_path):
    print(f"[ERROR] '{runtime_log_path}' not found.")
    exit(1)
if not os.path.exists(cyclic_hist_path):
    print(f"[ERROR] '{cyclic_hist_path}' not found.")
    exit(1)

# 1) runtime_latency.log 파싱
steer_latencies = []
drive_latencies = []

with open(runtime_log_path, 'r') as f:
    for raw in f:
        line = raw.strip()
        if line.startswith('[STEER LAT]'):
            parts = line.split('=')
            if len(parts) >= 2:
                try:
                    n = int(parts[1].split()[0])
                    steer_latencies.append(n / 1000.0)  # ns → μs
                except:
                    pass
        elif line.startswith('[DRIVE LAT]'):
            parts = line.split('=')
            if len(parts) >= 2:
                try:
                    n = int(parts[1].split()[0])
                    drive_latencies.append(n / 1000.0)
                except:
                    pass

print(f"[DEBUG] Steer entries: {len(steer_latencies)}")
print(f"[DEBUG] Drive entries: {len(drive_latencies)}")
if len(steer_latencies) == 0 and len(drive_latencies) == 0:
    print("[ERROR] Steer/Drive latency data is empty.")
    exit(1)

# 히스토그램용 통계(최소, 최대) 계산
if steer_latencies:
    min_steer = min(steer_latencies)
    max_steer = max(steer_latencies)
    print(f"[DEBUG] Steer latency min={min_steer:.2f} μs, max={max_steer:.2f} μs")
else:
    min_steer = None; max_steer = None
if drive_latencies:
    min_drive = min(drive_latencies)
    max_drive = max(drive_latencies)
    print(f"[DEBUG] Drive latency min={min_drive:.2f} μs, max={max_drive:.2f} μs")
else:
    min_drive = None; max_drive = None

# 2) cyclictest histogram 파싱 → max_latency, avg_latency 구하기
max_latency = None
total_count = 0
sum_weighted = 0.0

with open(cyclic_hist_path, 'r') as f:
    for raw in f:
        line = raw.strip()
        # 주석(#)과 빈 줄은 건너뜀
        if not line or line.startswith('#'):
            continue
        parts = line.split()
        if len(parts) < 2:
            continue
        try:
            lat = int(parts[0])      # latency (μs)
            count = int(parts[1])    # count
        except:
            continue
        if count > 0:
            max_latency = lat
        total_count += count
        sum_weighted += lat * count

if max_latency is None:
    print("[ERROR] No non-zero entries in cyclictest histogram.")
    exit(1)
avg_latency = sum_weighted / total_count if total_count > 0 else None

print(f"[DEBUG] Cyclictest Max latency = {max_latency} μs")
if avg_latency is not None:
    print(f"[DEBUG] Cyclictest Avg latency = {avg_latency:.2f} μs")

# 3) 히스토그램 그리기
plt.figure(figsize=(12, 5))

# 3-1) Steer 히스토그램
plt.subplot(1, 2, 1)
if steer_latencies:
    x_lo = (min_steer - 1.0) if min_steer is not None else 0
    x_hi = (max_steer + 1.0) if max_steer is not None else 10
    bins_count = 20
    plt.hist(steer_latencies, bins=bins_count, range=(x_lo, x_hi),
             alpha=0.7, color='skyblue', edgecolor='black', label='Steer')
    plt.xlim(x_lo, x_hi)
else:
    plt.text(0.5, 0.5, 'No Steer data', ha='center')
if max_latency is not None:
    plt.axvline(x=max_latency, color='r', linestyle='--',
                label=f'Cyclic Max ({max_latency} μs)')
plt.title('Steer Latency Distribution')
plt.xlabel('Latency (μs)')
plt.ylabel('Count')
plt.legend()

# 3-2) Drive 히스토그램
plt.subplot(1, 2, 2)
if drive_latencies:
    x_lo = (min_drive - 1.0) if min_drive is not None else 0
    x_hi = (max_drive + 1.0) if max_drive is not None else 10
    bins_count = 20
    plt.hist(drive_latencies, bins=bins_count, range=(x_lo, x_hi),
             alpha=0.7, color='lightgreen', edgecolor='black', label='Drive')
    plt.xlim(x_lo, x_hi)
else:
    plt.text(0.5, 0.5, 'No Drive data', ha='center')
if max_latency is not None:
    plt.axvline(x=max_latency, color='r', linestyle='--',
                label=f'Cyclic Max ({max_latency} μs)')
plt.title('Drive Latency Distribution')
plt.xlabel('Latency (μs)')
plt.ylabel('Count')
plt.legend()

plt.tight_layout()

# 4) 파일로 저장
output_path = 'latency_histogram_with_cyclic.png'
plt.savefig(output_path)
print(f"[INFO] Saved plot to '{output_path}'")

