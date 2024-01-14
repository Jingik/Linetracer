Library ieee;
use ieee.std_logic_1164.all;

entity LineTracer is
   port(
	Counter_CK : in std_logic;
	Sensor : in std_logic_vector(7 downto 0); --sensor순서대로 지정
	LED : out std_logic_vector(7downto 0); -- sensor와 동일하게 LED 설정
	Con : in std_logic;
	--motor 지정
	MT_L:buffer std_logic;
	MT_R:buffer std_logic;
	--segment 지정
   Sg0 : out std_logic_vector(6 downto 0);
   Sg1 : out std_logic_vector(6 downto 0);
   Sg2 : out std_logic_vector(6 downto 0);
   Sg3 : out std_logic_vector(6 downto 0);
	--버튼을 지정해 모드변경 가능하게 설정
	BT1  : in std_logic;
	BT2	 : in std_logic;
	BT3	 : in std_logic);
end LineTracer;

architecture Data of LineTracer is
	--앞서 만들어 놓은 segment 파일 불러오기
	component segment is
	port(
	--앞서 만들어놓은 것과 혼돈이 없게 똑같이 input과 output설정
	    kin : integer range 0 to 9;
       seg : out STD_LOGIC_VECTOR (6 downto 0));
end component;

component segment_two is
--변수를 늘리기 위해 만들어놓은 segment 설정
      port(
         kin      : integer range 0 to 9; 
         seg      : out std_logic_vector (6 downto 0));
end component;
--속도를 지정하는 signal
   signal Velocity_int1    : integer range 0 to 9 := 0;
   signal Velocity_int2   : integer range 0 to 9 := 0;
   signal Velocity_int3   : integer range 0 to 9 := 0;
   signal Velocity_int4   : integer range 0 to 9 := 0;
   signal ConL   : integer; -- 왼쪽 방향 카운트
   signal ConR   : integer; -- 오른쪽 방향 카운트
   signal ConST  : integer; -- 정지 카운트
 begin
     LED<= Sensor;
   process( ConL, ConR, Con,Counter_CK,ConST,BT1,BT2,BT3)
      variable CT : integer range 0 to 5000000 := 0;
      variable CT1 : integer range 0 to 5000000 := 0;
      variable Fg : integer;
   begin
