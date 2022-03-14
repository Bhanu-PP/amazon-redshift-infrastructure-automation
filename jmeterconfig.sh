<script>
echo Current date and time >> %SystemRoot%\Temp\test.log
echo %DATE% %TIME% >> %SystemRoot%\Temp\test.log
cd c:\
mkdir JMETER
cd JMETER
curl -o apache-jmeter-5.4.1.zip  https://dlcdn.apache.org//jmeter/binaries/apache-jmeter-5.4.1.zip
Curl -L https://github.com/git-for-windows/git/releases/download/v2.35.1.windows.2/Git-2.35.1.2-32-bit.exe > Git-2.35.1.2-32-bit.exe
(
echo [Setup]
echo Lang=default
echo Dir=C:\Program Files (x86)\Git
echo Group=Git
echo NoIcons=0
echo SetupType=default
echo Components=
echo Tasks=
echo PathOption=Cmd
echo SSHOption=OpenSSH
echo CRLFOption=CRLFAlways
)>"gitparameter.cnf"
start Git-2.35.1.2-32-bit.exe /VERYSILENT /LOADINF="gitparameter.cnf" /NORESTART

tar -xf apache-jmeter-5.4.1.zip
curl -o AWSCLIV2.msi https://awscli.amazonaws.com/AWSCLIV2.msi
msiexec.exe /i "AWSCLIV2.msi" /passive /l logcli.txt
set PATH=c:\Program Files\Amazon\AWSCLIV2\;%PATH%
set PATH=c:\Program Files (x86)\Git\bin\;%PATH%
git clone https://github.com/aws-samples/amazon-redshift-infrastructure-automation.git
