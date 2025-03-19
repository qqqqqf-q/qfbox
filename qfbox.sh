
GREEN="\e[32m"
NC='\033[0m'
RED='\033[0;31m'
YELLOW='\033[0;33m'
CYAN='\033[0;36m'
PURPLE='\033[0;35m'
YELLOW='\033[0;33m'
RESET="\e[0m"

clear_screen() {
    clear
}


show_menu() {
    clear_screen
    echo -e "${CYAN}====================================================================${NC}"
    echo -e "${PURPLE}        清凤多合一工具箱菜单        ${NC}"   
    echo -e "${RED}  https://github.com/qqqqqf-q/qfbox   ${NC}""   
    echo -e "${CYAN}====================================================================${NC}"
    echo -e "${GREEN}1.${RESET} DD重装系统"
    echo -e "${GREEN}2.${RESET} 综合测试脚本"
    echo -e "${GREEN}3.${RESET} 性能测试"
    echo -e "${GREEN}4.${RESET} 流媒体及IP质量测试"
    echo -e "${GREEN}5.${RESET} 测速脚本"
    echo -e "${GREEN}6.${RESET} 回程测试"
    echo -e "${GREEN}7.${RESET} 功能脚本"
    echo -e "${GREEN}8.${RESET} 常用环境安装"
    echo -e "${GREEN}9.${RESET} 综合功能脚本"
    echo -e "${GREEN}0.${RESET} 退出"
    echo -e "${CYAN}==================================${NC}"
}


dd_submenu() {
    clear_screen
    echo -e "${CYAN}==================================${NC}"
    echo -e "${YELLOW}        DD重装系统选项        ${NC}"
    echo -e "${CYAN}==================================${NC}"
    echo -e "1. 史上最强脚本 (Debian 12)"
    echo -e "2. 萌咖大佬脚本 (Debian 11)"
    echo -e "3. beta.gs大佬脚本"
    echo -e "4. DD Windows 10"
    echo -e "0. 返回主菜单"
    echo -e "${CYAN}==================================${NC}"

    read -p "请选择操作 [0-4]: " choice
    sub_choice=${sub_choice:-0}
    case $choice in
        1)
            wget --no-check-certificate -qO InstallNET.sh 'https://raw.githubusercontent.com/leitbogioro/Tools/master/Linux_reinstall/InstallNET.sh' && chmod a+x InstallNET.sh && bash InstallNET.sh -debian 12 -pwd 'password'
            ;;
        2)
            bash <(wget --no-check-certificate -qO- 'https://raw.githubusercontent.com/MoeClub/Note/master/InstallNET.sh') -d 11 -v 64 -p password
            ;;
        3)
            wget --no-check-certificate -O NewReinstall.sh https://raw.githubusercontent.com/fcurrk/reinstall/master/NewReinstall.sh && chmod a+x NewReinstall.sh && bash NewReinstall.sh
            ;;
        4)
            echo -e ”账户：Administrator\n密码：Teddysun.com\n使用Windows徽标+R快捷键打开运行框，输入powershell运行，弹出powershell命名输入窗口，输入以下命令：irm https://get.activated.win | iex“
            bash <(curl -sSL https://raw.githubusercontent.com/leitbogioro/Tools/master/Linux_reinstall/InstallNET.sh) -windows 10 -lang "cn"
            ;;
        0)
            return
            ;;
        *)
            echo -e "${RED}无效的选择${NC}"
            read -p "按回车键继续..."
            ;;
    esac
}


