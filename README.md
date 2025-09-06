<p align="center">
  <h1 align="center">Real-time Embedded Object Following System Using Edge AI and FPGA-based Control✨</h1>
  <img width="100%" alt="result" src="https://github.com/user-attachments/assets/a1b39a67-58fd-457b-8828-470da482a7d8" />
</p>

## Index ⭐️
- [1. Prolog](#Prolog) <br/>
- [2. Goal](#Goal) <br/>
- [3. System Architecture](#System-Architecture) <br/>
- [4. Process](#Process) <br/>
- [5. Conclusion](#Conclusion) <br/>
- [6. Difficulites and Feelings](#Difficulties-and-Feelings) <br/>

## Prolog
&nbsp;졸업작품을 위해서 그냥 다짜고짜 자율주행 차량을 제작하고 싶었습니다. <br/>
처음에는 한 친구가 우리만의 시스템을 만들고 싶다 하여서 그 친구와 같은 마음으로 프로젝트 시작 기간(3\~6월) 전인 1월에 이야기를 했던 것이 떠오릅니다. <br/>
그래서 같이 하고 싶은 친구 2명을 모집하여 어떻게 구성할건지, 어떤 알고리즘을 사용해서 주행을 할건지, ADAS로 갈건지 정말 전체적인 시스템을 구현할 건지에 대해서 정해진 이야기는 없고 정말 무책임하게 주제를 선정했었죠.😂 <br/>
제가 좀 뻘짓을 해놓은게 1~2월 달에 FPGA보드(Zybo Z7-20)를 가지고 있는 친구에게 빌려, 팀원들에게 좀 더 편리함을 제공하고 프로젝트를 진행하기 위한 밑작업을 했었습니다. <br/>
MacOS를 사용하는 유저로서, 이동하면서 ARM을 개발하기에는 쉽지 않았습니다. <br/>
우선, Xilinx Vivado 및 Vitis가 MacOS에서 Virtualization없이는 설치가 불가피하다는 점. <br/>
어떻게 하면 돌아다니면서 개발을 할 수 있을까? 생각하다가 문득 떠오른 방법이 USB Porting을 통한 개발법이었습니다. <br/>
집에 라이젠5 7500F/RTX 4060TI 데스크탑이 있어 윈도우 데스크탑에 WSL2서버를 만들고 그 서버에서 Xilinx Tool을 실행해서 Mac에서 원격으로 접속하면 개발할 수 있지 않을까? 라고 생각하여서 진행했습니다. <br/>

