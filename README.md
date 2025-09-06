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
<strong>우선, Xilinx Vivado 및 Vitis가 MacOS에서 Virtualization없이는 설치가 불가피하다는 점.</strong> <br/>
어떻게 하면 돌아다니면서 개발을 할 수 있을까? 생각하다가 문득 떠오른 방법이 USB Porting을 통한 개발법이었습니다. <br/>
집에 라이젠5 7500F/RTX 4060TI 데스크탑이 있어 윈도우 데스크탑에 WSL2서버를 만들고 그 서버에서 Xilinx Tool을 실행해서 Mac에서 원격으로 접속하면 개발할 수 있지 않을까? 라고 생각하여서 진행했습니다. <br/>
우선 WSL2서버를 먼저 만들고, 해당 서버에 개발하기 위한 Tool을 설치하였습니다. <br/>
Xilinx 홈페이지에서 Linux용 BIN파일을 2022.1 버전으로 다운받고 실행시킨 후 install_config.txt의 설정을 다음과 같이 진행하였습니다. <br/>
<img width="100%" alt="install_config.txt_image" src="https://github.com/user-attachments/assets/df2cce9a-50e0-4505-a52e-32df653e1034" /> <br/>
어차피 저희가 사용할 건 Zynq패밀리의 7000시리즈니까 설치 용량을 위해 나머지는 죄다 0으로 설정하였습니다. (~~Spartan-7은 이후 프로젝트 때문에 추가로 설치 😭~~)<br/>
<img width="100%" alt=".bashrc_image" src="https://github.com/user-attachments/assets/b2a49a9e-3ff6-43a6-b495-ad90ad2cdaff" />
그리고 Vivado와 Vitis의 설치된 경로 안에 있는 settings64.sh를 .bashrc에 넣어 .bashrc를 소싱해주고 Vivado와 Vitis를 실행해 보면? <br/>
<img width="45%" alt="vivado_start_image" src="https://github.com/user-attachments/assets/48bc15af-af97-471e-9273-58f35d39416d" />
<img width="45%" alt="vitis_start_image" src="https://github.com/user-attachments/assets/4948ff72-b02b-4406-bae8-1dc29578060d" /> <br/>
이후, Vivado와 Vitis가 잘 설치된 것을 확인 할 수 있었습니다. <br/>