bench_submenu() {
    clear_screen
    echo -e "${CYAN}==================================${NC}"
    echo -e "${YELLOW}        综合测试脚本选项        ${NC}"
    echo -e "${CYAN}==================================${NC}"
    echo -e "1. bench.sh"
    echo -e "2. LemonBench"
    echo -e "3. 融合怪"
    echo -e "4. NodeBench"
    echo -e "0. 返回主菜单"
    echo -e "${CYAN}==================================${NC}"

    read -p "请选择操作 [0-4]: " choice
    sub_choice=${sub_choice:-0}
    case $choice in
        1)
            wget -qO- bench.sh | bash
            ;;
        2)
            wget -qO- https://raw.githubusercontent.com/LemonBench/LemonBench/main/LemonBench.sh | bash -s -- --fast
            ;;
        3)
            bash <(wget -qO- --no-check-certificate https://gitlab.com/spiritysdx/za/-/raw/main/ecs.sh)
            ;;
        4)
            bash <(curl -sL https://raw.githubusercontent.com/LloydAsp/NodeBench/main/NodeBench.sh)
            ;;
        0)
            return
            ;;
        *)
            echo -e "${RED}无效的选择${NC}"
            read -p "按回车键继续..."
            ;;
    esac
}

performance_submenu() {
    clear_screen
    echo -e "${CYAN}==================================${NC}"
    echo -e "${YELLOW}        性能测试选项        ${NC}"
    echo -e "${CYAN}==================================${NC}"
    echo -e "1. GB6 (带宽测试)"
    echo -e "2. GB6 (无带宽测试)"
    echo -e "3. GB5 (带宽测试)"
    echo -e "4. GB5 (无带宽测试)"
    echo -e "0. 返回主菜单"
    echo -e "${CYAN}==================================${NC}"

    read -p "请选择操作 [0-4]: " choice
    sub_choice=${sub_choice:-0}
    case $choice in
        1)
            curl -sL yabs.sh | bash
            ;;
        2)
            curl -sL yabs.sh | bash -s -- -i
            ;;
        3)
            curl -sL yabs.sh | bash
            ;;
        4)
            curl -sL yabs.sh | bash -s -- -i -5
            ;;
        0)
            return
            ;;
        *)
            echo -e "${RED}无效的选择${NC}"
            read -p "按回车键继续..."
            ;;
    esac
}


streaming_submenu() {
    clear_screen
    echo -e "${CYAN}==================================${NC}"
    echo -e "${YELLOW}     流媒体及IP质量测试选项      ${NC}"
    echo -e "${CYAN}==================================${NC}"
    echo -e "1. [新]网络质量体检脚本    --对应 Net.Check.Place"
    echo -e "2. 常用解锁检测            --对应 check.unlock.media"
    echo -e "3. 原生检测脚本            --对应 Media.Check.Place"
    echo -e "4. 高准确度检测            --对应 RegionRestrictionCheck"
    echo -e "5. IP质量检测              --对应 IP.Check.Place"
    echo -e "6. DNS解锁修改             --对应 dns-unlock.sh"
    echo -e "0. 返回主菜单"
    echo -e "${CYAN}==================================${NC}"

    read -p "请选择操作 [0-6]: " choice
    case $choice in
        1)
            while true; do
                echo "1. [默认]双栈检测"
                echo "2. 只检测IPv4结果"
                echo "3. 只检测IPv6结果"
                echo "4. 延迟模式"
                echo "5. 低数据模式"
                echo "6. 跳过任意章节"
                echo "7. 中英文双语支持"
                echo "8. Json输出"
                echo "9. 跳过检测系统及安装依赖"
                echo "10. 自动安装依赖"
                echo "11. 报告展示完整IP地址"
                echo "0. 返回上级菜单"

                read -p "请输入数字: " sub_choice
                sub_choice=${sub_choice:-1}  # 如果用户直接按 Enter，则使用默认值 1
                case $sub_choice in
                    1)
                        bash <(curl -Ls Net.Check.Place)
                        ;;
                    2)
                        bash <(curl -Ls Net.Check.Place) -4
                        ;;
                    3)
                        bash <(curl -Ls Net.Check.Place) -6
                        ;;
                    4)
                        bash <(curl -Ls Net.Check.Place) -P
                        ;;
                    5)
                        bash <(curl -Ls Net.Check.Place) -L
                        ;;
                    6)
                        read -p "请输入跳过章节: " chapter
                        bash <(curl -Ls Net.Check.Place) -S "$chapter"
                        ;;
                    7)
                        bash <(curl -Ls Net.Check.Place) -l "cn|en"
                        ;;
                    8)
                        bash <(curl -Ls Net.Check.Place) -j
                        ;;
                    9)
                        bash <(curl -Ls Net.Check.Place) -n
                        ;;
                    10)
                        bash <(curl -Ls Net.Check.Place) -y
                        ;;
                    11)
                        bash <(curl -Ls Net.Check.Place) -f
                        ;;
                    0)
                        break
                        ;;
                    *)
                        echo -e "${RED}无效的选择${NC}"
                        ;;
                esac
                read -p "按回车键继续..."
            done
            ;;
        2)
            bash <(curl -L -s check.unlock.media)
            ;;
        3)
            bash <(curl -sL Media.Check.Place)
            ;;
        4)
            bash <(curl -L -s https://github.com/1-stream/RegionRestrictionCheck/raw/main/check.sh)
            ;;
        5)
            bash <(curl -sL IP.Check.Place)
            ;;
        6)
            wget -q https://raw.githubusercontent.com/Jimmyzxk/DNS-Alice-Unlock/main/dns-unlock.sh && bash dns-unlock.sh
            ;;
        0)
            return
            ;;
        *)
            echo -e "${RED}无效的选择${NC}"
            read -p "按回车键继续..."
            ;;
    esac
}