if( Con'event and Con = '1') then 
            if(CT1 =50000) then --카운트 설정
               CT1 := 0;
            else 
               CT1 := CT1 + 1;
            end if;
         end if;
      if(BT2 = '0') then   --버튼 2를 누르면 속도가 증가
      Fg := 1;
     end if;
  if(BT3 = '0') then -- 버튼 3을 누르면 플래그 값이 0이됨
      Fg := 0;
      end if;
 if(Fg = 1) then
case Sensor is --sensor 가 인식하는 값에 따라 왼쪽바퀴의 속도 조절
when "01111111" => ConL <=49999; conR <= 0;ConST  <=0;
      when "10111111" => ConL <=45000; ConR <= 1500; ConST  <=0;
      when "11011111" => ConL <=43500; ConR <= 2500; ConST  <=0;
      when "11101111" => ConL <=47500; ConR <=47500; ConST  <=0;
      when "11110111" => ConL <=47500; ConR <=47500; ConST  <=0;
      when "11111011" => ConL <=2500;  ConR <=43500; ConST  <=0;
      when "11111101" => ConL <=1500;  ConR <=45000;ConST  <=0;
      when "11111110" => ConL <=0;     ConR <=49999; ConST  <=0;
      when "00111111" => ConL <=49999; ConR <=0; ConST  <=0;
      when "10011111" => ConL <=48000; ConR <=1500; ConST  <=0;
      when "11001111" => ConL <=45000; ConR <=2500;ConST<=0;
      when "11100111" => ConL <=47500; ConR <=47500;ConST<=0;
      when "11110011" => ConL <=2500;  ConR <=45000;ConST<=0;
      when "11111000" => ConL <=1500;  ConR <=47500;ConST<=0;
      when "11111100" => ConL <=0;     ConR <=49999;ConST<=0;
      when "00000000" => ConL <=49999; ConR <=49999;ConST<=0;
      when "11111111" => ConL <=0;     ConR <=0;ConST<=1;
      when others     => ConL <=49999; ConR <=49999; ConST<=0;
      end case;
 else
      case Sensor is
      when "01111111" => ConL <=25000; ConR <= 0;ConST<=0;
      when "10111111" => ConL <=22500; ConR <= 750; ConST<=0;
      when "11011111" => ConL <=21250; ConR <= 1500; ConST<=0;
      when "11101111" => ConL <=23750; ConR <=23750; ConST<=0;
      when "11110111" => ConL <=23750; ConR <=23750; ConST<=0;
      when "11111011" => ConL <=1500;  ConR <=21250; ConST<=0;
      when "11111101" => ConL <=750;  ConR <=22500; ConST<=0;
      when "11111110" => ConL <=0;     ConR <=25000; ConST<=0;
      when "00111111" => ConL <=25000; ConR <=0; ConST<=0;
      when "10011111" => ConL <=22500; ConR <=750; ConST<=0;
      when "11001111" => ConL <=21250; ConR <=1500;ConST<=0;
      when "11100111" => ConL <=23750; ConR <=23750;ConST<=0;
      when "11110011" => ConL <=1500;  ConR <=22500;ConST<=0;
      when "11111001" => ConL <=750;  ConR <=23750;ConST<=0;
      when "11111100" => ConL <=0;     ConR <=25000;ConST<=0;
      when "00000000" => ConL <=25000; ConR <=25000;ConST<=0;
      when "11111111" => ConL <=0;     ConR <=0;ConST<=1;
      when others     => ConL <=25000; ConR <=25000; ConST<=0;
      end case;
      
      end if;
 
        if(CT1<ConR) then --오른쪽 카운트가 1보다크면
            MT_R<='1'; --오른쪽 모터가 정지
            SG0 <= "1000111"; --segmnt1에 L이 나타난다
           SG1 <= "1111111";
            else
            MT_R<='0';
         end if;
         
           if(CT1<ConL) then --왼쪽 카운트가 1보다 크면
            MT_L<='1';  --왼쪽 모터가 정지
            Sg0 <= "0001000"; --segmet1에 R이 나타난다
            Sg1 <= "1111111"; 
            else
            MT_L<='0';
         end if;
         
         if(BT1 = '0') then --첫번째 버튼을 누르면 모든 기능이 정지한다
        Velocity_int1 <= 0;
         Velocity_int2 <= 0;
         Velocity_int3 <= 0; 
         Velocity_int4 <= 0;
        ConST <= 1;  
         else
         if(ConST<=0)then 
               if(Counter_CK'event and Counter_CK='1') then

                  if(CT = 500000) then 
                     CT := 0;
                     Velocity_int1 <= Velocity_int1 + 1; 
                  if(Velocity_int1 = 9) then
                  Velocity_int2 <= Velocity_int2 + 1;
                     Velocity_int1 <= 0;
                     if(Velocity_int2 = 9) then
                     Velocity_int3 <= Velocity_int3 + 1;
                        Velocity_int2 <= 0;
                           if(Velocity_int3 = 9) then
                              Velocity_int4 <= Velocity_int4 + 1;
                                 Velocity_int3 <= 0;
                                 if(Velocity_int4= 5) then
                                    Velocity_int4 <= 0;
                                    end if;
                                 end if;
                              end if;
                           end if;
                        else 
                     CT := CT + 1;
                     end if;
                     end if;
                     else
                     Velocity_int1 <= Velocity_int1;
                     Velocity_int2 <= Velocity_int2;
                     Velocity_int3 <= Velocity_int3;
                     Velocity_int4 <= Velocity_int4;
                     end if;
                   end if;
                     end process;
							--u1,u2를 외부기능으로 처음 추가 했지만 코드 에러가 떠서 뺐음
            U3 : segment_two port map(Velocity_int3, Sg2);
            U4 : segment port map(Velocity_int4, Sg3);
      end Data;