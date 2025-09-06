<p align="center">
  <h1 align="center">Real-time Embedded Object Following System Using Edge AI and FPGA-based Control✨</h1>
  <p align="center">
    <img width="90%" alt="시연 GIF" src="https://github.com/user-attachments/assets/a1b39a67-58fd-457b-8828-470da482a7d8" />
  </p>
</p>

## Index ⭐️
- [1. Prolog](#Prolog) <br/>
  - [1-1. 뻘짓 첫번째 (어디서든 접속 가능한 WSL서버 만들기)](#뻘짓-첫번째-/(어디서든-접속-가능한-WSL서버-만들기/)) <br/>
  - [1-2. 뻘짓 두번째 (원격으로 FPGA보드에 비트스트림 업로드 하기)](#뻘짓-두번째-/(원격으로 FPGA보드에 비트스트림 업로드 하기/)) <br/>
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

### 뻘짓 첫번째 (어디서든 접속 가능한 WSL서버 만들기)
&nbsp;제가 좀 뻘짓을 해놓은게 1~2월 달에 FPGA보드(Zybo Z7-20)를 가지고 있는 친구에게 빌려, 팀원들에게 좀 더 편리함을 제공하고 프로젝트를 진행하기 위한 밑작업을 했었습니다. <br/>
MacOS를 사용하는 유저로서, 이동하면서 ARM을 개발하기에는 쉽지 않았습니다. <br/>
<strong>우선, Xilinx Vivado 및 Vitis가 MacOS에서 Virtualization없이는 설치가 불가피하다는 점.</strong> <br/>
어떻게 하면 돌아다니면서 개발을 할 수 있을까? 생각하다가 문득 떠오른 방법이 USB Porting을 통한 개발법이었습니다. <br/>
집에 라이젠5 7500F/RTX 4060TI 데스크탑이 있어 윈도우 데스크탑에 WSL2서버를 만들고 그 서버에서 Xilinx Tool을 실행해서 Mac에서 원격으로 접속하면 개발할 수 있지 않을까? 라고 생각하여서 진행했습니다. <br/>
우선 WSL 서버를 먼저 만들고, 해당 서버에 개발하기 위한 Tool을 설치하였습니다. <br/>
Xilinx 홈페이지에서 Linux용 .bin파일을 2022.1 버전으로 다운받고 실행시킨 후 install_config.txt의 설정을 다음과 같이 진행하였습니다. <br/>

<p align="center" style="margin: 20px 0;">
  <img width="90%" alt="install_config.txt 사진" src="https://github.com/user-attachments/assets/df2cce9a-50e0-4505-a52e-32df653e1034" />
</p>

어차피 저희가 사용할 건 Zynq패밀리의 7000시리즈니까 설치 용량을 위해 나머지는 죄다 0으로 설정하였습니다. (~~Spartan-7은 이후 프로젝트 때문에 추가로 설치 😭~~) <br/>

<p align="center" style="margin: 20px 0;">
  <img width="90%" alt=".bashrc 사진" src="https://github.com/user-attachments/assets/b2a49a9e-3ff6-43a6-b495-ad90ad2cdaff" />
</p>

그리고 Vivado와 Vitis의 설치된 경로 안에 있는 settings64.sh를 .bashrc에 넣어 .bashrc를 소싱해주고 Vivado와 Vitis를 실행해 보면? <br/>

<p align="center" style="margin: 20px 0;">
  <img width="49%" alt="vivado 시작 사진" src="https://github.com/user-attachments/assets/48bc15af-af97-471e-9273-58f35d39416d" />
  <img width="49%" alt="vitis 시작 사진" src="https://github.com/user-attachments/assets/4948ff72-b02b-4406-bae8-1dc29578060d" />
</p>

Vivado와 Vitis가 잘 설치된 것을 확인 할 수 있었습니다. <br/>

&nbsp;이제 WSL 서버에 Vivado와 Vitis를 설치했으니, 해당 WSL2 서버를 Port Forwarding을 통해서 접속할 수 있도록 해야 합니다. <br/>
Host가 사용하는 공유기는 AX1500 Gigabit Wi-Fi 6 Router 이므로, TP-Link 사이트로 들어가서 Port Forwarding을 지원하는 지 확인해봅니다. <br/>

<p align="center" style="margin: 20px 0;">
  <img width="90%" alt="TP-Link 사이트 사진" src="https://github.com/user-attachments/assets/96b44895-d230-4eef-a4be-ed1fc3e5f877" />
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
하지만 sudo시 비밀번호를 입력하라는 창을 볼텐데, 비밀번호 없이 시작하기 위해 설정할려면 WSL서버에서 visudo를 설정합니다. <br/>

``` bash
sudo visudo
```

열리는 파일에 가장 아래쪽에 다음과 같은 문장 삽입후 저장하고 나오기! <br/>

<p align="center" style="margin: 20px 0">
  <img width="90%" alt="visudo 사진" src="https://github.com/user-attachments/assets/59de28bb-c441-43a6-9135-8eb86f7b3caa" /> 
</p>

Client에서 PC의 공인IP와 포트를 통해서 PC 내부의 WSL에 접속하기 위해 TP-Link 사이트에서 아이피 고정하고 위 과정을 하면 접속이 될 줄 알았더만, <strong>WSL 이자식이 부팅시마다 가상 IP주소가 재부팅시마다 변합니다.</strong> 😡 <br/>
그래서 이놈의 바뀌는 IP를 PowerShell Script를 통해 공유기에서 할당된 PC의 IP Port를 WSL의 가상 IP Port로 포워딩 시켜줍니다. <br/>
작성했던 해당 스크립트는 다음과 같습니다. <br/>

``` bash
If (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {   
  $arguments = "& '" + $myinvocation.mycommand.definition + "'"
  Start-Process powershell -Verb runAs -ArgumentList $arguments
  Break
}

$remoteport = bash.exe -c "ifconfig eth0 | grep 'inet '"
$found = $remoteport -match '\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}';

if ( $found ) {
  $remoteport = $matches[0];
}
else {
  Write-Output "The Script Exited, the ip address of WSL 2 cannot be found";
  exit;
}

$ports = @(2222, 2223);

Invoke-Expression "netsh interface portproxy reset";

for ( $i = 0; $i -lt $ports.length; $i++ ) {
  $port = $ports[$i];
  Invoke-Expression "netsh interface portproxy add v4tov4 listenport=$port connectport=$port connectaddress=$remoteport";
}

Invoke-Expression "netsh interface portproxy show v4tov4";
```

여기서 $port = @(2222, 2223); 부분에 포워딩하고 싶은 포트를 입력했습니다. <br/>
그럼 공유기에서 할당된 PC의 IP Port가 WSL2의 가상 IP Port로 연결됩니다. <br/>
그리고 해당 스크립트를 메모장에서 만든 뒤 ports_wsl.ps1 으로 저장하고 C 드라이브에 PowerShellScript 폴더를 만들어 저장했습니다. <br/>
그리고 해당 스크립트를 PowerShell에서 실행시켜 본다면? <br/>

<p align="center" style="margin: 20px 0">
  <img width="90%" alt="ports_wsl.ps1 실행 사진" src="https://github.com/user-attachments/assets/69fb29ef-68b5-4d53-9cf1-80d44f388223" />
</p>

자, 그럼 이제 또 위 스크립트를 귀찮게 부팅 시마다 실행시킬 수 없으니 작업 스케줄러를 작성하고 ExecutionPolicy를 지정했습니다. <br/>
Win + r을 눌러 실행 창에 taskschd.msc를 실행하여 작업 스케줄러를 열어줍니다. <br/>
그리고 작업 만들기를 클릭 한 후, 다음과 같이 설정합니다. <br/>

- **일반 설정 탭** <br/>
  - 이름 : WSL network Forwarding <br/>
  - 보안옵션 : 사용자가 로그온할 때만 실행, 가장 높은 수준의 권한으로 실행 체크 <br/>
- **트리거 탭** <br/>
  새로만들기 후, <br/>
  - 작업 시작 : 로그온할 때 <br/>
- **동작 탭** <br/>
  새로만들기 후, <br/>
  - 동작 : 프로그램 시작 <br/>
  - 프로그램/스크립트 : C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe <br/>
  - 인수 추가(옵션) : -ExecutionPolicy Bypass -File .\ports_wsl.ps1 <br/>
  - 시작 위치(옵션) : C:\PowerShellScript <br/>
- **조건 탭** <br/>
  컴퓨터의 AC 전원이 켜져 있는 경우에만 작업 시작 체크 해제 <br/>
- **설정 탭** <br/>
  다음 시간 이상 작업이 실행되면 중지 체크 해제 <br/>

위처럼 설정하면 부팅 시 자동으로 해당 ports_wsl.ps1이 실행됩니다. <br/>
이후, 포트 개방을 하기 위해선 방화벽을 해제해야 했습니다. <br/>
Windows Defender 방화벽에서 인바운드 규칙을 추가했습니다. <br/>
해당 규칙은 TCP에 적용시키고, 특정 포트 2222에 적용시킵니다. <br/>

<p align="center" style="margin: 20px 0">
  <img width="90%" alt="windows defender 설정 사진" src="https://github.com/user-attachments/assets/d1ea7932-b15a-43d4-8999-a22fd7e5c3d5" />
</p>

이로서 설정은 다 되었고, 내 IP 해당 포트가 열려있는지 확인하기 위해서 해당 사이트를 들어가서 확인해봤습니다.[(포트확인 사이트)](https://www.yougetsignal.com/tools/open-ports/) <br/>

<p align="center" style="margin: 20px 0">
  <img width="90%" alt="you get signal 페이지 사진" src="https://github.com/user-attachments/assets/431d07f0-fe32-4ef8-bce4-05e5da09fdba" />
</p>

열려있는걸 확인하고 MacOS에서 데스크탑 공인 PC IP의 포트 2222번으로 접속하면? <br/>

<p align="center" style="margin: 20px 0">
  <img width="90%" alt="맥북 서버 접속" src="https://github.com/user-attachments/assets/39409e00-deb7-46f6-aa3e-2d04511dda89" />
</p>

어디서든 접속하게 되었습니다!!! <br/>

### 뻘짓 두번째 (원격으로 FPGA보드에 비트스트림 업로드 하기)




## Goal

## System Architecture

## Process

## Conclusion

## Difficulites and Feelings

## Reference
- [리눅스 실습 서버 만들기](https://seonybob3210.tistory.com/35) <br/>
- [WSL2 외부 접속 설정](https://velog.io/@momentum96/WSL2-%EC%99%B8%EB%B6%80-%EC%A0%91%EC%86%8D-%EC%84%A4%EC%A0%95#2-wsl2-ssh-%EC%84%A4%EC%A0%95) <br/>
- [윈도우즈 방화벽 설정](https://tttsss77.tistory.com/238#google_vignette) <br/>