speedtest_submenu() {
    clear_screen
    echo -e "${CYAN}==================================${NC}"
    echo -e "${YELLOW}        测速脚本选项        ${NC}"
    echo -e "${CYAN}==================================${NC}"
    echo -e "1. Speedtest"
    echo -e "2. Taier"
    echo -e "3. hyperspeed"
    echo -e "4. 全球测速"
    echo -e "5. Iperf3打流"
    echo -e "0. 返回主菜单"
    echo -e "${CYAN}==================================${NC}"

    read -p "请选择操作 [0-5]: " choice
    sub_choice=${sub_choice:-0}
    case $choice in
        1)
            bash <(curl -sL bash.icu/speedtest)
            ;;
        2)
            bash <(curl -sL res.yserver.ink/taier.sh)
            ;;
        3)
            bash <(curl -Lso- https://bench.im/hyperspeed)
            ;;
        4)
            curl -sL network-speed.xyz | bash
            ;;
        5)
            if command -v iperf3 &> /dev/null; then
                echo "iperf3 已经安装"
                read -p "选择模式 (1-服务器, 2-客户端): " mode

                if [[ "$mode" == "1" ]]; then
                    echo "启动 iperf3 服务器..."
                    iperf3 -s &
                    echo "服务器已启动"
                    exit 0
                fi

                read -p "请输入目标服务器地址: " server_ip
                read -p "选择协议 (1-TCP[默认], 2-UDP): " protocol
                read -p "请输入线程数 (默认[1]): " threads
                threads=${threads:-1}
                read -p "请输入端口 (默认[5201]): " port
                port=${port:-5201}
                read -p "选择 IP 版本 (1-IPv4[默认], 2-IPv6): " ip_version
                read -p "选择模式 (1-发送[默认], 2-接收): " transfer_mode
                read -p "请输入传输时长 (秒[默认:10]): " duration
                duration=${duration:-10}
                read -p "请输入窗口大小 (默认:[64K]): " window_size
                window_size=${window_size:-64K}

                # 设置协议参数
                if [[ "$protocol" == "2" ]]; then
                    protocol_flag="-u"
                else
                    protocol_flag=""
                fi

                # 设置 IP 版本参数
                if [[ "$ip_version" == "2" ]]; then
                    ip_version_flag="-6"
                else
                    ip_version_flag=""
                fi

                # 发送/接收模式
                if [[ "$transfer_mode" == "2" ]]; then
                    mode_flag="--reverse"
                else
                    mode_flag=""
                fi


                iperf3 -c "$server_ip" $protocol_flag $ip_version_flag $mode_flag -p "$port" -P "$threads" -t "$duration" -w "$window_size"

                exit 0
            fi

            echo "iperf3 未安装，正在安装..."


            if command -v apt &> /dev/null; then
                sudo apt update && sudo apt install -y iperf3
            elif command -v yum &> /dev/null; then
                sudo yum install -y iperf3
            else
                echo "不支持的包管理器，请手动安装 iperf3"
                exit 1
            fi


            if command -v iperf3 &> /dev/null; then
                echo "iperf3 安装成功"
                read -p "选择模式 (1-服务器, 2-客户端): " mode

                if [[ "$mode" == "1" ]]; then
                    echo "启动 iperf3 服务器..."
                    iperf3 -s &
                    echo "服务器已启动"
                    exit 0
                fi

                read -p "请输入目标服务器地址: " server_ip
                read -p "选择协议 (1-TCP[默认], 2-UDP): " protocol
                read -p "请输入线程数 (默认[1]): " threads
                threads=${threads:-1}
                read -p "请输入端口 (默认[5201]): " port
                port=${port:-5201}
                read -p "选择 IP 版本 (1-IPv4[默认], 2-IPv6): " ip_version
                read -p "选择模式 (1-发送, 2-接收): " transfer_mode
                read -p "请输入传输时长 (秒[默认:10]): " duration
                duration=${duration:-10}
                read -p "请输入窗口大小 (默认:[64K]): " window_size
                window_size=${window_size:-64K}


                if [[ "$protocol" == "2" ]]; then
                    protocol_flag="-u"
                else
                    protocol_flag=""
                fi


                if [[ "$ip_version" == "2" ]]; then
                    ip_version_flag="-6"
                else
                    ip_version_flag=""
                fi


                if [[ "$transfer_mode" == "2" ]]; then
                    mode_flag="--reverse"
                else
                    mode_flag=""
                fi


                iperf3 -c "$server_ip" $protocol_flag $ip_version_flag $mode_flag -p "$port" -P "$threads" -t "$duration" -w "$window_size"

                exit 0
            else
                echo "iperf3 安装失败"
                exit 1
            fi
            ;;
        0)
            return
            ;;
        *)
            echo -e "${RED}无效的选择${NC}"
            read -p "按回车键继续..."
            ;;
    esac
}


