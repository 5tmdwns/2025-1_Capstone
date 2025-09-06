<p align="center">
  <h1 align="center">Real-time Embedded Object Following System Using Edge AI and FPGA-based Control✨</h1>
  <img width="100%" alt="result" src="https://github.com/user-attachments/assets/a1b39a67-58fd-457b-8828-470da482a7d8" />
</p>

## Index ⭐️
- [1. Prolog](#Prolog) <br/>
  - [1-1. 뻘짓 첫번째](#뻘짓-첫번째) <br/>
  
- [2. Goal](#Goal) <br/>
- [3. System Architecture](#System-Architecture) <br/>
- [4. Process](#Process) <br/>
- [5. Conclusion](#Conclusion) <br/>
- [6. Difficulites and Feelings](#Difficulties-and-Feelings) <br/>
- [7. Reference](#Reference) <br/>

## Prolog
&nbsp;졸업작품을 위해서 그냥 다짜고짜 자율주행 차량을 제작하고 싶었습니다. <br/>
처음에는 한 친구가 우리만의 시스템을 만들고 싶다 하여서 그 친구와 같은 마음으로 프로젝트 시작 기간(3\~6월) 전인 1월에 이야기를 했던 것이 떠오릅니다. <br/>
그래서 같이 하고 싶은 친구 2명을 모집하여 어떻게 구성할건지, 어떤 알고리즘을 사용해서 주행을 할건지, ADAS로 갈건지 정말 전체적인 시스템을 구현할 건지에 대해서 정해진 이야기도 없고 주제도 선정하지 않았었죠.😂 <br/>

### 뻘짓 첫번째
&nbsp;제가 좀 뻘짓을 해놓은게 1~2월 달에 FPGA보드(Zybo Z7-20)를 가지고 있는 친구에게 빌려, 팀원들에게 좀 더 편리함을 제공하고 프로젝트를 진행하기 위한 밑작업을 했었습니다. <br/>
MacOS를 사용하는 유저로서, 이동하면서 ARM을 개발하기에는 쉽지 않았습니다. <br/>
<strong>우선, Xilinx Vivado 및 Vitis가 MacOS에서 Virtualization없이는 설치가 불가피하다는 점.</strong> <br/>
어떻게 하면 돌아다니면서 개발을 할 수 있을까? 생각하다가 문득 떠오른 방법이 USB Porting을 통한 개발법이었습니다. <br/>
집에 라이젠5 7500F/RTX 4060TI 데스크탑이 있어 윈도우 데스크탑에 WSL2서버를 만들고 그 서버에서 Xilinx Tool을 실행해서 Mac에서 원격으로 접속하면 개발할 수 있지 않을까? 라고 생각하여서 진행했습니다. <br/>
우선 WSL 서버를 먼저 만들고, 해당 서버에 개발하기 위한 Tool을 설치하였습니다. <br/>
Xilinx 홈페이지에서 Linux용 .bin파일을 2022.1 버전으로 다운받고 실행시킨 후 install_config.txt의 설정을 다음과 같이 진행하였습니다. <br/>

<p style="margin: 30px 0;">
  <img width="100%" alt="install_config.txt_image" src="https://github.com/user-attachments/assets/df2cce9a-50e0-4505-a52e-32df653e1034" />
</p>

어차피 저희가 사용할 건 Zynq패밀리의 7000시리즈니까 설치 용량을 위해 나머지는 죄다 0으로 설정하였습니다. (~~Spartan-7은 이후 프로젝트 때문에 추가로 설치 😭~~) <br/>

<p style="margin: 30px 0;">
  <img width="100%" alt=".bashrc_image" src="https://github.com/user-attachments/assets/b2a49a9e-3ff6-43a6-b495-ad90ad2cdaff" />
</p>

그리고 Vivado와 Vitis의 설치된 경로 안에 있는 settings64.sh를 .bashrc에 넣어 .bashrc를 소싱해주고 Vivado와 Vitis를 실행해 보면? <br/>

<p style="margin: 30px 0;">
  <img width="49%" alt="vivado_start_image" src="https://github.com/user-attachments/assets/48bc15af-af97-471e-9273-58f35d39416d" />
  <img width="49%" alt="vitis_start_image" src="https://github.com/user-attachments/assets/4948ff72-b02b-4406-bae8-1dc29578060d" />
</p>

Vivado와 Vitis가 잘 설치된 것을 확인 할 수 있었습니다. <br/>

&nbsp;이제 WSL 서버에 Vivado와 Vitis를 설치했으니, 해당 WSL2 서버를 Port Forwarding을 통해서 접속할 수 있도록 해야 합니다. <br/>
Host가 사용하는 공유기는 AX1500 Gigabit Wi-Fi 6 Router 이므로, TP-Link 사이트로 들어가서 Port Forwarding을 지원하는 지 확인해봅니다. <br/>

<p style="margin: 30px 0;">
  <img width="100%" alt="TP-Link_imgae" src="https://github.com/user-attachments/assets/96b44895-d230-4eef-a4be-ed1fc3e5f877" />
</p>

Clint에서 해당 아이피의 포트 2222번으로 접속하면 데스크탑 2222번 포트로 연결 되는데 이는 WSL Server를 가르킵니다. (~~WSL2TORPI5는 추후에 WSL Server에서 RPI5로 더블 포트 포워딩을 위한 작업, Desktop은 MacOS에서 해당 데스크탑으로 원격을 위한 포트입니다.~~)<br/>
이후, WSL서버에 OpenSSH Server를 설치 합니다. 
<strong>(WSL 설치 시 기본으로 제공되는 openssh-server에는 문제 발생 요지가 있다고 해서 안전하게 삭제하고 재설치하는 걸 권장!)</strong> <br/>

``` bash
sudo apt remove openssh-server
sudo apt update
sudo apt install openssh-server net-tools
```

해당 작업 후, sudo vi /etc/ssh/sshd_config 를 통해 해당 sshd_config 파일을 살짝 수정해 줍니다. <br/>

``` bash
#Port 2222
PasswordAuthentication yes
```

``` bash
sudo service ssh --full-restart
```

이후, ssh service를 부팅 시 자동으로 실행하도록 설정해야 합니다. <br/>
이는 윈도우 부팅 시 해당 서버로 들어가 sudo service ssh start를 치지 않는 이상 ssh service가 자동으로 시작되지 않기 때문에 진행하는 작업입니다. <br/>
메모장에 다음과 같이 작성 후, 배치 파일인 sshd.bat으로 파일을 수정합니다. <br/>

``` bash
@echo off
"C:\Windows\System32\bash.exe" -c "sudo service ssh start"
```

그리고 이 sshd.bat파일을 Win + r키를 눌러 실행 창을 띄우고 shell:startup을 입력하여 시작프로그램 폴더안에 넣어 ssh service가 윈도우 부팅 시 자동으로 실행되게 합니다. <br/>




## Goal



## System Architecture


## Process

## Conclusion

## Difficulites and Feelings

## Reference
- [리눅스 실습 서버 만들기](https://seonybob3210.tistory.com/35) <br/>
- [WSL2 외부 접속 설정](https://velog.io/@momentum96/WSL2-%EC%99%B8%EB%B6%80-%EC%A0%91%EC%86%8D-%EC%84%A4%EC%A0%95#2-wsl2-ssh-%EC%84%A4%EC%A0%95) <br/>