traceroute_submenu() {
    clear_screen
    echo -e "${CYAN}==================================${NC}"
    echo -e "${YELLOW}        回程测试选项        ${NC}"
    echo -e "${CYAN}==================================${NC}"
    echo -e "1. 直接显示回程"
    echo -e "2. 详细回程测试1"
    echo -e "3. 详细回程测试2"
    echo -e "0. 返回主菜单"
    echo -e "${CYAN}==================================${NC}"

    read -p "请选择操作 [0-3]: " choice
    sub_choice=${sub_choice:-0}
    case $choice in
        1)
            curl https://raw.githubusercontent.com/ludashi2020/backtrace/main/install.sh -sSf | sh
            ;;
        2)
            wget -N --no-check-certificate https://raw.githubusercontent.com/Chennhaoo/Shell_Bash/master/AutoTrace.sh && chmod +x AutoTrace.sh && bash AutoTrace.sh
            ;;
        3)
            wget https://ghproxy.com/https://raw.githubusercontent.com/vpsxb/testrace/main/testrace.sh -O testrace.sh && bash testrace.sh
            ;;
        0)
            return
            ;;
        *)
            echo -e "${RED}无效的选择${NC}"
            read -p "按回车键继续..."
            ;;
    esac
}


function_submenu() {
    clear_screen
    echo -e "${CYAN}==================================${NC}"
    echo -e "${YELLOW}        功能脚本选项        ${NC}"
    echo -e "${CYAN}==================================${NC}"
    echo -e "1. 添加SWAP"
    echo -e "2. Fail2ban安装"
    echo -e "3. 一键BBR(适用于较新的Debian、Ubuntu)"
    echo -e "4. 多功能BBR安装"
    echo -e "5. 锐速/BBRPLUS/BBR2/BBR3"
    echo -e "6. TCP窗口调优"
    echo -e "7. 添加WARP"
    echo -e "8. 25端口开放测试"
    echo -e "9. realm端口转发"
    echo -e "0. 返回主菜单"
    echo -e "${CYAN}==================================${NC}"

    read -p "请选择操作 [0-8]: " choice
    sub_choice=${sub_choice:-0}
    case $choice in
        1)
            wget https://www.moerats.com/usr/shell/swap.sh && bash swap.sh
            ;;
        2)
            wget --no-check-certificate https://raw.githubusercontent.com/FunctionClub/Fail2ban/master/fail2ban.sh && bash fail2ban.sh 2>&1 | tee fail2ban.log
            ;;
        3)
            echo "net.core.default_qdisc=fq" >> /etc/sysctl.conf
            echo "net.ipv4.tcp_congestion_control=bbr" >> /etc/sysctl.conf
            sysctl -p
            sysctl net.ipv4.tcp_available_congestion_control
            lsmod | grep bbr
            ;;
        4)
            wget -N --no-check-certificate "https://gist.github.com/zeruns/a0ec603f20d1b86de6a774a8ba27588f/raw/4f9957ae23f5efb2bb7c57a198ae2cffebfb1c56/tcp.sh" && chmod +x tcp.sh && ./tcp.sh
            ;;
        5)
            wget -O tcpx.sh "https://github.com/ylx2016/Linux-NetSpeed/raw/master/tcpx.sh" && chmod +x tcpx.sh && ./tcpx.sh
            ;;
        6)
            wget http://sh.nekoneko.cloud/tools.sh -O tools.sh && bash tools.sh
            ;;
        7)
            wget -N https://gitlab.com/fscarmen/warp/-/raw/main/menu.sh && bash menu.sh
            ;;
        8)
            telnet smtp.aol.com 25
            ;;
        9)
            commands=(
                "curl -L https://host.wxgwxha.eu.org/https://github.com/wcwq98/realm/releases/download/V1.3/realm.sh -o realm.sh && chmod +x realm.sh && sudo ./realm.sh"
                "curl -L https://github.com/wcwq98/realm/releases/download/V1.3/realm.sh -o realm.sh && chmod +x realm.sh && sudo ./realm.sh"
                "curl -L https://raw.githubusercontent.com/wcwq98/realm/refs/heads/main/realm.sh -o realm.sh && chmod +x realm.sh && sudo ./realm.sh"
            )

            # 遍历命令列表
            for cmd in "${commands[@]}"; do
                echo "尝试执行: $cmd"
                eval "$cmd"
                
                if [ $? -eq 0 ]; then
                    echo "命令成功执行!"
                    exit 0
                else
                    echo "执行失败，尝试下一个..."
                fi
            done
            ;;
        0)
            return
            ;;
        *)
            echo -e "${RED}无效的选择${NC}"
            read -p "按回车键继续..."
            ;;
    esac
}


env_submenu() {
    clear_screen
    echo -e "${CYAN}==================================${NC}"
    echo -e "${YELLOW}        环境安装选项        ${NC}"
    echo -e "${CYAN}==================================${NC}"
    echo -e "1. Docker安装"
    echo -e "2. Python环境安装"
    echo -e "3. iperf3安装"
    echo -e "4. realm安装"
    echo -e "5. gost安装"
    echo -e "6. 极光面板安装"
    echo -e "7. 哪吒监控安装"
    echo -e "8. WARP安装"
    echo -e "9. Aria2安装"
    echo -e "10. 宝塔面板安装"
    echo -e "11. 宝塔开心版安装"
    echo -e "0. 返回主菜单"
    echo -e "${CYAN}==================================${NC}"

    read -p "请选择操作 [0-10]: " choice
    sub_choice=${sub_choice:-0}
    case $choice in
        1)
            curl -fsSL https://get.docker.com | bash -s docker --mirror Aliyun
            ;;
        2)
            apt-get install python3 python3-pip -y || yum install python3 python3-pip -y
            ;;
        3)
            apt-get install iperf3 -y || yum install iperf3 -y
            ;;
        4)
            wget https://github.com/zhboner/realm/releases/latest/download/realm -O /usr/bin/realm && chmod +x /usr/bin/realm
            ;;
        5)
            wget https://github.com/ginuerzh/gost/releases/latest/download/gost-linux-amd64 -O /usr/bin/gost && chmod +x /usr/bin/gost
            ;;
        6)
            docker run -d --name aurora -p 5688:5688 -v /var/run/docker.sock:/var/run/docker.sock --restart always lolli/aurora
            ;;
        7)
            curl -L https://raw.githubusercontent.com/naiba/nezha/master/script/install.sh -o nezha.sh && chmod +x nezha.sh && ./nezha.sh
            ;;
        8)
            wget -N --no-check-certificate https://raw.githubusercontent.com/fscarmen/warp/main/menu.sh && bash menu.sh
            ;;
        9)
            wget https://raw.githubusercontent.com/P3TERX/aria2.sh/master/aria2.sh && bash aria2.sh
            ;;
        10)
            wget -O install.sh http://download.bt.cn/install/install_6.0.sh && bash install.sh
            ;;
        11)
            if [ -f /usr/bin/curl ];then curl -sSO http://v9.btkaixin.net/install/install_6.0.sh;else wget -O install_6.0.sh http://v9.btkaixin.net/install/install_6.0.sh;fi;bash install_6.0.sh www.BTKaiXin.com
            ;;
        0)
            return
            ;;
        *)
            echo -e "${RED}无效的选择${NC}"
            read -p "按回车键继续..."
            ;;
    esac
}


complex_submenu() {
    clear_screen
    echo -e "${CYAN}==================================${NC}"
    echo -e "${YELLOW}       综合功能脚本选项       ${NC}"
    echo -e "${CYAN}==================================${NC}"
    echo -e "1. 科技lion脚本"
    echo -e "2. SKY-BOX工具箱"
    echo -e "3. VPS测试脚本"
    echo -e "4. 甲骨文云工具"
    echo -e "0. 返回主菜单"
    echo -e "${CYAN}==================================${NC}"

    read -p "请选择操作 [0-4]: " choice
    sub_choice=${sub_choice:-0}
    case $choice in
        1)
            wget -O- https://github.com/kejilion/sh/raw/main/kejilion.sh | bash
            ;;
        2)
            wget https://raw.githubusercontent.com/BlueSkyXN/SKY-BOX/main/box.sh && chmod +x box.sh && bash box.sh
            ;;
        3)
            bash <(curl -sL https://cdn.spiritlhl.workers.dev/https://raw.githubusercontent.com/spiritLHLS/ecs/main/ecs.sh)
            ;;
        4)
            bash <(wget --no-check-certificate -qO- https://raw.githubusercontent.com/Mrmineduce21/Oracle_OneKey_Active/main/OneKey_Active.sh)
            ;;
        0)
            return
            ;;
        *)
            echo -e "${RED}无效的选择${NC}"
            read -p "按回车键继续..."
            ;;
    esac
}
main() {
    while true; do
        clear_screen
        show_menu
        read -p "请选择操作 [0-9]: " choice
        case $choice in
            1)
                dd_submenu
                ;;
            2)
                bench_submenu
                ;;
            3)
                performance_submenu
                ;;
            4)
                streaming_submenu
                ;;
            5)
                speedtest_submenu
                ;;
            6)
                traceroute_submenu
                ;;
            7)
                function_submenu
                ;;
            8)
                env_submenu
                ;;
            9)
                complex_submenu
                ;;
            0)
                exit 0
                ;;
            *)
                echo -e "${RED}无效的选择${NC}"
                read -p "按回车键继续..."
                ;;
        esac
    done    
}
main