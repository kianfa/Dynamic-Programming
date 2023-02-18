clc;
clear;
close all;
%gheid haye system
% r0=input('Please enter your r0 (initial condition -5<r<5) :');
% r_dot0=input('Please enter your r0_dot (initial condition r_dot<) :');
% alfa0=input('Please enter your alfa0 (initial condition) :');
% alfa_dot0=input('Please enter your alfa0_dot (initial condition) :');
% dr=input('Please enter your quantization of the states :');
% du=input('Please enter your quantization of U (-10<U<10) :');

r0=1;
r_dot0=1;
alfa0=1;
alfa_dot0=1;
dr=20;
du=0.5;

r = (400:-dr:-400)';
% r_gheyd=[-8 , 8];
% r_dot_gheyd=[-10 , 10];
% alfa_gheyd = [-1.5 +1.5];
% alfa_dot_gheyd = [-3 3];
 r_gheyd=[-5 , 5];
        r_dot_gheyd=[-10 , 10];
        alfa_gheyd = [-4 +4];
        alfa_dot_gheyd = [-10 10];
m = 0.02;
R = 0.015;
g = -9.8;
L = 2.0;
J = 9.99e-6;
A= -m*g/(L*((J/R^2)+m));

% r = (5:-dr:-5)';
r_dot=( linspace(-500, 500 ,length(r)))';
alfa=(linspace(-400, 400 ,length(r)))';
alfa_dot=(linspace(-500, 500 ,length(r)))';


xk4=alfa_dot;
for i=2:(length(r))^3      
       xk4 = cat(1,xk4,alfa_dot);   
end
xk3_test(:,:)=nan;
for i=1:length(r)
    for j=1:length(r)
      xk3_test = cat(1,xk3_test,alfa(i));     
    end
end
for i=2:length(xk3_test)
    xk3(i-1) = xk3_test(i);
end
xk3=xk3';
temp1=xk3;
for i=2:length(r)^2 
      xk3 = cat(1,xk3,temp1);     
end
xk2_test(:,:)=nan;
for i=1:length(r)
    for j=1:length(r)^2
      xk2_test = cat(1,xk2_test,r_dot(i));     
    end
end
for i=2:length(xk2_test)
    xk2(i-1) = xk2_test(i);
end
xk2=xk2';
temp1=xk2;
for i=2:length(r) 
      xk2 = cat(1,xk2,temp1);     
end
xk1_test(:,:)=nan;
for i=1:length(r)
    for j=1:length(r)^3
      xk1_test = cat(1,xk1_test,r(i));     
    end
end
for i=2:length(xk1_test)
    xk1(i-1) = xk1_test(i);
end
xk1=xk1';
xk= [xk1 xk2 xk3 xk4];




  
    [cost_10001001,u_star1001,x1_next_chosen_lahze1001,x2_next_chosen_lahze1001,x3_next_chosen_lahze1001,x4_next_chosen_lahze1001,js10001001]=function1(A,r0,r_dot0,alfa0,alfa_dot0,dr,du,xk);
        
%       

        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%jadval 1 mohasebe shod
% 
%      
[cost_9991001,u_star1000,x1_next_chosen_lahze1000, x2_next_chosen_lahze1000,x3_next_chosen_lahze1000,x4_next_chosen_lahze1000,js9991001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js10001001');
[cost_9981001,u_star999,x1_next_chosen_lahze999, x2_next_chosen_lahze999,x3_next_chosen_lahze999,x4_next_chosen_lahze999,js9981001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9991001');
[cost_9971001,u_star998,x1_next_chosen_lahze998, x2_next_chosen_lahze998,x3_next_chosen_lahze998,x4_next_chosen_lahze998,js9971001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9981001');
[cost_9961001,u_star997,x1_next_chosen_lahze997, x2_next_chosen_lahze997,x3_next_chosen_lahze997,x4_next_chosen_lahze997,js9961001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9971001');
[cost_9951001,u_star996,x1_next_chosen_lahze996, x2_next_chosen_lahze996,x3_next_chosen_lahze996,x4_next_chosen_lahze996,js9951001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9961001');
[cost_9941001,u_star995,x1_next_chosen_lahze995, x2_next_chosen_lahze995,x3_next_chosen_lahze995,x4_next_chosen_lahze995,js9941001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9951001');
[cost_9931001,u_star994,x1_next_chosen_lahze994, x2_next_chosen_lahze994,x3_next_chosen_lahze994,x4_next_chosen_lahze994,js9931001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9941001');
[cost_9921001,u_star993,x1_next_chosen_lahze993, x2_next_chosen_lahze993,x3_next_chosen_lahze993,x4_next_chosen_lahze993,js9921001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9931001');
[cost_9911001,u_star992,x1_next_chosen_lahze992, x2_next_chosen_lahze992,x3_next_chosen_lahze992,x4_next_chosen_lahze992,js9911001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9921001');
[cost_9901001,u_star991,x1_next_chosen_lahze991, x2_next_chosen_lahze991,x3_next_chosen_lahze991,x4_next_chosen_lahze991,js9901001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9911001');
[cost_9891001,u_star990,x1_next_chosen_lahze990, x2_next_chosen_lahze990,x3_next_chosen_lahze990,x4_next_chosen_lahze990,js9891001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9901001');
[cost_9881001,u_star989,x1_next_chosen_lahze989, x2_next_chosen_lahze989,x3_next_chosen_lahze989,x4_next_chosen_lahze989,js9881001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9891001');
[cost_9871001,u_star988,x1_next_chosen_lahze988, x2_next_chosen_lahze988,x3_next_chosen_lahze988,x4_next_chosen_lahze988,js9871001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9881001');
[cost_9861001,u_star987,x1_next_chosen_lahze987, x2_next_chosen_lahze987,x3_next_chosen_lahze987,x4_next_chosen_lahze987,js9861001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9871001');
[cost_9851001,u_star986,x1_next_chosen_lahze986, x2_next_chosen_lahze986,x3_next_chosen_lahze986,x4_next_chosen_lahze986,js9851001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9861001');
[cost_9841001,u_star985,x1_next_chosen_lahze985, x2_next_chosen_lahze985,x3_next_chosen_lahze985,x4_next_chosen_lahze985,js9841001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9851001');
[cost_9831001,u_star984,x1_next_chosen_lahze984, x2_next_chosen_lahze984,x3_next_chosen_lahze984,x4_next_chosen_lahze984,js9831001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9841001');
[cost_9821001,u_star983,x1_next_chosen_lahze983, x2_next_chosen_lahze983,x3_next_chosen_lahze983,x4_next_chosen_lahze983,js9821001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9831001');
[cost_9811001,u_star982,x1_next_chosen_lahze982, x2_next_chosen_lahze982,x3_next_chosen_lahze982,x4_next_chosen_lahze982,js9811001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9821001');
[cost_9801001,u_star981,x1_next_chosen_lahze981, x2_next_chosen_lahze981,x3_next_chosen_lahze981,x4_next_chosen_lahze981,js9801001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9811001');
[cost_9791001,u_star980,x1_next_chosen_lahze980, x2_next_chosen_lahze980,x3_next_chosen_lahze980,x4_next_chosen_lahze980,js9791001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9801001');
[cost_9781001,u_star979,x1_next_chosen_lahze979, x2_next_chosen_lahze979,x3_next_chosen_lahze979,x4_next_chosen_lahze979,js9781001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9791001');
[cost_9771001,u_star978,x1_next_chosen_lahze978, x2_next_chosen_lahze978,x3_next_chosen_lahze978,x4_next_chosen_lahze978,js9771001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9781001');
[cost_9761001,u_star977,x1_next_chosen_lahze977, x2_next_chosen_lahze977,x3_next_chosen_lahze977,x4_next_chosen_lahze977,js9761001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9771001');
[cost_9751001,u_star976,x1_next_chosen_lahze976, x2_next_chosen_lahze976,x3_next_chosen_lahze976,x4_next_chosen_lahze976,js9751001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9761001');
[cost_9741001,u_star975,x1_next_chosen_lahze975, x2_next_chosen_lahze975,x3_next_chosen_lahze975,x4_next_chosen_lahze975,js9741001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9751001');
[cost_9731001,u_star974,x1_next_chosen_lahze974, x2_next_chosen_lahze974,x3_next_chosen_lahze974,x4_next_chosen_lahze974,js9731001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9741001');
[cost_9721001,u_star973,x1_next_chosen_lahze973, x2_next_chosen_lahze973,x3_next_chosen_lahze973,x4_next_chosen_lahze973,js9721001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9731001');
[cost_9711001,u_star972,x1_next_chosen_lahze972, x2_next_chosen_lahze972,x3_next_chosen_lahze972,x4_next_chosen_lahze972,js9711001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9721001');
[cost_9701001,u_star971,x1_next_chosen_lahze971, x2_next_chosen_lahze971,x3_next_chosen_lahze971,x4_next_chosen_lahze971,js9701001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9711001');
[cost_9691001,u_star970,x1_next_chosen_lahze970, x2_next_chosen_lahze970,x3_next_chosen_lahze970,x4_next_chosen_lahze970,js9691001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9701001');
[cost_9681001,u_star969,x1_next_chosen_lahze969, x2_next_chosen_lahze969,x3_next_chosen_lahze969,x4_next_chosen_lahze969,js9681001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9691001');
[cost_9671001,u_star968,x1_next_chosen_lahze968, x2_next_chosen_lahze968,x3_next_chosen_lahze968,x4_next_chosen_lahze968,js9671001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9681001');
[cost_9661001,u_star967,x1_next_chosen_lahze967, x2_next_chosen_lahze967,x3_next_chosen_lahze967,x4_next_chosen_lahze967,js9661001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9671001');
[cost_9651001,u_star966,x1_next_chosen_lahze966, x2_next_chosen_lahze966,x3_next_chosen_lahze966,x4_next_chosen_lahze966,js9651001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9661001');
[cost_9641001,u_star965,x1_next_chosen_lahze965, x2_next_chosen_lahze965,x3_next_chosen_lahze965,x4_next_chosen_lahze965,js9641001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9651001');
[cost_9631001,u_star964,x1_next_chosen_lahze964, x2_next_chosen_lahze964,x3_next_chosen_lahze964,x4_next_chosen_lahze964,js9631001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9641001');
[cost_9621001,u_star963,x1_next_chosen_lahze963, x2_next_chosen_lahze963,x3_next_chosen_lahze963,x4_next_chosen_lahze963,js9621001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9631001');
[cost_9611001,u_star962,x1_next_chosen_lahze962, x2_next_chosen_lahze962,x3_next_chosen_lahze962,x4_next_chosen_lahze962,js9611001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9621001');
[cost_9601001,u_star961,x1_next_chosen_lahze961, x2_next_chosen_lahze961,x3_next_chosen_lahze961,x4_next_chosen_lahze961,js9601001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9611001');
[cost_9591001,u_star960,x1_next_chosen_lahze960, x2_next_chosen_lahze960,x3_next_chosen_lahze960,x4_next_chosen_lahze960,js9591001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9601001');
[cost_9581001,u_star959,x1_next_chosen_lahze959, x2_next_chosen_lahze959,x3_next_chosen_lahze959,x4_next_chosen_lahze959,js9581001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9591001');
[cost_9571001,u_star958,x1_next_chosen_lahze958, x2_next_chosen_lahze958,x3_next_chosen_lahze958,x4_next_chosen_lahze958,js9571001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9581001');
[cost_9561001,u_star957,x1_next_chosen_lahze957, x2_next_chosen_lahze957,x3_next_chosen_lahze957,x4_next_chosen_lahze957,js9561001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9571001');
[cost_9551001,u_star956,x1_next_chosen_lahze956, x2_next_chosen_lahze956,x3_next_chosen_lahze956,x4_next_chosen_lahze956,js9551001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9561001');
[cost_9541001,u_star955,x1_next_chosen_lahze955, x2_next_chosen_lahze955,x3_next_chosen_lahze955,x4_next_chosen_lahze955,js9541001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9551001');
[cost_9531001,u_star954,x1_next_chosen_lahze954, x2_next_chosen_lahze954,x3_next_chosen_lahze954,x4_next_chosen_lahze954,js9531001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9541001');
[cost_9521001,u_star953,x1_next_chosen_lahze953, x2_next_chosen_lahze953,x3_next_chosen_lahze953,x4_next_chosen_lahze953,js9521001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9531001');
[cost_9511001,u_star952,x1_next_chosen_lahze952, x2_next_chosen_lahze952,x3_next_chosen_lahze952,x4_next_chosen_lahze952,js9511001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9521001');
[cost_9501001,u_star951,x1_next_chosen_lahze951, x2_next_chosen_lahze951,x3_next_chosen_lahze951,x4_next_chosen_lahze951,js9501001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9511001');
[cost_9491001,u_star950,x1_next_chosen_lahze950, x2_next_chosen_lahze950,x3_next_chosen_lahze950,x4_next_chosen_lahze950,js9491001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9501001');
[cost_9481001,u_star949,x1_next_chosen_lahze949, x2_next_chosen_lahze949,x3_next_chosen_lahze949,x4_next_chosen_lahze949,js9481001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9491001');
[cost_9471001,u_star948,x1_next_chosen_lahze948, x2_next_chosen_lahze948,x3_next_chosen_lahze948,x4_next_chosen_lahze948,js9471001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9481001');
[cost_9461001,u_star947,x1_next_chosen_lahze947, x2_next_chosen_lahze947,x3_next_chosen_lahze947,x4_next_chosen_lahze947,js9461001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9471001');
[cost_9451001,u_star946,x1_next_chosen_lahze946, x2_next_chosen_lahze946,x3_next_chosen_lahze946,x4_next_chosen_lahze946,js9451001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9461001');
[cost_9441001,u_star945,x1_next_chosen_lahze945, x2_next_chosen_lahze945,x3_next_chosen_lahze945,x4_next_chosen_lahze945,js9441001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9451001');
[cost_9431001,u_star944,x1_next_chosen_lahze944, x2_next_chosen_lahze944,x3_next_chosen_lahze944,x4_next_chosen_lahze944,js9431001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9441001');
[cost_9421001,u_star943,x1_next_chosen_lahze943, x2_next_chosen_lahze943,x3_next_chosen_lahze943,x4_next_chosen_lahze943,js9421001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9431001');
[cost_9411001,u_star942,x1_next_chosen_lahze942, x2_next_chosen_lahze942,x3_next_chosen_lahze942,x4_next_chosen_lahze942,js9411001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9421001');
[cost_9401001,u_star941,x1_next_chosen_lahze941, x2_next_chosen_lahze941,x3_next_chosen_lahze941,x4_next_chosen_lahze941,js9401001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9411001');
[cost_9391001,u_star940,x1_next_chosen_lahze940, x2_next_chosen_lahze940,x3_next_chosen_lahze940,x4_next_chosen_lahze940,js9391001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9401001');
[cost_9381001,u_star939,x1_next_chosen_lahze939, x2_next_chosen_lahze939,x3_next_chosen_lahze939,x4_next_chosen_lahze939,js9381001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9391001');
[cost_9371001,u_star938,x1_next_chosen_lahze938, x2_next_chosen_lahze938,x3_next_chosen_lahze938,x4_next_chosen_lahze938,js9371001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9381001');
[cost_9361001,u_star937,x1_next_chosen_lahze937, x2_next_chosen_lahze937,x3_next_chosen_lahze937,x4_next_chosen_lahze937,js9361001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9371001');
[cost_9351001,u_star936,x1_next_chosen_lahze936, x2_next_chosen_lahze936,x3_next_chosen_lahze936,x4_next_chosen_lahze936,js9351001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9361001');
[cost_9341001,u_star935,x1_next_chosen_lahze935, x2_next_chosen_lahze935,x3_next_chosen_lahze935,x4_next_chosen_lahze935,js9341001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9351001');
[cost_9331001,u_star934,x1_next_chosen_lahze934, x2_next_chosen_lahze934,x3_next_chosen_lahze934,x4_next_chosen_lahze934,js9331001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9341001');
[cost_9321001,u_star933,x1_next_chosen_lahze933, x2_next_chosen_lahze933,x3_next_chosen_lahze933,x4_next_chosen_lahze933,js9321001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9331001');
[cost_9311001,u_star932,x1_next_chosen_lahze932, x2_next_chosen_lahze932,x3_next_chosen_lahze932,x4_next_chosen_lahze932,js9311001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9321001');
[cost_9301001,u_star931,x1_next_chosen_lahze931, x2_next_chosen_lahze931,x3_next_chosen_lahze931,x4_next_chosen_lahze931,js9301001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9311001');
[cost_9291001,u_star930,x1_next_chosen_lahze930, x2_next_chosen_lahze930,x3_next_chosen_lahze930,x4_next_chosen_lahze930,js9291001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9301001');
[cost_9281001,u_star929,x1_next_chosen_lahze929, x2_next_chosen_lahze929,x3_next_chosen_lahze929,x4_next_chosen_lahze929,js9281001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9291001');
[cost_9271001,u_star928,x1_next_chosen_lahze928, x2_next_chosen_lahze928,x3_next_chosen_lahze928,x4_next_chosen_lahze928,js9271001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9281001');
[cost_9261001,u_star927,x1_next_chosen_lahze927, x2_next_chosen_lahze927,x3_next_chosen_lahze927,x4_next_chosen_lahze927,js9261001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9271001');
[cost_9251001,u_star926,x1_next_chosen_lahze926, x2_next_chosen_lahze926,x3_next_chosen_lahze926,x4_next_chosen_lahze926,js9251001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9261001');
[cost_9241001,u_star925,x1_next_chosen_lahze925, x2_next_chosen_lahze925,x3_next_chosen_lahze925,x4_next_chosen_lahze925,js9241001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9251001');
[cost_9231001,u_star924,x1_next_chosen_lahze924, x2_next_chosen_lahze924,x3_next_chosen_lahze924,x4_next_chosen_lahze924,js9231001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9241001');
[cost_9221001,u_star923,x1_next_chosen_lahze923, x2_next_chosen_lahze923,x3_next_chosen_lahze923,x4_next_chosen_lahze923,js9221001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9231001');
[cost_9211001,u_star922,x1_next_chosen_lahze922, x2_next_chosen_lahze922,x3_next_chosen_lahze922,x4_next_chosen_lahze922,js9211001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9221001');
[cost_9201001,u_star921,x1_next_chosen_lahze921, x2_next_chosen_lahze921,x3_next_chosen_lahze921,x4_next_chosen_lahze921,js9201001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9211001');
[cost_9191001,u_star920,x1_next_chosen_lahze920, x2_next_chosen_lahze920,x3_next_chosen_lahze920,x4_next_chosen_lahze920,js9191001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9201001');
[cost_9181001,u_star919,x1_next_chosen_lahze919, x2_next_chosen_lahze919,x3_next_chosen_lahze919,x4_next_chosen_lahze919,js9181001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9191001');
[cost_9171001,u_star918,x1_next_chosen_lahze918, x2_next_chosen_lahze918,x3_next_chosen_lahze918,x4_next_chosen_lahze918,js9171001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9181001');
[cost_9161001,u_star917,x1_next_chosen_lahze917, x2_next_chosen_lahze917,x3_next_chosen_lahze917,x4_next_chosen_lahze917,js9161001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9171001');
[cost_9151001,u_star916,x1_next_chosen_lahze916, x2_next_chosen_lahze916,x3_next_chosen_lahze916,x4_next_chosen_lahze916,js9151001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9161001');
[cost_9141001,u_star915,x1_next_chosen_lahze915, x2_next_chosen_lahze915,x3_next_chosen_lahze915,x4_next_chosen_lahze915,js9141001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9151001');
[cost_9131001,u_star914,x1_next_chosen_lahze914, x2_next_chosen_lahze914,x3_next_chosen_lahze914,x4_next_chosen_lahze914,js9131001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9141001');
[cost_9121001,u_star913,x1_next_chosen_lahze913, x2_next_chosen_lahze913,x3_next_chosen_lahze913,x4_next_chosen_lahze913,js9121001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9131001');
[cost_9111001,u_star912,x1_next_chosen_lahze912, x2_next_chosen_lahze912,x3_next_chosen_lahze912,x4_next_chosen_lahze912,js9111001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9121001');
[cost_9101001,u_star911,x1_next_chosen_lahze911, x2_next_chosen_lahze911,x3_next_chosen_lahze911,x4_next_chosen_lahze911,js9101001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9111001');
[cost_9091001,u_star910,x1_next_chosen_lahze910, x2_next_chosen_lahze910,x3_next_chosen_lahze910,x4_next_chosen_lahze910,js9091001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9101001');
[cost_9081001,u_star909,x1_next_chosen_lahze909, x2_next_chosen_lahze909,x3_next_chosen_lahze909,x4_next_chosen_lahze909,js9081001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9091001');
[cost_9071001,u_star908,x1_next_chosen_lahze908, x2_next_chosen_lahze908,x3_next_chosen_lahze908,x4_next_chosen_lahze908,js9071001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9081001');
[cost_9061001,u_star907,x1_next_chosen_lahze907, x2_next_chosen_lahze907,x3_next_chosen_lahze907,x4_next_chosen_lahze907,js9061001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9071001');
[cost_9051001,u_star906,x1_next_chosen_lahze906, x2_next_chosen_lahze906,x3_next_chosen_lahze906,x4_next_chosen_lahze906,js9051001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9061001');
[cost_9041001,u_star905,x1_next_chosen_lahze905, x2_next_chosen_lahze905,x3_next_chosen_lahze905,x4_next_chosen_lahze905,js9041001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9051001');
[cost_9031001,u_star904,x1_next_chosen_lahze904, x2_next_chosen_lahze904,x3_next_chosen_lahze904,x4_next_chosen_lahze904,js9031001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9041001');
[cost_9021001,u_star903,x1_next_chosen_lahze903, x2_next_chosen_lahze903,x3_next_chosen_lahze903,x4_next_chosen_lahze903,js9021001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9031001');
[cost_9011001,u_star902,x1_next_chosen_lahze902, x2_next_chosen_lahze902,x3_next_chosen_lahze902,x4_next_chosen_lahze902,js9011001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9021001');
[cost_9001001,u_star901,x1_next_chosen_lahze901, x2_next_chosen_lahze901,x3_next_chosen_lahze901,x4_next_chosen_lahze901,js9001001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9011001');
[cost_8991001,u_star900,x1_next_chosen_lahze900, x2_next_chosen_lahze900,x3_next_chosen_lahze900,x4_next_chosen_lahze900,js8991001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js9001001');
[cost_8981001,u_star899,x1_next_chosen_lahze899, x2_next_chosen_lahze899,x3_next_chosen_lahze899,x4_next_chosen_lahze899,js8981001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8991001');
[cost_8971001,u_star898,x1_next_chosen_lahze898, x2_next_chosen_lahze898,x3_next_chosen_lahze898,x4_next_chosen_lahze898,js8971001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8981001');
[cost_8961001,u_star897,x1_next_chosen_lahze897, x2_next_chosen_lahze897,x3_next_chosen_lahze897,x4_next_chosen_lahze897,js8961001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8971001');
[cost_8951001,u_star896,x1_next_chosen_lahze896, x2_next_chosen_lahze896,x3_next_chosen_lahze896,x4_next_chosen_lahze896,js8951001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8961001');
[cost_8941001,u_star895,x1_next_chosen_lahze895, x2_next_chosen_lahze895,x3_next_chosen_lahze895,x4_next_chosen_lahze895,js8941001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8951001');
[cost_8931001,u_star894,x1_next_chosen_lahze894, x2_next_chosen_lahze894,x3_next_chosen_lahze894,x4_next_chosen_lahze894,js8931001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8941001');
[cost_8921001,u_star893,x1_next_chosen_lahze893, x2_next_chosen_lahze893,x3_next_chosen_lahze893,x4_next_chosen_lahze893,js8921001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8931001');
[cost_8911001,u_star892,x1_next_chosen_lahze892, x2_next_chosen_lahze892,x3_next_chosen_lahze892,x4_next_chosen_lahze892,js8911001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8921001');
[cost_8901001,u_star891,x1_next_chosen_lahze891, x2_next_chosen_lahze891,x3_next_chosen_lahze891,x4_next_chosen_lahze891,js8901001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8911001');
[cost_8891001,u_star890,x1_next_chosen_lahze890, x2_next_chosen_lahze890,x3_next_chosen_lahze890,x4_next_chosen_lahze890,js8891001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8901001');
[cost_8881001,u_star889,x1_next_chosen_lahze889, x2_next_chosen_lahze889,x3_next_chosen_lahze889,x4_next_chosen_lahze889,js8881001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8891001');
[cost_8871001,u_star888,x1_next_chosen_lahze888, x2_next_chosen_lahze888,x3_next_chosen_lahze888,x4_next_chosen_lahze888,js8871001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8881001');
[cost_8861001,u_star887,x1_next_chosen_lahze887, x2_next_chosen_lahze887,x3_next_chosen_lahze887,x4_next_chosen_lahze887,js8861001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8871001');
[cost_8851001,u_star886,x1_next_chosen_lahze886, x2_next_chosen_lahze886,x3_next_chosen_lahze886,x4_next_chosen_lahze886,js8851001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8861001');
[cost_8841001,u_star885,x1_next_chosen_lahze885, x2_next_chosen_lahze885,x3_next_chosen_lahze885,x4_next_chosen_lahze885,js8841001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8851001');
[cost_8831001,u_star884,x1_next_chosen_lahze884, x2_next_chosen_lahze884,x3_next_chosen_lahze884,x4_next_chosen_lahze884,js8831001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8841001');
[cost_8821001,u_star883,x1_next_chosen_lahze883, x2_next_chosen_lahze883,x3_next_chosen_lahze883,x4_next_chosen_lahze883,js8821001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8831001');
[cost_8811001,u_star882,x1_next_chosen_lahze882, x2_next_chosen_lahze882,x3_next_chosen_lahze882,x4_next_chosen_lahze882,js8811001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8821001');
[cost_8801001,u_star881,x1_next_chosen_lahze881, x2_next_chosen_lahze881,x3_next_chosen_lahze881,x4_next_chosen_lahze881,js8801001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8811001');
[cost_8791001,u_star880,x1_next_chosen_lahze880, x2_next_chosen_lahze880,x3_next_chosen_lahze880,x4_next_chosen_lahze880,js8791001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8801001');
[cost_8781001,u_star879,x1_next_chosen_lahze879, x2_next_chosen_lahze879,x3_next_chosen_lahze879,x4_next_chosen_lahze879,js8781001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8791001');
[cost_8771001,u_star878,x1_next_chosen_lahze878, x2_next_chosen_lahze878,x3_next_chosen_lahze878,x4_next_chosen_lahze878,js8771001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8781001');
[cost_8761001,u_star877,x1_next_chosen_lahze877, x2_next_chosen_lahze877,x3_next_chosen_lahze877,x4_next_chosen_lahze877,js8761001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8771001');
[cost_8751001,u_star876,x1_next_chosen_lahze876, x2_next_chosen_lahze876,x3_next_chosen_lahze876,x4_next_chosen_lahze876,js8751001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8761001');
[cost_8741001,u_star875,x1_next_chosen_lahze875, x2_next_chosen_lahze875,x3_next_chosen_lahze875,x4_next_chosen_lahze875,js8741001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8751001');
[cost_8731001,u_star874,x1_next_chosen_lahze874, x2_next_chosen_lahze874,x3_next_chosen_lahze874,x4_next_chosen_lahze874,js8731001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8741001');
[cost_8721001,u_star873,x1_next_chosen_lahze873, x2_next_chosen_lahze873,x3_next_chosen_lahze873,x4_next_chosen_lahze873,js8721001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8731001');
[cost_8711001,u_star872,x1_next_chosen_lahze872, x2_next_chosen_lahze872,x3_next_chosen_lahze872,x4_next_chosen_lahze872,js8711001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8721001');
[cost_8701001,u_star871,x1_next_chosen_lahze871, x2_next_chosen_lahze871,x3_next_chosen_lahze871,x4_next_chosen_lahze871,js8701001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8711001');
[cost_8691001,u_star870,x1_next_chosen_lahze870, x2_next_chosen_lahze870,x3_next_chosen_lahze870,x4_next_chosen_lahze870,js8691001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8701001');
[cost_8681001,u_star869,x1_next_chosen_lahze869, x2_next_chosen_lahze869,x3_next_chosen_lahze869,x4_next_chosen_lahze869,js8681001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8691001');
[cost_8671001,u_star868,x1_next_chosen_lahze868, x2_next_chosen_lahze868,x3_next_chosen_lahze868,x4_next_chosen_lahze868,js8671001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8681001');
[cost_8661001,u_star867,x1_next_chosen_lahze867, x2_next_chosen_lahze867,x3_next_chosen_lahze867,x4_next_chosen_lahze867,js8661001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8671001');
[cost_8651001,u_star866,x1_next_chosen_lahze866, x2_next_chosen_lahze866,x3_next_chosen_lahze866,x4_next_chosen_lahze866,js8651001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8661001');
[cost_8641001,u_star865,x1_next_chosen_lahze865, x2_next_chosen_lahze865,x3_next_chosen_lahze865,x4_next_chosen_lahze865,js8641001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8651001');
[cost_8631001,u_star864,x1_next_chosen_lahze864, x2_next_chosen_lahze864,x3_next_chosen_lahze864,x4_next_chosen_lahze864,js8631001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8641001');
[cost_8621001,u_star863,x1_next_chosen_lahze863, x2_next_chosen_lahze863,x3_next_chosen_lahze863,x4_next_chosen_lahze863,js8621001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8631001');
[cost_8611001,u_star862,x1_next_chosen_lahze862, x2_next_chosen_lahze862,x3_next_chosen_lahze862,x4_next_chosen_lahze862,js8611001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8621001');
[cost_8601001,u_star861,x1_next_chosen_lahze861, x2_next_chosen_lahze861,x3_next_chosen_lahze861,x4_next_chosen_lahze861,js8601001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8611001');
[cost_8591001,u_star860,x1_next_chosen_lahze860, x2_next_chosen_lahze860,x3_next_chosen_lahze860,x4_next_chosen_lahze860,js8591001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8601001');
[cost_8581001,u_star859,x1_next_chosen_lahze859, x2_next_chosen_lahze859,x3_next_chosen_lahze859,x4_next_chosen_lahze859,js8581001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8591001');
[cost_8571001,u_star858,x1_next_chosen_lahze858, x2_next_chosen_lahze858,x3_next_chosen_lahze858,x4_next_chosen_lahze858,js8571001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8581001');
[cost_8561001,u_star857,x1_next_chosen_lahze857, x2_next_chosen_lahze857,x3_next_chosen_lahze857,x4_next_chosen_lahze857,js8561001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8571001');
[cost_8551001,u_star856,x1_next_chosen_lahze856, x2_next_chosen_lahze856,x3_next_chosen_lahze856,x4_next_chosen_lahze856,js8551001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8561001');
[cost_8541001,u_star855,x1_next_chosen_lahze855, x2_next_chosen_lahze855,x3_next_chosen_lahze855,x4_next_chosen_lahze855,js8541001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8551001');
[cost_8531001,u_star854,x1_next_chosen_lahze854, x2_next_chosen_lahze854,x3_next_chosen_lahze854,x4_next_chosen_lahze854,js8531001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8541001');
[cost_8521001,u_star853,x1_next_chosen_lahze853, x2_next_chosen_lahze853,x3_next_chosen_lahze853,x4_next_chosen_lahze853,js8521001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8531001');
[cost_8511001,u_star852,x1_next_chosen_lahze852, x2_next_chosen_lahze852,x3_next_chosen_lahze852,x4_next_chosen_lahze852,js8511001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8521001');
[cost_8501001,u_star851,x1_next_chosen_lahze851, x2_next_chosen_lahze851,x3_next_chosen_lahze851,x4_next_chosen_lahze851,js8501001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8511001');
[cost_8491001,u_star850,x1_next_chosen_lahze850, x2_next_chosen_lahze850,x3_next_chosen_lahze850,x4_next_chosen_lahze850,js8491001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8501001');
[cost_8481001,u_star849,x1_next_chosen_lahze849, x2_next_chosen_lahze849,x3_next_chosen_lahze849,x4_next_chosen_lahze849,js8481001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8491001');
[cost_8471001,u_star848,x1_next_chosen_lahze848, x2_next_chosen_lahze848,x3_next_chosen_lahze848,x4_next_chosen_lahze848,js8471001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8481001');
[cost_8461001,u_star847,x1_next_chosen_lahze847, x2_next_chosen_lahze847,x3_next_chosen_lahze847,x4_next_chosen_lahze847,js8461001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8471001');
[cost_8451001,u_star846,x1_next_chosen_lahze846, x2_next_chosen_lahze846,x3_next_chosen_lahze846,x4_next_chosen_lahze846,js8451001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8461001');
[cost_8441001,u_star845,x1_next_chosen_lahze845, x2_next_chosen_lahze845,x3_next_chosen_lahze845,x4_next_chosen_lahze845,js8441001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8451001');
[cost_8431001,u_star844,x1_next_chosen_lahze844, x2_next_chosen_lahze844,x3_next_chosen_lahze844,x4_next_chosen_lahze844,js8431001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8441001');
[cost_8421001,u_star843,x1_next_chosen_lahze843, x2_next_chosen_lahze843,x3_next_chosen_lahze843,x4_next_chosen_lahze843,js8421001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8431001');
[cost_8411001,u_star842,x1_next_chosen_lahze842, x2_next_chosen_lahze842,x3_next_chosen_lahze842,x4_next_chosen_lahze842,js8411001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8421001');
[cost_8401001,u_star841,x1_next_chosen_lahze841, x2_next_chosen_lahze841,x3_next_chosen_lahze841,x4_next_chosen_lahze841,js8401001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8411001');
[cost_8391001,u_star840,x1_next_chosen_lahze840, x2_next_chosen_lahze840,x3_next_chosen_lahze840,x4_next_chosen_lahze840,js8391001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8401001');
[cost_8381001,u_star839,x1_next_chosen_lahze839, x2_next_chosen_lahze839,x3_next_chosen_lahze839,x4_next_chosen_lahze839,js8381001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8391001');
[cost_8371001,u_star838,x1_next_chosen_lahze838, x2_next_chosen_lahze838,x3_next_chosen_lahze838,x4_next_chosen_lahze838,js8371001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8381001');
[cost_8361001,u_star837,x1_next_chosen_lahze837, x2_next_chosen_lahze837,x3_next_chosen_lahze837,x4_next_chosen_lahze837,js8361001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8371001');
[cost_8351001,u_star836,x1_next_chosen_lahze836, x2_next_chosen_lahze836,x3_next_chosen_lahze836,x4_next_chosen_lahze836,js8351001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8361001');
[cost_8341001,u_star835,x1_next_chosen_lahze835, x2_next_chosen_lahze835,x3_next_chosen_lahze835,x4_next_chosen_lahze835,js8341001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8351001');
[cost_8331001,u_star834,x1_next_chosen_lahze834, x2_next_chosen_lahze834,x3_next_chosen_lahze834,x4_next_chosen_lahze834,js8331001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8341001');
[cost_8321001,u_star833,x1_next_chosen_lahze833, x2_next_chosen_lahze833,x3_next_chosen_lahze833,x4_next_chosen_lahze833,js8321001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8331001');
[cost_8311001,u_star832,x1_next_chosen_lahze832, x2_next_chosen_lahze832,x3_next_chosen_lahze832,x4_next_chosen_lahze832,js8311001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8321001');
[cost_8301001,u_star831,x1_next_chosen_lahze831, x2_next_chosen_lahze831,x3_next_chosen_lahze831,x4_next_chosen_lahze831,js8301001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8311001');
[cost_8291001,u_star830,x1_next_chosen_lahze830, x2_next_chosen_lahze830,x3_next_chosen_lahze830,x4_next_chosen_lahze830,js8291001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8301001');
[cost_8281001,u_star829,x1_next_chosen_lahze829, x2_next_chosen_lahze829,x3_next_chosen_lahze829,x4_next_chosen_lahze829,js8281001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8291001');
[cost_8271001,u_star828,x1_next_chosen_lahze828, x2_next_chosen_lahze828,x3_next_chosen_lahze828,x4_next_chosen_lahze828,js8271001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8281001');
[cost_8261001,u_star827,x1_next_chosen_lahze827, x2_next_chosen_lahze827,x3_next_chosen_lahze827,x4_next_chosen_lahze827,js8261001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8271001');
[cost_8251001,u_star826,x1_next_chosen_lahze826, x2_next_chosen_lahze826,x3_next_chosen_lahze826,x4_next_chosen_lahze826,js8251001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8261001');
[cost_8241001,u_star825,x1_next_chosen_lahze825, x2_next_chosen_lahze825,x3_next_chosen_lahze825,x4_next_chosen_lahze825,js8241001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8251001');
[cost_8231001,u_star824,x1_next_chosen_lahze824, x2_next_chosen_lahze824,x3_next_chosen_lahze824,x4_next_chosen_lahze824,js8231001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8241001');
[cost_8221001,u_star823,x1_next_chosen_lahze823, x2_next_chosen_lahze823,x3_next_chosen_lahze823,x4_next_chosen_lahze823,js8221001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8231001');
[cost_8211001,u_star822,x1_next_chosen_lahze822, x2_next_chosen_lahze822,x3_next_chosen_lahze822,x4_next_chosen_lahze822,js8211001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8221001');
[cost_8201001,u_star821,x1_next_chosen_lahze821, x2_next_chosen_lahze821,x3_next_chosen_lahze821,x4_next_chosen_lahze821,js8201001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8211001');
[cost_8191001,u_star820,x1_next_chosen_lahze820, x2_next_chosen_lahze820,x3_next_chosen_lahze820,x4_next_chosen_lahze820,js8191001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8201001');
[cost_8181001,u_star819,x1_next_chosen_lahze819, x2_next_chosen_lahze819,x3_next_chosen_lahze819,x4_next_chosen_lahze819,js8181001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8191001');
[cost_8171001,u_star818,x1_next_chosen_lahze818, x2_next_chosen_lahze818,x3_next_chosen_lahze818,x4_next_chosen_lahze818,js8171001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8181001');
[cost_8161001,u_star817,x1_next_chosen_lahze817, x2_next_chosen_lahze817,x3_next_chosen_lahze817,x4_next_chosen_lahze817,js8161001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8171001');
[cost_8151001,u_star816,x1_next_chosen_lahze816, x2_next_chosen_lahze816,x3_next_chosen_lahze816,x4_next_chosen_lahze816,js8151001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8161001');
[cost_8141001,u_star815,x1_next_chosen_lahze815, x2_next_chosen_lahze815,x3_next_chosen_lahze815,x4_next_chosen_lahze815,js8141001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8151001');
[cost_8131001,u_star814,x1_next_chosen_lahze814, x2_next_chosen_lahze814,x3_next_chosen_lahze814,x4_next_chosen_lahze814,js8131001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8141001');
[cost_8121001,u_star813,x1_next_chosen_lahze813, x2_next_chosen_lahze813,x3_next_chosen_lahze813,x4_next_chosen_lahze813,js8121001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8131001');
[cost_8111001,u_star812,x1_next_chosen_lahze812, x2_next_chosen_lahze812,x3_next_chosen_lahze812,x4_next_chosen_lahze812,js8111001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8121001');
[cost_8101001,u_star811,x1_next_chosen_lahze811, x2_next_chosen_lahze811,x3_next_chosen_lahze811,x4_next_chosen_lahze811,js8101001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8111001');
[cost_8091001,u_star810,x1_next_chosen_lahze810, x2_next_chosen_lahze810,x3_next_chosen_lahze810,x4_next_chosen_lahze810,js8091001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8101001');
[cost_8081001,u_star809,x1_next_chosen_lahze809, x2_next_chosen_lahze809,x3_next_chosen_lahze809,x4_next_chosen_lahze809,js8081001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8091001');
[cost_8071001,u_star808,x1_next_chosen_lahze808, x2_next_chosen_lahze808,x3_next_chosen_lahze808,x4_next_chosen_lahze808,js8071001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8081001');
[cost_8061001,u_star807,x1_next_chosen_lahze807, x2_next_chosen_lahze807,x3_next_chosen_lahze807,x4_next_chosen_lahze807,js8061001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8071001');
[cost_8051001,u_star806,x1_next_chosen_lahze806, x2_next_chosen_lahze806,x3_next_chosen_lahze806,x4_next_chosen_lahze806,js8051001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8061001');
[cost_8041001,u_star805,x1_next_chosen_lahze805, x2_next_chosen_lahze805,x3_next_chosen_lahze805,x4_next_chosen_lahze805,js8041001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8051001');
[cost_8031001,u_star804,x1_next_chosen_lahze804, x2_next_chosen_lahze804,x3_next_chosen_lahze804,x4_next_chosen_lahze804,js8031001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8041001');
[cost_8021001,u_star803,x1_next_chosen_lahze803, x2_next_chosen_lahze803,x3_next_chosen_lahze803,x4_next_chosen_lahze803,js8021001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8031001');
[cost_8011001,u_star802,x1_next_chosen_lahze802, x2_next_chosen_lahze802,x3_next_chosen_lahze802,x4_next_chosen_lahze802,js8011001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8021001');
[cost_8001001,u_star801,x1_next_chosen_lahze801, x2_next_chosen_lahze801,x3_next_chosen_lahze801,x4_next_chosen_lahze801,js8001001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8011001');
[cost_7991001,u_star800,x1_next_chosen_lahze800, x2_next_chosen_lahze800,x3_next_chosen_lahze800,x4_next_chosen_lahze800,js7991001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js8001001');
[cost_7981001,u_star799,x1_next_chosen_lahze799, x2_next_chosen_lahze799,x3_next_chosen_lahze799,x4_next_chosen_lahze799,js7981001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7991001');
[cost_7971001,u_star798,x1_next_chosen_lahze798, x2_next_chosen_lahze798,x3_next_chosen_lahze798,x4_next_chosen_lahze798,js7971001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7981001');
[cost_7961001,u_star797,x1_next_chosen_lahze797, x2_next_chosen_lahze797,x3_next_chosen_lahze797,x4_next_chosen_lahze797,js7961001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7971001');
[cost_7951001,u_star796,x1_next_chosen_lahze796, x2_next_chosen_lahze796,x3_next_chosen_lahze796,x4_next_chosen_lahze796,js7951001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7961001');
[cost_7941001,u_star795,x1_next_chosen_lahze795, x2_next_chosen_lahze795,x3_next_chosen_lahze795,x4_next_chosen_lahze795,js7941001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7951001');
[cost_7931001,u_star794,x1_next_chosen_lahze794, x2_next_chosen_lahze794,x3_next_chosen_lahze794,x4_next_chosen_lahze794,js7931001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7941001');
[cost_7921001,u_star793,x1_next_chosen_lahze793, x2_next_chosen_lahze793,x3_next_chosen_lahze793,x4_next_chosen_lahze793,js7921001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7931001');
[cost_7911001,u_star792,x1_next_chosen_lahze792, x2_next_chosen_lahze792,x3_next_chosen_lahze792,x4_next_chosen_lahze792,js7911001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7921001');
[cost_7901001,u_star791,x1_next_chosen_lahze791, x2_next_chosen_lahze791,x3_next_chosen_lahze791,x4_next_chosen_lahze791,js7901001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7911001');
[cost_7891001,u_star790,x1_next_chosen_lahze790, x2_next_chosen_lahze790,x3_next_chosen_lahze790,x4_next_chosen_lahze790,js7891001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7901001');
[cost_7881001,u_star789,x1_next_chosen_lahze789, x2_next_chosen_lahze789,x3_next_chosen_lahze789,x4_next_chosen_lahze789,js7881001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7891001');
[cost_7871001,u_star788,x1_next_chosen_lahze788, x2_next_chosen_lahze788,x3_next_chosen_lahze788,x4_next_chosen_lahze788,js7871001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7881001');
[cost_7861001,u_star787,x1_next_chosen_lahze787, x2_next_chosen_lahze787,x3_next_chosen_lahze787,x4_next_chosen_lahze787,js7861001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7871001');
[cost_7851001,u_star786,x1_next_chosen_lahze786, x2_next_chosen_lahze786,x3_next_chosen_lahze786,x4_next_chosen_lahze786,js7851001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7861001');
[cost_7841001,u_star785,x1_next_chosen_lahze785, x2_next_chosen_lahze785,x3_next_chosen_lahze785,x4_next_chosen_lahze785,js7841001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7851001');
[cost_7831001,u_star784,x1_next_chosen_lahze784, x2_next_chosen_lahze784,x3_next_chosen_lahze784,x4_next_chosen_lahze784,js7831001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7841001');
[cost_7821001,u_star783,x1_next_chosen_lahze783, x2_next_chosen_lahze783,x3_next_chosen_lahze783,x4_next_chosen_lahze783,js7821001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7831001');
[cost_7811001,u_star782,x1_next_chosen_lahze782, x2_next_chosen_lahze782,x3_next_chosen_lahze782,x4_next_chosen_lahze782,js7811001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7821001');
[cost_7801001,u_star781,x1_next_chosen_lahze781, x2_next_chosen_lahze781,x3_next_chosen_lahze781,x4_next_chosen_lahze781,js7801001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7811001');
[cost_7791001,u_star780,x1_next_chosen_lahze780, x2_next_chosen_lahze780,x3_next_chosen_lahze780,x4_next_chosen_lahze780,js7791001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7801001');
[cost_7781001,u_star779,x1_next_chosen_lahze779, x2_next_chosen_lahze779,x3_next_chosen_lahze779,x4_next_chosen_lahze779,js7781001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7791001');
[cost_7771001,u_star778,x1_next_chosen_lahze778, x2_next_chosen_lahze778,x3_next_chosen_lahze778,x4_next_chosen_lahze778,js7771001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7781001');
[cost_7761001,u_star777,x1_next_chosen_lahze777, x2_next_chosen_lahze777,x3_next_chosen_lahze777,x4_next_chosen_lahze777,js7761001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7771001');
[cost_7751001,u_star776,x1_next_chosen_lahze776, x2_next_chosen_lahze776,x3_next_chosen_lahze776,x4_next_chosen_lahze776,js7751001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7761001');
[cost_7741001,u_star775,x1_next_chosen_lahze775, x2_next_chosen_lahze775,x3_next_chosen_lahze775,x4_next_chosen_lahze775,js7741001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7751001');
[cost_7731001,u_star774,x1_next_chosen_lahze774, x2_next_chosen_lahze774,x3_next_chosen_lahze774,x4_next_chosen_lahze774,js7731001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7741001');
[cost_7721001,u_star773,x1_next_chosen_lahze773, x2_next_chosen_lahze773,x3_next_chosen_lahze773,x4_next_chosen_lahze773,js7721001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7731001');
[cost_7711001,u_star772,x1_next_chosen_lahze772, x2_next_chosen_lahze772,x3_next_chosen_lahze772,x4_next_chosen_lahze772,js7711001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7721001');
[cost_7701001,u_star771,x1_next_chosen_lahze771, x2_next_chosen_lahze771,x3_next_chosen_lahze771,x4_next_chosen_lahze771,js7701001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7711001');
[cost_7691001,u_star770,x1_next_chosen_lahze770, x2_next_chosen_lahze770,x3_next_chosen_lahze770,x4_next_chosen_lahze770,js7691001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7701001');
[cost_7681001,u_star769,x1_next_chosen_lahze769, x2_next_chosen_lahze769,x3_next_chosen_lahze769,x4_next_chosen_lahze769,js7681001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7691001');
[cost_7671001,u_star768,x1_next_chosen_lahze768, x2_next_chosen_lahze768,x3_next_chosen_lahze768,x4_next_chosen_lahze768,js7671001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7681001');
[cost_7661001,u_star767,x1_next_chosen_lahze767, x2_next_chosen_lahze767,x3_next_chosen_lahze767,x4_next_chosen_lahze767,js7661001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7671001');
[cost_7651001,u_star766,x1_next_chosen_lahze766, x2_next_chosen_lahze766,x3_next_chosen_lahze766,x4_next_chosen_lahze766,js7651001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7661001');
[cost_7641001,u_star765,x1_next_chosen_lahze765, x2_next_chosen_lahze765,x3_next_chosen_lahze765,x4_next_chosen_lahze765,js7641001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7651001');
[cost_7631001,u_star764,x1_next_chosen_lahze764, x2_next_chosen_lahze764,x3_next_chosen_lahze764,x4_next_chosen_lahze764,js7631001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7641001');
[cost_7621001,u_star763,x1_next_chosen_lahze763, x2_next_chosen_lahze763,x3_next_chosen_lahze763,x4_next_chosen_lahze763,js7621001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7631001');
[cost_7611001,u_star762,x1_next_chosen_lahze762, x2_next_chosen_lahze762,x3_next_chosen_lahze762,x4_next_chosen_lahze762,js7611001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7621001');
[cost_7601001,u_star761,x1_next_chosen_lahze761, x2_next_chosen_lahze761,x3_next_chosen_lahze761,x4_next_chosen_lahze761,js7601001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7611001');
[cost_7591001,u_star760,x1_next_chosen_lahze760, x2_next_chosen_lahze760,x3_next_chosen_lahze760,x4_next_chosen_lahze760,js7591001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7601001');
[cost_7581001,u_star759,x1_next_chosen_lahze759, x2_next_chosen_lahze759,x3_next_chosen_lahze759,x4_next_chosen_lahze759,js7581001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7591001');
[cost_7571001,u_star758,x1_next_chosen_lahze758, x2_next_chosen_lahze758,x3_next_chosen_lahze758,x4_next_chosen_lahze758,js7571001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7581001');
[cost_7561001,u_star757,x1_next_chosen_lahze757, x2_next_chosen_lahze757,x3_next_chosen_lahze757,x4_next_chosen_lahze757,js7561001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7571001');
[cost_7551001,u_star756,x1_next_chosen_lahze756, x2_next_chosen_lahze756,x3_next_chosen_lahze756,x4_next_chosen_lahze756,js7551001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7561001');
[cost_7541001,u_star755,x1_next_chosen_lahze755, x2_next_chosen_lahze755,x3_next_chosen_lahze755,x4_next_chosen_lahze755,js7541001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7551001');
[cost_7531001,u_star754,x1_next_chosen_lahze754, x2_next_chosen_lahze754,x3_next_chosen_lahze754,x4_next_chosen_lahze754,js7531001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7541001');
[cost_7521001,u_star753,x1_next_chosen_lahze753, x2_next_chosen_lahze753,x3_next_chosen_lahze753,x4_next_chosen_lahze753,js7521001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7531001');
[cost_7511001,u_star752,x1_next_chosen_lahze752, x2_next_chosen_lahze752,x3_next_chosen_lahze752,x4_next_chosen_lahze752,js7511001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7521001');
[cost_7501001,u_star751,x1_next_chosen_lahze751, x2_next_chosen_lahze751,x3_next_chosen_lahze751,x4_next_chosen_lahze751,js7501001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7511001');
[cost_7491001,u_star750,x1_next_chosen_lahze750, x2_next_chosen_lahze750,x3_next_chosen_lahze750,x4_next_chosen_lahze750,js7491001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7501001');
[cost_7481001,u_star749,x1_next_chosen_lahze749, x2_next_chosen_lahze749,x3_next_chosen_lahze749,x4_next_chosen_lahze749,js7481001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7491001');
[cost_7471001,u_star748,x1_next_chosen_lahze748, x2_next_chosen_lahze748,x3_next_chosen_lahze748,x4_next_chosen_lahze748,js7471001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7481001');
[cost_7461001,u_star747,x1_next_chosen_lahze747, x2_next_chosen_lahze747,x3_next_chosen_lahze747,x4_next_chosen_lahze747,js7461001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7471001');
[cost_7451001,u_star746,x1_next_chosen_lahze746, x2_next_chosen_lahze746,x3_next_chosen_lahze746,x4_next_chosen_lahze746,js7451001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7461001');
[cost_7441001,u_star745,x1_next_chosen_lahze745, x2_next_chosen_lahze745,x3_next_chosen_lahze745,x4_next_chosen_lahze745,js7441001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7451001');
[cost_7431001,u_star744,x1_next_chosen_lahze744, x2_next_chosen_lahze744,x3_next_chosen_lahze744,x4_next_chosen_lahze744,js7431001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7441001');
[cost_7421001,u_star743,x1_next_chosen_lahze743, x2_next_chosen_lahze743,x3_next_chosen_lahze743,x4_next_chosen_lahze743,js7421001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7431001');
[cost_7411001,u_star742,x1_next_chosen_lahze742, x2_next_chosen_lahze742,x3_next_chosen_lahze742,x4_next_chosen_lahze742,js7411001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7421001');
[cost_7401001,u_star741,x1_next_chosen_lahze741, x2_next_chosen_lahze741,x3_next_chosen_lahze741,x4_next_chosen_lahze741,js7401001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7411001');
[cost_7391001,u_star740,x1_next_chosen_lahze740, x2_next_chosen_lahze740,x3_next_chosen_lahze740,x4_next_chosen_lahze740,js7391001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7401001');
[cost_7381001,u_star739,x1_next_chosen_lahze739, x2_next_chosen_lahze739,x3_next_chosen_lahze739,x4_next_chosen_lahze739,js7381001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7391001');
[cost_7371001,u_star738,x1_next_chosen_lahze738, x2_next_chosen_lahze738,x3_next_chosen_lahze738,x4_next_chosen_lahze738,js7371001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7381001');
[cost_7361001,u_star737,x1_next_chosen_lahze737, x2_next_chosen_lahze737,x3_next_chosen_lahze737,x4_next_chosen_lahze737,js7361001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7371001');
[cost_7351001,u_star736,x1_next_chosen_lahze736, x2_next_chosen_lahze736,x3_next_chosen_lahze736,x4_next_chosen_lahze736,js7351001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7361001');
[cost_7341001,u_star735,x1_next_chosen_lahze735, x2_next_chosen_lahze735,x3_next_chosen_lahze735,x4_next_chosen_lahze735,js7341001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7351001');
[cost_7331001,u_star734,x1_next_chosen_lahze734, x2_next_chosen_lahze734,x3_next_chosen_lahze734,x4_next_chosen_lahze734,js7331001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7341001');
[cost_7321001,u_star733,x1_next_chosen_lahze733, x2_next_chosen_lahze733,x3_next_chosen_lahze733,x4_next_chosen_lahze733,js7321001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7331001');
[cost_7311001,u_star732,x1_next_chosen_lahze732, x2_next_chosen_lahze732,x3_next_chosen_lahze732,x4_next_chosen_lahze732,js7311001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7321001');
[cost_7301001,u_star731,x1_next_chosen_lahze731, x2_next_chosen_lahze731,x3_next_chosen_lahze731,x4_next_chosen_lahze731,js7301001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7311001');
[cost_7291001,u_star730,x1_next_chosen_lahze730, x2_next_chosen_lahze730,x3_next_chosen_lahze730,x4_next_chosen_lahze730,js7291001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7301001');
[cost_7281001,u_star729,x1_next_chosen_lahze729, x2_next_chosen_lahze729,x3_next_chosen_lahze729,x4_next_chosen_lahze729,js7281001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7291001');
[cost_7271001,u_star728,x1_next_chosen_lahze728, x2_next_chosen_lahze728,x3_next_chosen_lahze728,x4_next_chosen_lahze728,js7271001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7281001');
[cost_7261001,u_star727,x1_next_chosen_lahze727, x2_next_chosen_lahze727,x3_next_chosen_lahze727,x4_next_chosen_lahze727,js7261001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7271001');
[cost_7251001,u_star726,x1_next_chosen_lahze726, x2_next_chosen_lahze726,x3_next_chosen_lahze726,x4_next_chosen_lahze726,js7251001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7261001');
[cost_7241001,u_star725,x1_next_chosen_lahze725, x2_next_chosen_lahze725,x3_next_chosen_lahze725,x4_next_chosen_lahze725,js7241001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7251001');
[cost_7231001,u_star724,x1_next_chosen_lahze724, x2_next_chosen_lahze724,x3_next_chosen_lahze724,x4_next_chosen_lahze724,js7231001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7241001');
[cost_7221001,u_star723,x1_next_chosen_lahze723, x2_next_chosen_lahze723,x3_next_chosen_lahze723,x4_next_chosen_lahze723,js7221001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7231001');
[cost_7211001,u_star722,x1_next_chosen_lahze722, x2_next_chosen_lahze722,x3_next_chosen_lahze722,x4_next_chosen_lahze722,js7211001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7221001');
[cost_7201001,u_star721,x1_next_chosen_lahze721, x2_next_chosen_lahze721,x3_next_chosen_lahze721,x4_next_chosen_lahze721,js7201001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7211001');
[cost_7191001,u_star720,x1_next_chosen_lahze720, x2_next_chosen_lahze720,x3_next_chosen_lahze720,x4_next_chosen_lahze720,js7191001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7201001');
[cost_7181001,u_star719,x1_next_chosen_lahze719, x2_next_chosen_lahze719,x3_next_chosen_lahze719,x4_next_chosen_lahze719,js7181001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7191001');
[cost_7171001,u_star718,x1_next_chosen_lahze718, x2_next_chosen_lahze718,x3_next_chosen_lahze718,x4_next_chosen_lahze718,js7171001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7181001');
[cost_7161001,u_star717,x1_next_chosen_lahze717, x2_next_chosen_lahze717,x3_next_chosen_lahze717,x4_next_chosen_lahze717,js7161001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7171001');
[cost_7151001,u_star716,x1_next_chosen_lahze716, x2_next_chosen_lahze716,x3_next_chosen_lahze716,x4_next_chosen_lahze716,js7151001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7161001');
[cost_7141001,u_star715,x1_next_chosen_lahze715, x2_next_chosen_lahze715,x3_next_chosen_lahze715,x4_next_chosen_lahze715,js7141001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7151001');
[cost_7131001,u_star714,x1_next_chosen_lahze714, x2_next_chosen_lahze714,x3_next_chosen_lahze714,x4_next_chosen_lahze714,js7131001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7141001');
[cost_7121001,u_star713,x1_next_chosen_lahze713, x2_next_chosen_lahze713,x3_next_chosen_lahze713,x4_next_chosen_lahze713,js7121001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7131001');
[cost_7111001,u_star712,x1_next_chosen_lahze712, x2_next_chosen_lahze712,x3_next_chosen_lahze712,x4_next_chosen_lahze712,js7111001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7121001');
[cost_7101001,u_star711,x1_next_chosen_lahze711, x2_next_chosen_lahze711,x3_next_chosen_lahze711,x4_next_chosen_lahze711,js7101001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7111001');
[cost_7091001,u_star710,x1_next_chosen_lahze710, x2_next_chosen_lahze710,x3_next_chosen_lahze710,x4_next_chosen_lahze710,js7091001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7101001');
[cost_7081001,u_star709,x1_next_chosen_lahze709, x2_next_chosen_lahze709,x3_next_chosen_lahze709,x4_next_chosen_lahze709,js7081001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7091001');
[cost_7071001,u_star708,x1_next_chosen_lahze708, x2_next_chosen_lahze708,x3_next_chosen_lahze708,x4_next_chosen_lahze708,js7071001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7081001');
[cost_7061001,u_star707,x1_next_chosen_lahze707, x2_next_chosen_lahze707,x3_next_chosen_lahze707,x4_next_chosen_lahze707,js7061001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7071001');
[cost_7051001,u_star706,x1_next_chosen_lahze706, x2_next_chosen_lahze706,x3_next_chosen_lahze706,x4_next_chosen_lahze706,js7051001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7061001');
[cost_7041001,u_star705,x1_next_chosen_lahze705, x2_next_chosen_lahze705,x3_next_chosen_lahze705,x4_next_chosen_lahze705,js7041001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7051001');
[cost_7031001,u_star704,x1_next_chosen_lahze704, x2_next_chosen_lahze704,x3_next_chosen_lahze704,x4_next_chosen_lahze704,js7031001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7041001');
[cost_7021001,u_star703,x1_next_chosen_lahze703, x2_next_chosen_lahze703,x3_next_chosen_lahze703,x4_next_chosen_lahze703,js7021001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7031001');
[cost_7011001,u_star702,x1_next_chosen_lahze702, x2_next_chosen_lahze702,x3_next_chosen_lahze702,x4_next_chosen_lahze702,js7011001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7021001');
[cost_7001001,u_star701,x1_next_chosen_lahze701, x2_next_chosen_lahze701,x3_next_chosen_lahze701,x4_next_chosen_lahze701,js7001001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7011001');
[cost_6991001,u_star700,x1_next_chosen_lahze700, x2_next_chosen_lahze700,x3_next_chosen_lahze700,x4_next_chosen_lahze700,js6991001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js7001001');
[cost_6981001,u_star699,x1_next_chosen_lahze699, x2_next_chosen_lahze699,x3_next_chosen_lahze699,x4_next_chosen_lahze699,js6981001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6991001');
[cost_6971001,u_star698,x1_next_chosen_lahze698, x2_next_chosen_lahze698,x3_next_chosen_lahze698,x4_next_chosen_lahze698,js6971001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6981001');
[cost_6961001,u_star697,x1_next_chosen_lahze697, x2_next_chosen_lahze697,x3_next_chosen_lahze697,x4_next_chosen_lahze697,js6961001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6971001');
[cost_6951001,u_star696,x1_next_chosen_lahze696, x2_next_chosen_lahze696,x3_next_chosen_lahze696,x4_next_chosen_lahze696,js6951001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6961001');
[cost_6941001,u_star695,x1_next_chosen_lahze695, x2_next_chosen_lahze695,x3_next_chosen_lahze695,x4_next_chosen_lahze695,js6941001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6951001');
[cost_6931001,u_star694,x1_next_chosen_lahze694, x2_next_chosen_lahze694,x3_next_chosen_lahze694,x4_next_chosen_lahze694,js6931001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6941001');
[cost_6921001,u_star693,x1_next_chosen_lahze693, x2_next_chosen_lahze693,x3_next_chosen_lahze693,x4_next_chosen_lahze693,js6921001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6931001');
[cost_6911001,u_star692,x1_next_chosen_lahze692, x2_next_chosen_lahze692,x3_next_chosen_lahze692,x4_next_chosen_lahze692,js6911001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6921001');
[cost_6901001,u_star691,x1_next_chosen_lahze691, x2_next_chosen_lahze691,x3_next_chosen_lahze691,x4_next_chosen_lahze691,js6901001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6911001');
[cost_6891001,u_star690,x1_next_chosen_lahze690, x2_next_chosen_lahze690,x3_next_chosen_lahze690,x4_next_chosen_lahze690,js6891001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6901001');
[cost_6881001,u_star689,x1_next_chosen_lahze689, x2_next_chosen_lahze689,x3_next_chosen_lahze689,x4_next_chosen_lahze689,js6881001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6891001');
[cost_6871001,u_star688,x1_next_chosen_lahze688, x2_next_chosen_lahze688,x3_next_chosen_lahze688,x4_next_chosen_lahze688,js6871001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6881001');
[cost_6861001,u_star687,x1_next_chosen_lahze687, x2_next_chosen_lahze687,x3_next_chosen_lahze687,x4_next_chosen_lahze687,js6861001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6871001');
[cost_6851001,u_star686,x1_next_chosen_lahze686, x2_next_chosen_lahze686,x3_next_chosen_lahze686,x4_next_chosen_lahze686,js6851001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6861001');
[cost_6841001,u_star685,x1_next_chosen_lahze685, x2_next_chosen_lahze685,x3_next_chosen_lahze685,x4_next_chosen_lahze685,js6841001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6851001');
[cost_6831001,u_star684,x1_next_chosen_lahze684, x2_next_chosen_lahze684,x3_next_chosen_lahze684,x4_next_chosen_lahze684,js6831001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6841001');
[cost_6821001,u_star683,x1_next_chosen_lahze683, x2_next_chosen_lahze683,x3_next_chosen_lahze683,x4_next_chosen_lahze683,js6821001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6831001');
[cost_6811001,u_star682,x1_next_chosen_lahze682, x2_next_chosen_lahze682,x3_next_chosen_lahze682,x4_next_chosen_lahze682,js6811001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6821001');
[cost_6801001,u_star681,x1_next_chosen_lahze681, x2_next_chosen_lahze681,x3_next_chosen_lahze681,x4_next_chosen_lahze681,js6801001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6811001');
[cost_6791001,u_star680,x1_next_chosen_lahze680, x2_next_chosen_lahze680,x3_next_chosen_lahze680,x4_next_chosen_lahze680,js6791001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6801001');
[cost_6781001,u_star679,x1_next_chosen_lahze679, x2_next_chosen_lahze679,x3_next_chosen_lahze679,x4_next_chosen_lahze679,js6781001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6791001');
[cost_6771001,u_star678,x1_next_chosen_lahze678, x2_next_chosen_lahze678,x3_next_chosen_lahze678,x4_next_chosen_lahze678,js6771001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6781001');
[cost_6761001,u_star677,x1_next_chosen_lahze677, x2_next_chosen_lahze677,x3_next_chosen_lahze677,x4_next_chosen_lahze677,js6761001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6771001');
[cost_6751001,u_star676,x1_next_chosen_lahze676, x2_next_chosen_lahze676,x3_next_chosen_lahze676,x4_next_chosen_lahze676,js6751001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6761001');
[cost_6741001,u_star675,x1_next_chosen_lahze675, x2_next_chosen_lahze675,x3_next_chosen_lahze675,x4_next_chosen_lahze675,js6741001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6751001');
[cost_6731001,u_star674,x1_next_chosen_lahze674, x2_next_chosen_lahze674,x3_next_chosen_lahze674,x4_next_chosen_lahze674,js6731001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6741001');
[cost_6721001,u_star673,x1_next_chosen_lahze673, x2_next_chosen_lahze673,x3_next_chosen_lahze673,x4_next_chosen_lahze673,js6721001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6731001');
[cost_6711001,u_star672,x1_next_chosen_lahze672, x2_next_chosen_lahze672,x3_next_chosen_lahze672,x4_next_chosen_lahze672,js6711001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6721001');
[cost_6701001,u_star671,x1_next_chosen_lahze671, x2_next_chosen_lahze671,x3_next_chosen_lahze671,x4_next_chosen_lahze671,js6701001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6711001');
[cost_6691001,u_star670,x1_next_chosen_lahze670, x2_next_chosen_lahze670,x3_next_chosen_lahze670,x4_next_chosen_lahze670,js6691001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6701001');
[cost_6681001,u_star669,x1_next_chosen_lahze669, x2_next_chosen_lahze669,x3_next_chosen_lahze669,x4_next_chosen_lahze669,js6681001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6691001');
[cost_6671001,u_star668,x1_next_chosen_lahze668, x2_next_chosen_lahze668,x3_next_chosen_lahze668,x4_next_chosen_lahze668,js6671001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6681001');
[cost_6661001,u_star667,x1_next_chosen_lahze667, x2_next_chosen_lahze667,x3_next_chosen_lahze667,x4_next_chosen_lahze667,js6661001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6671001');
[cost_6651001,u_star666,x1_next_chosen_lahze666, x2_next_chosen_lahze666,x3_next_chosen_lahze666,x4_next_chosen_lahze666,js6651001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6661001');
[cost_6641001,u_star665,x1_next_chosen_lahze665, x2_next_chosen_lahze665,x3_next_chosen_lahze665,x4_next_chosen_lahze665,js6641001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6651001');
[cost_6631001,u_star664,x1_next_chosen_lahze664, x2_next_chosen_lahze664,x3_next_chosen_lahze664,x4_next_chosen_lahze664,js6631001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6641001');
[cost_6621001,u_star663,x1_next_chosen_lahze663, x2_next_chosen_lahze663,x3_next_chosen_lahze663,x4_next_chosen_lahze663,js6621001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6631001');
[cost_6611001,u_star662,x1_next_chosen_lahze662, x2_next_chosen_lahze662,x3_next_chosen_lahze662,x4_next_chosen_lahze662,js6611001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6621001');
[cost_6601001,u_star661,x1_next_chosen_lahze661, x2_next_chosen_lahze661,x3_next_chosen_lahze661,x4_next_chosen_lahze661,js6601001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6611001');
[cost_6591001,u_star660,x1_next_chosen_lahze660, x2_next_chosen_lahze660,x3_next_chosen_lahze660,x4_next_chosen_lahze660,js6591001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6601001');
[cost_6581001,u_star659,x1_next_chosen_lahze659, x2_next_chosen_lahze659,x3_next_chosen_lahze659,x4_next_chosen_lahze659,js6581001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6591001');
[cost_6571001,u_star658,x1_next_chosen_lahze658, x2_next_chosen_lahze658,x3_next_chosen_lahze658,x4_next_chosen_lahze658,js6571001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6581001');
[cost_6561001,u_star657,x1_next_chosen_lahze657, x2_next_chosen_lahze657,x3_next_chosen_lahze657,x4_next_chosen_lahze657,js6561001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6571001');
[cost_6551001,u_star656,x1_next_chosen_lahze656, x2_next_chosen_lahze656,x3_next_chosen_lahze656,x4_next_chosen_lahze656,js6551001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6561001');
[cost_6541001,u_star655,x1_next_chosen_lahze655, x2_next_chosen_lahze655,x3_next_chosen_lahze655,x4_next_chosen_lahze655,js6541001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6551001');
[cost_6531001,u_star654,x1_next_chosen_lahze654, x2_next_chosen_lahze654,x3_next_chosen_lahze654,x4_next_chosen_lahze654,js6531001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6541001');
[cost_6521001,u_star653,x1_next_chosen_lahze653, x2_next_chosen_lahze653,x3_next_chosen_lahze653,x4_next_chosen_lahze653,js6521001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6531001');
[cost_6511001,u_star652,x1_next_chosen_lahze652, x2_next_chosen_lahze652,x3_next_chosen_lahze652,x4_next_chosen_lahze652,js6511001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6521001');
[cost_6501001,u_star651,x1_next_chosen_lahze651, x2_next_chosen_lahze651,x3_next_chosen_lahze651,x4_next_chosen_lahze651,js6501001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6511001');
[cost_6491001,u_star650,x1_next_chosen_lahze650, x2_next_chosen_lahze650,x3_next_chosen_lahze650,x4_next_chosen_lahze650,js6491001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6501001');
[cost_6481001,u_star649,x1_next_chosen_lahze649, x2_next_chosen_lahze649,x3_next_chosen_lahze649,x4_next_chosen_lahze649,js6481001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6491001');
[cost_6471001,u_star648,x1_next_chosen_lahze648, x2_next_chosen_lahze648,x3_next_chosen_lahze648,x4_next_chosen_lahze648,js6471001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6481001');
[cost_6461001,u_star647,x1_next_chosen_lahze647, x2_next_chosen_lahze647,x3_next_chosen_lahze647,x4_next_chosen_lahze647,js6461001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6471001');
[cost_6451001,u_star646,x1_next_chosen_lahze646, x2_next_chosen_lahze646,x3_next_chosen_lahze646,x4_next_chosen_lahze646,js6451001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6461001');
[cost_6441001,u_star645,x1_next_chosen_lahze645, x2_next_chosen_lahze645,x3_next_chosen_lahze645,x4_next_chosen_lahze645,js6441001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6451001');
[cost_6431001,u_star644,x1_next_chosen_lahze644, x2_next_chosen_lahze644,x3_next_chosen_lahze644,x4_next_chosen_lahze644,js6431001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6441001');
[cost_6421001,u_star643,x1_next_chosen_lahze643, x2_next_chosen_lahze643,x3_next_chosen_lahze643,x4_next_chosen_lahze643,js6421001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6431001');
[cost_6411001,u_star642,x1_next_chosen_lahze642, x2_next_chosen_lahze642,x3_next_chosen_lahze642,x4_next_chosen_lahze642,js6411001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6421001');
[cost_6401001,u_star641,x1_next_chosen_lahze641, x2_next_chosen_lahze641,x3_next_chosen_lahze641,x4_next_chosen_lahze641,js6401001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6411001');
[cost_6391001,u_star640,x1_next_chosen_lahze640, x2_next_chosen_lahze640,x3_next_chosen_lahze640,x4_next_chosen_lahze640,js6391001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6401001');
[cost_6381001,u_star639,x1_next_chosen_lahze639, x2_next_chosen_lahze639,x3_next_chosen_lahze639,x4_next_chosen_lahze639,js6381001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6391001');
[cost_6371001,u_star638,x1_next_chosen_lahze638, x2_next_chosen_lahze638,x3_next_chosen_lahze638,x4_next_chosen_lahze638,js6371001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6381001');
[cost_6361001,u_star637,x1_next_chosen_lahze637, x2_next_chosen_lahze637,x3_next_chosen_lahze637,x4_next_chosen_lahze637,js6361001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6371001');
[cost_6351001,u_star636,x1_next_chosen_lahze636, x2_next_chosen_lahze636,x3_next_chosen_lahze636,x4_next_chosen_lahze636,js6351001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6361001');
[cost_6341001,u_star635,x1_next_chosen_lahze635, x2_next_chosen_lahze635,x3_next_chosen_lahze635,x4_next_chosen_lahze635,js6341001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6351001');
[cost_6331001,u_star634,x1_next_chosen_lahze634, x2_next_chosen_lahze634,x3_next_chosen_lahze634,x4_next_chosen_lahze634,js6331001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6341001');
[cost_6321001,u_star633,x1_next_chosen_lahze633, x2_next_chosen_lahze633,x3_next_chosen_lahze633,x4_next_chosen_lahze633,js6321001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6331001');
[cost_6311001,u_star632,x1_next_chosen_lahze632, x2_next_chosen_lahze632,x3_next_chosen_lahze632,x4_next_chosen_lahze632,js6311001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6321001');
[cost_6301001,u_star631,x1_next_chosen_lahze631, x2_next_chosen_lahze631,x3_next_chosen_lahze631,x4_next_chosen_lahze631,js6301001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6311001');
[cost_6291001,u_star630,x1_next_chosen_lahze630, x2_next_chosen_lahze630,x3_next_chosen_lahze630,x4_next_chosen_lahze630,js6291001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6301001');
[cost_6281001,u_star629,x1_next_chosen_lahze629, x2_next_chosen_lahze629,x3_next_chosen_lahze629,x4_next_chosen_lahze629,js6281001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6291001');
[cost_6271001,u_star628,x1_next_chosen_lahze628, x2_next_chosen_lahze628,x3_next_chosen_lahze628,x4_next_chosen_lahze628,js6271001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6281001');
[cost_6261001,u_star627,x1_next_chosen_lahze627, x2_next_chosen_lahze627,x3_next_chosen_lahze627,x4_next_chosen_lahze627,js6261001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6271001');
[cost_6251001,u_star626,x1_next_chosen_lahze626, x2_next_chosen_lahze626,x3_next_chosen_lahze626,x4_next_chosen_lahze626,js6251001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6261001');
[cost_6241001,u_star625,x1_next_chosen_lahze625, x2_next_chosen_lahze625,x3_next_chosen_lahze625,x4_next_chosen_lahze625,js6241001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6251001');
[cost_6231001,u_star624,x1_next_chosen_lahze624, x2_next_chosen_lahze624,x3_next_chosen_lahze624,x4_next_chosen_lahze624,js6231001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6241001');
[cost_6221001,u_star623,x1_next_chosen_lahze623, x2_next_chosen_lahze623,x3_next_chosen_lahze623,x4_next_chosen_lahze623,js6221001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6231001');
[cost_6211001,u_star622,x1_next_chosen_lahze622, x2_next_chosen_lahze622,x3_next_chosen_lahze622,x4_next_chosen_lahze622,js6211001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6221001');
[cost_6201001,u_star621,x1_next_chosen_lahze621, x2_next_chosen_lahze621,x3_next_chosen_lahze621,x4_next_chosen_lahze621,js6201001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6211001');
[cost_6191001,u_star620,x1_next_chosen_lahze620, x2_next_chosen_lahze620,x3_next_chosen_lahze620,x4_next_chosen_lahze620,js6191001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6201001');
[cost_6181001,u_star619,x1_next_chosen_lahze619, x2_next_chosen_lahze619,x3_next_chosen_lahze619,x4_next_chosen_lahze619,js6181001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6191001');
[cost_6171001,u_star618,x1_next_chosen_lahze618, x2_next_chosen_lahze618,x3_next_chosen_lahze618,x4_next_chosen_lahze618,js6171001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6181001');
[cost_6161001,u_star617,x1_next_chosen_lahze617, x2_next_chosen_lahze617,x3_next_chosen_lahze617,x4_next_chosen_lahze617,js6161001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6171001');
[cost_6151001,u_star616,x1_next_chosen_lahze616, x2_next_chosen_lahze616,x3_next_chosen_lahze616,x4_next_chosen_lahze616,js6151001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6161001');
[cost_6141001,u_star615,x1_next_chosen_lahze615, x2_next_chosen_lahze615,x3_next_chosen_lahze615,x4_next_chosen_lahze615,js6141001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6151001');
[cost_6131001,u_star614,x1_next_chosen_lahze614, x2_next_chosen_lahze614,x3_next_chosen_lahze614,x4_next_chosen_lahze614,js6131001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6141001');
[cost_6121001,u_star613,x1_next_chosen_lahze613, x2_next_chosen_lahze613,x3_next_chosen_lahze613,x4_next_chosen_lahze613,js6121001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6131001');
[cost_6111001,u_star612,x1_next_chosen_lahze612, x2_next_chosen_lahze612,x3_next_chosen_lahze612,x4_next_chosen_lahze612,js6111001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6121001');
[cost_6101001,u_star611,x1_next_chosen_lahze611, x2_next_chosen_lahze611,x3_next_chosen_lahze611,x4_next_chosen_lahze611,js6101001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6111001');
[cost_6091001,u_star610,x1_next_chosen_lahze610, x2_next_chosen_lahze610,x3_next_chosen_lahze610,x4_next_chosen_lahze610,js6091001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6101001');
[cost_6081001,u_star609,x1_next_chosen_lahze609, x2_next_chosen_lahze609,x3_next_chosen_lahze609,x4_next_chosen_lahze609,js6081001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6091001');
[cost_6071001,u_star608,x1_next_chosen_lahze608, x2_next_chosen_lahze608,x3_next_chosen_lahze608,x4_next_chosen_lahze608,js6071001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6081001');
[cost_6061001,u_star607,x1_next_chosen_lahze607, x2_next_chosen_lahze607,x3_next_chosen_lahze607,x4_next_chosen_lahze607,js6061001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6071001');
[cost_6051001,u_star606,x1_next_chosen_lahze606, x2_next_chosen_lahze606,x3_next_chosen_lahze606,x4_next_chosen_lahze606,js6051001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6061001');
[cost_6041001,u_star605,x1_next_chosen_lahze605, x2_next_chosen_lahze605,x3_next_chosen_lahze605,x4_next_chosen_lahze605,js6041001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6051001');
[cost_6031001,u_star604,x1_next_chosen_lahze604, x2_next_chosen_lahze604,x3_next_chosen_lahze604,x4_next_chosen_lahze604,js6031001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6041001');
[cost_6021001,u_star603,x1_next_chosen_lahze603, x2_next_chosen_lahze603,x3_next_chosen_lahze603,x4_next_chosen_lahze603,js6021001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6031001');
[cost_6011001,u_star602,x1_next_chosen_lahze602, x2_next_chosen_lahze602,x3_next_chosen_lahze602,x4_next_chosen_lahze602,js6011001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6021001');
[cost_6001001,u_star601,x1_next_chosen_lahze601, x2_next_chosen_lahze601,x3_next_chosen_lahze601,x4_next_chosen_lahze601,js6001001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6011001');
[cost_5991001,u_star600,x1_next_chosen_lahze600, x2_next_chosen_lahze600,x3_next_chosen_lahze600,x4_next_chosen_lahze600,js5991001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js6001001');
[cost_5981001,u_star599,x1_next_chosen_lahze599, x2_next_chosen_lahze599,x3_next_chosen_lahze599,x4_next_chosen_lahze599,js5981001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5991001');
[cost_5971001,u_star598,x1_next_chosen_lahze598, x2_next_chosen_lahze598,x3_next_chosen_lahze598,x4_next_chosen_lahze598,js5971001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5981001');
[cost_5961001,u_star597,x1_next_chosen_lahze597, x2_next_chosen_lahze597,x3_next_chosen_lahze597,x4_next_chosen_lahze597,js5961001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5971001');
[cost_5951001,u_star596,x1_next_chosen_lahze596, x2_next_chosen_lahze596,x3_next_chosen_lahze596,x4_next_chosen_lahze596,js5951001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5961001');
[cost_5941001,u_star595,x1_next_chosen_lahze595, x2_next_chosen_lahze595,x3_next_chosen_lahze595,x4_next_chosen_lahze595,js5941001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5951001');
[cost_5931001,u_star594,x1_next_chosen_lahze594, x2_next_chosen_lahze594,x3_next_chosen_lahze594,x4_next_chosen_lahze594,js5931001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5941001');
[cost_5921001,u_star593,x1_next_chosen_lahze593, x2_next_chosen_lahze593,x3_next_chosen_lahze593,x4_next_chosen_lahze593,js5921001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5931001');
[cost_5911001,u_star592,x1_next_chosen_lahze592, x2_next_chosen_lahze592,x3_next_chosen_lahze592,x4_next_chosen_lahze592,js5911001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5921001');
[cost_5901001,u_star591,x1_next_chosen_lahze591, x2_next_chosen_lahze591,x3_next_chosen_lahze591,x4_next_chosen_lahze591,js5901001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5911001');
[cost_5891001,u_star590,x1_next_chosen_lahze590, x2_next_chosen_lahze590,x3_next_chosen_lahze590,x4_next_chosen_lahze590,js5891001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5901001');
[cost_5881001,u_star589,x1_next_chosen_lahze589, x2_next_chosen_lahze589,x3_next_chosen_lahze589,x4_next_chosen_lahze589,js5881001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5891001');
[cost_5871001,u_star588,x1_next_chosen_lahze588, x2_next_chosen_lahze588,x3_next_chosen_lahze588,x4_next_chosen_lahze588,js5871001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5881001');
[cost_5861001,u_star587,x1_next_chosen_lahze587, x2_next_chosen_lahze587,x3_next_chosen_lahze587,x4_next_chosen_lahze587,js5861001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5871001');
[cost_5851001,u_star586,x1_next_chosen_lahze586, x2_next_chosen_lahze586,x3_next_chosen_lahze586,x4_next_chosen_lahze586,js5851001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5861001');
[cost_5841001,u_star585,x1_next_chosen_lahze585, x2_next_chosen_lahze585,x3_next_chosen_lahze585,x4_next_chosen_lahze585,js5841001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5851001');
[cost_5831001,u_star584,x1_next_chosen_lahze584, x2_next_chosen_lahze584,x3_next_chosen_lahze584,x4_next_chosen_lahze584,js5831001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5841001');
[cost_5821001,u_star583,x1_next_chosen_lahze583, x2_next_chosen_lahze583,x3_next_chosen_lahze583,x4_next_chosen_lahze583,js5821001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5831001');
[cost_5811001,u_star582,x1_next_chosen_lahze582, x2_next_chosen_lahze582,x3_next_chosen_lahze582,x4_next_chosen_lahze582,js5811001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5821001');
[cost_5801001,u_star581,x1_next_chosen_lahze581, x2_next_chosen_lahze581,x3_next_chosen_lahze581,x4_next_chosen_lahze581,js5801001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5811001');
[cost_5791001,u_star580,x1_next_chosen_lahze580, x2_next_chosen_lahze580,x3_next_chosen_lahze580,x4_next_chosen_lahze580,js5791001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5801001');
[cost_5781001,u_star579,x1_next_chosen_lahze579, x2_next_chosen_lahze579,x3_next_chosen_lahze579,x4_next_chosen_lahze579,js5781001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5791001');
[cost_5771001,u_star578,x1_next_chosen_lahze578, x2_next_chosen_lahze578,x3_next_chosen_lahze578,x4_next_chosen_lahze578,js5771001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5781001');
[cost_5761001,u_star577,x1_next_chosen_lahze577, x2_next_chosen_lahze577,x3_next_chosen_lahze577,x4_next_chosen_lahze577,js5761001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5771001');
[cost_5751001,u_star576,x1_next_chosen_lahze576, x2_next_chosen_lahze576,x3_next_chosen_lahze576,x4_next_chosen_lahze576,js5751001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5761001');
[cost_5741001,u_star575,x1_next_chosen_lahze575, x2_next_chosen_lahze575,x3_next_chosen_lahze575,x4_next_chosen_lahze575,js5741001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5751001');
[cost_5731001,u_star574,x1_next_chosen_lahze574, x2_next_chosen_lahze574,x3_next_chosen_lahze574,x4_next_chosen_lahze574,js5731001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5741001');
[cost_5721001,u_star573,x1_next_chosen_lahze573, x2_next_chosen_lahze573,x3_next_chosen_lahze573,x4_next_chosen_lahze573,js5721001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5731001');
[cost_5711001,u_star572,x1_next_chosen_lahze572, x2_next_chosen_lahze572,x3_next_chosen_lahze572,x4_next_chosen_lahze572,js5711001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5721001');
[cost_5701001,u_star571,x1_next_chosen_lahze571, x2_next_chosen_lahze571,x3_next_chosen_lahze571,x4_next_chosen_lahze571,js5701001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5711001');
[cost_5691001,u_star570,x1_next_chosen_lahze570, x2_next_chosen_lahze570,x3_next_chosen_lahze570,x4_next_chosen_lahze570,js5691001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5701001');
[cost_5681001,u_star569,x1_next_chosen_lahze569, x2_next_chosen_lahze569,x3_next_chosen_lahze569,x4_next_chosen_lahze569,js5681001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5691001');
[cost_5671001,u_star568,x1_next_chosen_lahze568, x2_next_chosen_lahze568,x3_next_chosen_lahze568,x4_next_chosen_lahze568,js5671001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5681001');
[cost_5661001,u_star567,x1_next_chosen_lahze567, x2_next_chosen_lahze567,x3_next_chosen_lahze567,x4_next_chosen_lahze567,js5661001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5671001');
[cost_5651001,u_star566,x1_next_chosen_lahze566, x2_next_chosen_lahze566,x3_next_chosen_lahze566,x4_next_chosen_lahze566,js5651001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5661001');
[cost_5641001,u_star565,x1_next_chosen_lahze565, x2_next_chosen_lahze565,x3_next_chosen_lahze565,x4_next_chosen_lahze565,js5641001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5651001');
[cost_5631001,u_star564,x1_next_chosen_lahze564, x2_next_chosen_lahze564,x3_next_chosen_lahze564,x4_next_chosen_lahze564,js5631001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5641001');
[cost_5621001,u_star563,x1_next_chosen_lahze563, x2_next_chosen_lahze563,x3_next_chosen_lahze563,x4_next_chosen_lahze563,js5621001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5631001');
[cost_5611001,u_star562,x1_next_chosen_lahze562, x2_next_chosen_lahze562,x3_next_chosen_lahze562,x4_next_chosen_lahze562,js5611001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5621001');
[cost_5601001,u_star561,x1_next_chosen_lahze561, x2_next_chosen_lahze561,x3_next_chosen_lahze561,x4_next_chosen_lahze561,js5601001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5611001');
[cost_5591001,u_star560,x1_next_chosen_lahze560, x2_next_chosen_lahze560,x3_next_chosen_lahze560,x4_next_chosen_lahze560,js5591001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5601001');
[cost_5581001,u_star559,x1_next_chosen_lahze559, x2_next_chosen_lahze559,x3_next_chosen_lahze559,x4_next_chosen_lahze559,js5581001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5591001');
[cost_5571001,u_star558,x1_next_chosen_lahze558, x2_next_chosen_lahze558,x3_next_chosen_lahze558,x4_next_chosen_lahze558,js5571001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5581001');
[cost_5561001,u_star557,x1_next_chosen_lahze557, x2_next_chosen_lahze557,x3_next_chosen_lahze557,x4_next_chosen_lahze557,js5561001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5571001');
[cost_5551001,u_star556,x1_next_chosen_lahze556, x2_next_chosen_lahze556,x3_next_chosen_lahze556,x4_next_chosen_lahze556,js5551001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5561001');
[cost_5541001,u_star555,x1_next_chosen_lahze555, x2_next_chosen_lahze555,x3_next_chosen_lahze555,x4_next_chosen_lahze555,js5541001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5551001');
[cost_5531001,u_star554,x1_next_chosen_lahze554, x2_next_chosen_lahze554,x3_next_chosen_lahze554,x4_next_chosen_lahze554,js5531001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5541001');
[cost_5521001,u_star553,x1_next_chosen_lahze553, x2_next_chosen_lahze553,x3_next_chosen_lahze553,x4_next_chosen_lahze553,js5521001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5531001');
[cost_5511001,u_star552,x1_next_chosen_lahze552, x2_next_chosen_lahze552,x3_next_chosen_lahze552,x4_next_chosen_lahze552,js5511001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5521001');
[cost_5501001,u_star551,x1_next_chosen_lahze551, x2_next_chosen_lahze551,x3_next_chosen_lahze551,x4_next_chosen_lahze551,js5501001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5511001');
[cost_5491001,u_star550,x1_next_chosen_lahze550, x2_next_chosen_lahze550,x3_next_chosen_lahze550,x4_next_chosen_lahze550,js5491001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5501001');
[cost_5481001,u_star549,x1_next_chosen_lahze549, x2_next_chosen_lahze549,x3_next_chosen_lahze549,x4_next_chosen_lahze549,js5481001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5491001');
[cost_5471001,u_star548,x1_next_chosen_lahze548, x2_next_chosen_lahze548,x3_next_chosen_lahze548,x4_next_chosen_lahze548,js5471001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5481001');
[cost_5461001,u_star547,x1_next_chosen_lahze547, x2_next_chosen_lahze547,x3_next_chosen_lahze547,x4_next_chosen_lahze547,js5461001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5471001');
[cost_5451001,u_star546,x1_next_chosen_lahze546, x2_next_chosen_lahze546,x3_next_chosen_lahze546,x4_next_chosen_lahze546,js5451001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5461001');
[cost_5441001,u_star545,x1_next_chosen_lahze545, x2_next_chosen_lahze545,x3_next_chosen_lahze545,x4_next_chosen_lahze545,js5441001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5451001');
[cost_5431001,u_star544,x1_next_chosen_lahze544, x2_next_chosen_lahze544,x3_next_chosen_lahze544,x4_next_chosen_lahze544,js5431001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5441001');
[cost_5421001,u_star543,x1_next_chosen_lahze543, x2_next_chosen_lahze543,x3_next_chosen_lahze543,x4_next_chosen_lahze543,js5421001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5431001');
[cost_5411001,u_star542,x1_next_chosen_lahze542, x2_next_chosen_lahze542,x3_next_chosen_lahze542,x4_next_chosen_lahze542,js5411001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5421001');
[cost_5401001,u_star541,x1_next_chosen_lahze541, x2_next_chosen_lahze541,x3_next_chosen_lahze541,x4_next_chosen_lahze541,js5401001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5411001');
[cost_5391001,u_star540,x1_next_chosen_lahze540, x2_next_chosen_lahze540,x3_next_chosen_lahze540,x4_next_chosen_lahze540,js5391001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5401001');
[cost_5381001,u_star539,x1_next_chosen_lahze539, x2_next_chosen_lahze539,x3_next_chosen_lahze539,x4_next_chosen_lahze539,js5381001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5391001');
[cost_5371001,u_star538,x1_next_chosen_lahze538, x2_next_chosen_lahze538,x3_next_chosen_lahze538,x4_next_chosen_lahze538,js5371001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5381001');
[cost_5361001,u_star537,x1_next_chosen_lahze537, x2_next_chosen_lahze537,x3_next_chosen_lahze537,x4_next_chosen_lahze537,js5361001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5371001');
[cost_5351001,u_star536,x1_next_chosen_lahze536, x2_next_chosen_lahze536,x3_next_chosen_lahze536,x4_next_chosen_lahze536,js5351001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5361001');
[cost_5341001,u_star535,x1_next_chosen_lahze535, x2_next_chosen_lahze535,x3_next_chosen_lahze535,x4_next_chosen_lahze535,js5341001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5351001');
[cost_5331001,u_star534,x1_next_chosen_lahze534, x2_next_chosen_lahze534,x3_next_chosen_lahze534,x4_next_chosen_lahze534,js5331001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5341001');
[cost_5321001,u_star533,x1_next_chosen_lahze533, x2_next_chosen_lahze533,x3_next_chosen_lahze533,x4_next_chosen_lahze533,js5321001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5331001');
[cost_5311001,u_star532,x1_next_chosen_lahze532, x2_next_chosen_lahze532,x3_next_chosen_lahze532,x4_next_chosen_lahze532,js5311001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5321001');
[cost_5301001,u_star531,x1_next_chosen_lahze531, x2_next_chosen_lahze531,x3_next_chosen_lahze531,x4_next_chosen_lahze531,js5301001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5311001');
[cost_5291001,u_star530,x1_next_chosen_lahze530, x2_next_chosen_lahze530,x3_next_chosen_lahze530,x4_next_chosen_lahze530,js5291001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5301001');
[cost_5281001,u_star529,x1_next_chosen_lahze529, x2_next_chosen_lahze529,x3_next_chosen_lahze529,x4_next_chosen_lahze529,js5281001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5291001');
[cost_5271001,u_star528,x1_next_chosen_lahze528, x2_next_chosen_lahze528,x3_next_chosen_lahze528,x4_next_chosen_lahze528,js5271001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5281001');
[cost_5261001,u_star527,x1_next_chosen_lahze527, x2_next_chosen_lahze527,x3_next_chosen_lahze527,x4_next_chosen_lahze527,js5261001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5271001');
[cost_5251001,u_star526,x1_next_chosen_lahze526, x2_next_chosen_lahze526,x3_next_chosen_lahze526,x4_next_chosen_lahze526,js5251001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5261001');
[cost_5241001,u_star525,x1_next_chosen_lahze525, x2_next_chosen_lahze525,x3_next_chosen_lahze525,x4_next_chosen_lahze525,js5241001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5251001');
[cost_5231001,u_star524,x1_next_chosen_lahze524, x2_next_chosen_lahze524,x3_next_chosen_lahze524,x4_next_chosen_lahze524,js5231001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5241001');
[cost_5221001,u_star523,x1_next_chosen_lahze523, x2_next_chosen_lahze523,x3_next_chosen_lahze523,x4_next_chosen_lahze523,js5221001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5231001');
[cost_5211001,u_star522,x1_next_chosen_lahze522, x2_next_chosen_lahze522,x3_next_chosen_lahze522,x4_next_chosen_lahze522,js5211001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5221001');
[cost_5201001,u_star521,x1_next_chosen_lahze521, x2_next_chosen_lahze521,x3_next_chosen_lahze521,x4_next_chosen_lahze521,js5201001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5211001');
[cost_5191001,u_star520,x1_next_chosen_lahze520, x2_next_chosen_lahze520,x3_next_chosen_lahze520,x4_next_chosen_lahze520,js5191001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5201001');
[cost_5181001,u_star519,x1_next_chosen_lahze519, x2_next_chosen_lahze519,x3_next_chosen_lahze519,x4_next_chosen_lahze519,js5181001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5191001');
[cost_5171001,u_star518,x1_next_chosen_lahze518, x2_next_chosen_lahze518,x3_next_chosen_lahze518,x4_next_chosen_lahze518,js5171001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5181001');
[cost_5161001,u_star517,x1_next_chosen_lahze517, x2_next_chosen_lahze517,x3_next_chosen_lahze517,x4_next_chosen_lahze517,js5161001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5171001');
[cost_5151001,u_star516,x1_next_chosen_lahze516, x2_next_chosen_lahze516,x3_next_chosen_lahze516,x4_next_chosen_lahze516,js5151001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5161001');
[cost_5141001,u_star515,x1_next_chosen_lahze515, x2_next_chosen_lahze515,x3_next_chosen_lahze515,x4_next_chosen_lahze515,js5141001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5151001');
[cost_5131001,u_star514,x1_next_chosen_lahze514, x2_next_chosen_lahze514,x3_next_chosen_lahze514,x4_next_chosen_lahze514,js5131001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5141001');
[cost_5121001,u_star513,x1_next_chosen_lahze513, x2_next_chosen_lahze513,x3_next_chosen_lahze513,x4_next_chosen_lahze513,js5121001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5131001');
[cost_5111001,u_star512,x1_next_chosen_lahze512, x2_next_chosen_lahze512,x3_next_chosen_lahze512,x4_next_chosen_lahze512,js5111001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5121001');
[cost_5101001,u_star511,x1_next_chosen_lahze511, x2_next_chosen_lahze511,x3_next_chosen_lahze511,x4_next_chosen_lahze511,js5101001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5111001');
[cost_5091001,u_star510,x1_next_chosen_lahze510, x2_next_chosen_lahze510,x3_next_chosen_lahze510,x4_next_chosen_lahze510,js5091001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5101001');
[cost_5081001,u_star509,x1_next_chosen_lahze509, x2_next_chosen_lahze509,x3_next_chosen_lahze509,x4_next_chosen_lahze509,js5081001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5091001');
[cost_5071001,u_star508,x1_next_chosen_lahze508, x2_next_chosen_lahze508,x3_next_chosen_lahze508,x4_next_chosen_lahze508,js5071001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5081001');
[cost_5061001,u_star507,x1_next_chosen_lahze507, x2_next_chosen_lahze507,x3_next_chosen_lahze507,x4_next_chosen_lahze507,js5061001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5071001');
[cost_5051001,u_star506,x1_next_chosen_lahze506, x2_next_chosen_lahze506,x3_next_chosen_lahze506,x4_next_chosen_lahze506,js5051001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5061001');
[cost_5041001,u_star505,x1_next_chosen_lahze505, x2_next_chosen_lahze505,x3_next_chosen_lahze505,x4_next_chosen_lahze505,js5041001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5051001');
[cost_5031001,u_star504,x1_next_chosen_lahze504, x2_next_chosen_lahze504,x3_next_chosen_lahze504,x4_next_chosen_lahze504,js5031001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5041001');
[cost_5021001,u_star503,x1_next_chosen_lahze503, x2_next_chosen_lahze503,x3_next_chosen_lahze503,x4_next_chosen_lahze503,js5021001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5031001');
[cost_5011001,u_star502,x1_next_chosen_lahze502, x2_next_chosen_lahze502,x3_next_chosen_lahze502,x4_next_chosen_lahze502,js5011001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5021001');
[cost_5001001,u_star501,x1_next_chosen_lahze501, x2_next_chosen_lahze501,x3_next_chosen_lahze501,x4_next_chosen_lahze501,js5001001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5011001');
[cost_4991001,u_star500,x1_next_chosen_lahze500, x2_next_chosen_lahze500,x3_next_chosen_lahze500,x4_next_chosen_lahze500,js4991001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js5001001');
[cost_4981001,u_star499,x1_next_chosen_lahze499, x2_next_chosen_lahze499,x3_next_chosen_lahze499,x4_next_chosen_lahze499,js4981001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4991001');
[cost_4971001,u_star498,x1_next_chosen_lahze498, x2_next_chosen_lahze498,x3_next_chosen_lahze498,x4_next_chosen_lahze498,js4971001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4981001');
[cost_4961001,u_star497,x1_next_chosen_lahze497, x2_next_chosen_lahze497,x3_next_chosen_lahze497,x4_next_chosen_lahze497,js4961001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4971001');
[cost_4951001,u_star496,x1_next_chosen_lahze496, x2_next_chosen_lahze496,x3_next_chosen_lahze496,x4_next_chosen_lahze496,js4951001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4961001');
[cost_4941001,u_star495,x1_next_chosen_lahze495, x2_next_chosen_lahze495,x3_next_chosen_lahze495,x4_next_chosen_lahze495,js4941001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4951001');
[cost_4931001,u_star494,x1_next_chosen_lahze494, x2_next_chosen_lahze494,x3_next_chosen_lahze494,x4_next_chosen_lahze494,js4931001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4941001');
[cost_4921001,u_star493,x1_next_chosen_lahze493, x2_next_chosen_lahze493,x3_next_chosen_lahze493,x4_next_chosen_lahze493,js4921001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4931001');
[cost_4911001,u_star492,x1_next_chosen_lahze492, x2_next_chosen_lahze492,x3_next_chosen_lahze492,x4_next_chosen_lahze492,js4911001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4921001');
[cost_4901001,u_star491,x1_next_chosen_lahze491, x2_next_chosen_lahze491,x3_next_chosen_lahze491,x4_next_chosen_lahze491,js4901001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4911001');
[cost_4891001,u_star490,x1_next_chosen_lahze490, x2_next_chosen_lahze490,x3_next_chosen_lahze490,x4_next_chosen_lahze490,js4891001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4901001');
[cost_4881001,u_star489,x1_next_chosen_lahze489, x2_next_chosen_lahze489,x3_next_chosen_lahze489,x4_next_chosen_lahze489,js4881001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4891001');
[cost_4871001,u_star488,x1_next_chosen_lahze488, x2_next_chosen_lahze488,x3_next_chosen_lahze488,x4_next_chosen_lahze488,js4871001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4881001');
[cost_4861001,u_star487,x1_next_chosen_lahze487, x2_next_chosen_lahze487,x3_next_chosen_lahze487,x4_next_chosen_lahze487,js4861001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4871001');
[cost_4851001,u_star486,x1_next_chosen_lahze486, x2_next_chosen_lahze486,x3_next_chosen_lahze486,x4_next_chosen_lahze486,js4851001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4861001');
[cost_4841001,u_star485,x1_next_chosen_lahze485, x2_next_chosen_lahze485,x3_next_chosen_lahze485,x4_next_chosen_lahze485,js4841001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4851001');
[cost_4831001,u_star484,x1_next_chosen_lahze484, x2_next_chosen_lahze484,x3_next_chosen_lahze484,x4_next_chosen_lahze484,js4831001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4841001');
[cost_4821001,u_star483,x1_next_chosen_lahze483, x2_next_chosen_lahze483,x3_next_chosen_lahze483,x4_next_chosen_lahze483,js4821001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4831001');
[cost_4811001,u_star482,x1_next_chosen_lahze482, x2_next_chosen_lahze482,x3_next_chosen_lahze482,x4_next_chosen_lahze482,js4811001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4821001');
[cost_4801001,u_star481,x1_next_chosen_lahze481, x2_next_chosen_lahze481,x3_next_chosen_lahze481,x4_next_chosen_lahze481,js4801001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4811001');
[cost_4791001,u_star480,x1_next_chosen_lahze480, x2_next_chosen_lahze480,x3_next_chosen_lahze480,x4_next_chosen_lahze480,js4791001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4801001');
[cost_4781001,u_star479,x1_next_chosen_lahze479, x2_next_chosen_lahze479,x3_next_chosen_lahze479,x4_next_chosen_lahze479,js4781001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4791001');
[cost_4771001,u_star478,x1_next_chosen_lahze478, x2_next_chosen_lahze478,x3_next_chosen_lahze478,x4_next_chosen_lahze478,js4771001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4781001');
[cost_4761001,u_star477,x1_next_chosen_lahze477, x2_next_chosen_lahze477,x3_next_chosen_lahze477,x4_next_chosen_lahze477,js4761001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4771001');
[cost_4751001,u_star476,x1_next_chosen_lahze476, x2_next_chosen_lahze476,x3_next_chosen_lahze476,x4_next_chosen_lahze476,js4751001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4761001');
[cost_4741001,u_star475,x1_next_chosen_lahze475, x2_next_chosen_lahze475,x3_next_chosen_lahze475,x4_next_chosen_lahze475,js4741001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4751001');
[cost_4731001,u_star474,x1_next_chosen_lahze474, x2_next_chosen_lahze474,x3_next_chosen_lahze474,x4_next_chosen_lahze474,js4731001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4741001');
[cost_4721001,u_star473,x1_next_chosen_lahze473, x2_next_chosen_lahze473,x3_next_chosen_lahze473,x4_next_chosen_lahze473,js4721001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4731001');
[cost_4711001,u_star472,x1_next_chosen_lahze472, x2_next_chosen_lahze472,x3_next_chosen_lahze472,x4_next_chosen_lahze472,js4711001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4721001');
[cost_4701001,u_star471,x1_next_chosen_lahze471, x2_next_chosen_lahze471,x3_next_chosen_lahze471,x4_next_chosen_lahze471,js4701001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4711001');
[cost_4691001,u_star470,x1_next_chosen_lahze470, x2_next_chosen_lahze470,x3_next_chosen_lahze470,x4_next_chosen_lahze470,js4691001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4701001');
[cost_4681001,u_star469,x1_next_chosen_lahze469, x2_next_chosen_lahze469,x3_next_chosen_lahze469,x4_next_chosen_lahze469,js4681001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4691001');
[cost_4671001,u_star468,x1_next_chosen_lahze468, x2_next_chosen_lahze468,x3_next_chosen_lahze468,x4_next_chosen_lahze468,js4671001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4681001');
[cost_4661001,u_star467,x1_next_chosen_lahze467, x2_next_chosen_lahze467,x3_next_chosen_lahze467,x4_next_chosen_lahze467,js4661001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4671001');
[cost_4651001,u_star466,x1_next_chosen_lahze466, x2_next_chosen_lahze466,x3_next_chosen_lahze466,x4_next_chosen_lahze466,js4651001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4661001');
[cost_4641001,u_star465,x1_next_chosen_lahze465, x2_next_chosen_lahze465,x3_next_chosen_lahze465,x4_next_chosen_lahze465,js4641001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4651001');
[cost_4631001,u_star464,x1_next_chosen_lahze464, x2_next_chosen_lahze464,x3_next_chosen_lahze464,x4_next_chosen_lahze464,js4631001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4641001');
[cost_4621001,u_star463,x1_next_chosen_lahze463, x2_next_chosen_lahze463,x3_next_chosen_lahze463,x4_next_chosen_lahze463,js4621001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4631001');
[cost_4611001,u_star462,x1_next_chosen_lahze462, x2_next_chosen_lahze462,x3_next_chosen_lahze462,x4_next_chosen_lahze462,js4611001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4621001');
[cost_4601001,u_star461,x1_next_chosen_lahze461, x2_next_chosen_lahze461,x3_next_chosen_lahze461,x4_next_chosen_lahze461,js4601001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4611001');
[cost_4591001,u_star460,x1_next_chosen_lahze460, x2_next_chosen_lahze460,x3_next_chosen_lahze460,x4_next_chosen_lahze460,js4591001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4601001');
[cost_4581001,u_star459,x1_next_chosen_lahze459, x2_next_chosen_lahze459,x3_next_chosen_lahze459,x4_next_chosen_lahze459,js4581001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4591001');
[cost_4571001,u_star458,x1_next_chosen_lahze458, x2_next_chosen_lahze458,x3_next_chosen_lahze458,x4_next_chosen_lahze458,js4571001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4581001');
[cost_4561001,u_star457,x1_next_chosen_lahze457, x2_next_chosen_lahze457,x3_next_chosen_lahze457,x4_next_chosen_lahze457,js4561001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4571001');
[cost_4551001,u_star456,x1_next_chosen_lahze456, x2_next_chosen_lahze456,x3_next_chosen_lahze456,x4_next_chosen_lahze456,js4551001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4561001');
[cost_4541001,u_star455,x1_next_chosen_lahze455, x2_next_chosen_lahze455,x3_next_chosen_lahze455,x4_next_chosen_lahze455,js4541001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4551001');
[cost_4531001,u_star454,x1_next_chosen_lahze454, x2_next_chosen_lahze454,x3_next_chosen_lahze454,x4_next_chosen_lahze454,js4531001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4541001');
[cost_4521001,u_star453,x1_next_chosen_lahze453, x2_next_chosen_lahze453,x3_next_chosen_lahze453,x4_next_chosen_lahze453,js4521001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4531001');
[cost_4511001,u_star452,x1_next_chosen_lahze452, x2_next_chosen_lahze452,x3_next_chosen_lahze452,x4_next_chosen_lahze452,js4511001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4521001');
[cost_4501001,u_star451,x1_next_chosen_lahze451, x2_next_chosen_lahze451,x3_next_chosen_lahze451,x4_next_chosen_lahze451,js4501001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4511001');
[cost_4491001,u_star450,x1_next_chosen_lahze450, x2_next_chosen_lahze450,x3_next_chosen_lahze450,x4_next_chosen_lahze450,js4491001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4501001');
[cost_4481001,u_star449,x1_next_chosen_lahze449, x2_next_chosen_lahze449,x3_next_chosen_lahze449,x4_next_chosen_lahze449,js4481001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4491001');
[cost_4471001,u_star448,x1_next_chosen_lahze448, x2_next_chosen_lahze448,x3_next_chosen_lahze448,x4_next_chosen_lahze448,js4471001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4481001');
[cost_4461001,u_star447,x1_next_chosen_lahze447, x2_next_chosen_lahze447,x3_next_chosen_lahze447,x4_next_chosen_lahze447,js4461001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4471001');
[cost_4451001,u_star446,x1_next_chosen_lahze446, x2_next_chosen_lahze446,x3_next_chosen_lahze446,x4_next_chosen_lahze446,js4451001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4461001');
[cost_4441001,u_star445,x1_next_chosen_lahze445, x2_next_chosen_lahze445,x3_next_chosen_lahze445,x4_next_chosen_lahze445,js4441001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4451001');
[cost_4431001,u_star444,x1_next_chosen_lahze444, x2_next_chosen_lahze444,x3_next_chosen_lahze444,x4_next_chosen_lahze444,js4431001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4441001');
[cost_4421001,u_star443,x1_next_chosen_lahze443, x2_next_chosen_lahze443,x3_next_chosen_lahze443,x4_next_chosen_lahze443,js4421001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4431001');
[cost_4411001,u_star442,x1_next_chosen_lahze442, x2_next_chosen_lahze442,x3_next_chosen_lahze442,x4_next_chosen_lahze442,js4411001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4421001');
[cost_4401001,u_star441,x1_next_chosen_lahze441, x2_next_chosen_lahze441,x3_next_chosen_lahze441,x4_next_chosen_lahze441,js4401001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4411001');
[cost_4391001,u_star440,x1_next_chosen_lahze440, x2_next_chosen_lahze440,x3_next_chosen_lahze440,x4_next_chosen_lahze440,js4391001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4401001');
[cost_4381001,u_star439,x1_next_chosen_lahze439, x2_next_chosen_lahze439,x3_next_chosen_lahze439,x4_next_chosen_lahze439,js4381001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4391001');
[cost_4371001,u_star438,x1_next_chosen_lahze438, x2_next_chosen_lahze438,x3_next_chosen_lahze438,x4_next_chosen_lahze438,js4371001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4381001');
[cost_4361001,u_star437,x1_next_chosen_lahze437, x2_next_chosen_lahze437,x3_next_chosen_lahze437,x4_next_chosen_lahze437,js4361001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4371001');
[cost_4351001,u_star436,x1_next_chosen_lahze436, x2_next_chosen_lahze436,x3_next_chosen_lahze436,x4_next_chosen_lahze436,js4351001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4361001');
[cost_4341001,u_star435,x1_next_chosen_lahze435, x2_next_chosen_lahze435,x3_next_chosen_lahze435,x4_next_chosen_lahze435,js4341001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4351001');
[cost_4331001,u_star434,x1_next_chosen_lahze434, x2_next_chosen_lahze434,x3_next_chosen_lahze434,x4_next_chosen_lahze434,js4331001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4341001');
[cost_4321001,u_star433,x1_next_chosen_lahze433, x2_next_chosen_lahze433,x3_next_chosen_lahze433,x4_next_chosen_lahze433,js4321001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4331001');
[cost_4311001,u_star432,x1_next_chosen_lahze432, x2_next_chosen_lahze432,x3_next_chosen_lahze432,x4_next_chosen_lahze432,js4311001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4321001');
[cost_4301001,u_star431,x1_next_chosen_lahze431, x2_next_chosen_lahze431,x3_next_chosen_lahze431,x4_next_chosen_lahze431,js4301001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4311001');
[cost_4291001,u_star430,x1_next_chosen_lahze430, x2_next_chosen_lahze430,x3_next_chosen_lahze430,x4_next_chosen_lahze430,js4291001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4301001');
[cost_4281001,u_star429,x1_next_chosen_lahze429, x2_next_chosen_lahze429,x3_next_chosen_lahze429,x4_next_chosen_lahze429,js4281001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4291001');
[cost_4271001,u_star428,x1_next_chosen_lahze428, x2_next_chosen_lahze428,x3_next_chosen_lahze428,x4_next_chosen_lahze428,js4271001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4281001');
[cost_4261001,u_star427,x1_next_chosen_lahze427, x2_next_chosen_lahze427,x3_next_chosen_lahze427,x4_next_chosen_lahze427,js4261001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4271001');
[cost_4251001,u_star426,x1_next_chosen_lahze426, x2_next_chosen_lahze426,x3_next_chosen_lahze426,x4_next_chosen_lahze426,js4251001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4261001');
[cost_4241001,u_star425,x1_next_chosen_lahze425, x2_next_chosen_lahze425,x3_next_chosen_lahze425,x4_next_chosen_lahze425,js4241001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4251001');
[cost_4231001,u_star424,x1_next_chosen_lahze424, x2_next_chosen_lahze424,x3_next_chosen_lahze424,x4_next_chosen_lahze424,js4231001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4241001');
[cost_4221001,u_star423,x1_next_chosen_lahze423, x2_next_chosen_lahze423,x3_next_chosen_lahze423,x4_next_chosen_lahze423,js4221001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4231001');
[cost_4211001,u_star422,x1_next_chosen_lahze422, x2_next_chosen_lahze422,x3_next_chosen_lahze422,x4_next_chosen_lahze422,js4211001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4221001');
[cost_4201001,u_star421,x1_next_chosen_lahze421, x2_next_chosen_lahze421,x3_next_chosen_lahze421,x4_next_chosen_lahze421,js4201001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4211001');
[cost_4191001,u_star420,x1_next_chosen_lahze420, x2_next_chosen_lahze420,x3_next_chosen_lahze420,x4_next_chosen_lahze420,js4191001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4201001');
[cost_4181001,u_star419,x1_next_chosen_lahze419, x2_next_chosen_lahze419,x3_next_chosen_lahze419,x4_next_chosen_lahze419,js4181001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4191001');
[cost_4171001,u_star418,x1_next_chosen_lahze418, x2_next_chosen_lahze418,x3_next_chosen_lahze418,x4_next_chosen_lahze418,js4171001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4181001');
[cost_4161001,u_star417,x1_next_chosen_lahze417, x2_next_chosen_lahze417,x3_next_chosen_lahze417,x4_next_chosen_lahze417,js4161001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4171001');
[cost_4151001,u_star416,x1_next_chosen_lahze416, x2_next_chosen_lahze416,x3_next_chosen_lahze416,x4_next_chosen_lahze416,js4151001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4161001');
[cost_4141001,u_star415,x1_next_chosen_lahze415, x2_next_chosen_lahze415,x3_next_chosen_lahze415,x4_next_chosen_lahze415,js4141001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4151001');
[cost_4131001,u_star414,x1_next_chosen_lahze414, x2_next_chosen_lahze414,x3_next_chosen_lahze414,x4_next_chosen_lahze414,js4131001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4141001');
[cost_4121001,u_star413,x1_next_chosen_lahze413, x2_next_chosen_lahze413,x3_next_chosen_lahze413,x4_next_chosen_lahze413,js4121001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4131001');
[cost_4111001,u_star412,x1_next_chosen_lahze412, x2_next_chosen_lahze412,x3_next_chosen_lahze412,x4_next_chosen_lahze412,js4111001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4121001');
[cost_4101001,u_star411,x1_next_chosen_lahze411, x2_next_chosen_lahze411,x3_next_chosen_lahze411,x4_next_chosen_lahze411,js4101001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4111001');
[cost_4091001,u_star410,x1_next_chosen_lahze410, x2_next_chosen_lahze410,x3_next_chosen_lahze410,x4_next_chosen_lahze410,js4091001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4101001');
[cost_4081001,u_star409,x1_next_chosen_lahze409, x2_next_chosen_lahze409,x3_next_chosen_lahze409,x4_next_chosen_lahze409,js4081001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4091001');
[cost_4071001,u_star408,x1_next_chosen_lahze408, x2_next_chosen_lahze408,x3_next_chosen_lahze408,x4_next_chosen_lahze408,js4071001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4081001');
[cost_4061001,u_star407,x1_next_chosen_lahze407, x2_next_chosen_lahze407,x3_next_chosen_lahze407,x4_next_chosen_lahze407,js4061001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4071001');
[cost_4051001,u_star406,x1_next_chosen_lahze406, x2_next_chosen_lahze406,x3_next_chosen_lahze406,x4_next_chosen_lahze406,js4051001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4061001');
[cost_4041001,u_star405,x1_next_chosen_lahze405, x2_next_chosen_lahze405,x3_next_chosen_lahze405,x4_next_chosen_lahze405,js4041001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4051001');
[cost_4031001,u_star404,x1_next_chosen_lahze404, x2_next_chosen_lahze404,x3_next_chosen_lahze404,x4_next_chosen_lahze404,js4031001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4041001');
[cost_4021001,u_star403,x1_next_chosen_lahze403, x2_next_chosen_lahze403,x3_next_chosen_lahze403,x4_next_chosen_lahze403,js4021001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4031001');
[cost_4011001,u_star402,x1_next_chosen_lahze402, x2_next_chosen_lahze402,x3_next_chosen_lahze402,x4_next_chosen_lahze402,js4011001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4021001');
[cost_4001001,u_star401,x1_next_chosen_lahze401, x2_next_chosen_lahze401,x3_next_chosen_lahze401,x4_next_chosen_lahze401,js4001001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4011001');
[cost_3991001,u_star400,x1_next_chosen_lahze400, x2_next_chosen_lahze400,x3_next_chosen_lahze400,x4_next_chosen_lahze400,js3991001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js4001001');
[cost_3981001,u_star399,x1_next_chosen_lahze399, x2_next_chosen_lahze399,x3_next_chosen_lahze399,x4_next_chosen_lahze399,js3981001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3991001');
[cost_3971001,u_star398,x1_next_chosen_lahze398, x2_next_chosen_lahze398,x3_next_chosen_lahze398,x4_next_chosen_lahze398,js3971001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3981001');
[cost_3961001,u_star397,x1_next_chosen_lahze397, x2_next_chosen_lahze397,x3_next_chosen_lahze397,x4_next_chosen_lahze397,js3961001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3971001');
[cost_3951001,u_star396,x1_next_chosen_lahze396, x2_next_chosen_lahze396,x3_next_chosen_lahze396,x4_next_chosen_lahze396,js3951001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3961001');
[cost_3941001,u_star395,x1_next_chosen_lahze395, x2_next_chosen_lahze395,x3_next_chosen_lahze395,x4_next_chosen_lahze395,js3941001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3951001');
[cost_3931001,u_star394,x1_next_chosen_lahze394, x2_next_chosen_lahze394,x3_next_chosen_lahze394,x4_next_chosen_lahze394,js3931001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3941001');
[cost_3921001,u_star393,x1_next_chosen_lahze393, x2_next_chosen_lahze393,x3_next_chosen_lahze393,x4_next_chosen_lahze393,js3921001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3931001');
[cost_3911001,u_star392,x1_next_chosen_lahze392, x2_next_chosen_lahze392,x3_next_chosen_lahze392,x4_next_chosen_lahze392,js3911001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3921001');
[cost_3901001,u_star391,x1_next_chosen_lahze391, x2_next_chosen_lahze391,x3_next_chosen_lahze391,x4_next_chosen_lahze391,js3901001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3911001');
[cost_3891001,u_star390,x1_next_chosen_lahze390, x2_next_chosen_lahze390,x3_next_chosen_lahze390,x4_next_chosen_lahze390,js3891001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3901001');
[cost_3881001,u_star389,x1_next_chosen_lahze389, x2_next_chosen_lahze389,x3_next_chosen_lahze389,x4_next_chosen_lahze389,js3881001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3891001');
[cost_3871001,u_star388,x1_next_chosen_lahze388, x2_next_chosen_lahze388,x3_next_chosen_lahze388,x4_next_chosen_lahze388,js3871001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3881001');
[cost_3861001,u_star387,x1_next_chosen_lahze387, x2_next_chosen_lahze387,x3_next_chosen_lahze387,x4_next_chosen_lahze387,js3861001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3871001');
[cost_3851001,u_star386,x1_next_chosen_lahze386, x2_next_chosen_lahze386,x3_next_chosen_lahze386,x4_next_chosen_lahze386,js3851001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3861001');
[cost_3841001,u_star385,x1_next_chosen_lahze385, x2_next_chosen_lahze385,x3_next_chosen_lahze385,x4_next_chosen_lahze385,js3841001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3851001');
[cost_3831001,u_star384,x1_next_chosen_lahze384, x2_next_chosen_lahze384,x3_next_chosen_lahze384,x4_next_chosen_lahze384,js3831001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3841001');
[cost_3821001,u_star383,x1_next_chosen_lahze383, x2_next_chosen_lahze383,x3_next_chosen_lahze383,x4_next_chosen_lahze383,js3821001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3831001');
[cost_3811001,u_star382,x1_next_chosen_lahze382, x2_next_chosen_lahze382,x3_next_chosen_lahze382,x4_next_chosen_lahze382,js3811001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3821001');
[cost_3801001,u_star381,x1_next_chosen_lahze381, x2_next_chosen_lahze381,x3_next_chosen_lahze381,x4_next_chosen_lahze381,js3801001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3811001');
[cost_3791001,u_star380,x1_next_chosen_lahze380, x2_next_chosen_lahze380,x3_next_chosen_lahze380,x4_next_chosen_lahze380,js3791001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3801001');
[cost_3781001,u_star379,x1_next_chosen_lahze379, x2_next_chosen_lahze379,x3_next_chosen_lahze379,x4_next_chosen_lahze379,js3781001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3791001');
[cost_3771001,u_star378,x1_next_chosen_lahze378, x2_next_chosen_lahze378,x3_next_chosen_lahze378,x4_next_chosen_lahze378,js3771001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3781001');
[cost_3761001,u_star377,x1_next_chosen_lahze377, x2_next_chosen_lahze377,x3_next_chosen_lahze377,x4_next_chosen_lahze377,js3761001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3771001');
[cost_3751001,u_star376,x1_next_chosen_lahze376, x2_next_chosen_lahze376,x3_next_chosen_lahze376,x4_next_chosen_lahze376,js3751001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3761001');
[cost_3741001,u_star375,x1_next_chosen_lahze375, x2_next_chosen_lahze375,x3_next_chosen_lahze375,x4_next_chosen_lahze375,js3741001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3751001');
[cost_3731001,u_star374,x1_next_chosen_lahze374, x2_next_chosen_lahze374,x3_next_chosen_lahze374,x4_next_chosen_lahze374,js3731001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3741001');
[cost_3721001,u_star373,x1_next_chosen_lahze373, x2_next_chosen_lahze373,x3_next_chosen_lahze373,x4_next_chosen_lahze373,js3721001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3731001');
[cost_3711001,u_star372,x1_next_chosen_lahze372, x2_next_chosen_lahze372,x3_next_chosen_lahze372,x4_next_chosen_lahze372,js3711001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3721001');
[cost_3701001,u_star371,x1_next_chosen_lahze371, x2_next_chosen_lahze371,x3_next_chosen_lahze371,x4_next_chosen_lahze371,js3701001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3711001');
[cost_3691001,u_star370,x1_next_chosen_lahze370, x2_next_chosen_lahze370,x3_next_chosen_lahze370,x4_next_chosen_lahze370,js3691001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3701001');
[cost_3681001,u_star369,x1_next_chosen_lahze369, x2_next_chosen_lahze369,x3_next_chosen_lahze369,x4_next_chosen_lahze369,js3681001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3691001');
[cost_3671001,u_star368,x1_next_chosen_lahze368, x2_next_chosen_lahze368,x3_next_chosen_lahze368,x4_next_chosen_lahze368,js3671001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3681001');
[cost_3661001,u_star367,x1_next_chosen_lahze367, x2_next_chosen_lahze367,x3_next_chosen_lahze367,x4_next_chosen_lahze367,js3661001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3671001');
[cost_3651001,u_star366,x1_next_chosen_lahze366, x2_next_chosen_lahze366,x3_next_chosen_lahze366,x4_next_chosen_lahze366,js3651001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3661001');
[cost_3641001,u_star365,x1_next_chosen_lahze365, x2_next_chosen_lahze365,x3_next_chosen_lahze365,x4_next_chosen_lahze365,js3641001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3651001');
[cost_3631001,u_star364,x1_next_chosen_lahze364, x2_next_chosen_lahze364,x3_next_chosen_lahze364,x4_next_chosen_lahze364,js3631001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3641001');
[cost_3621001,u_star363,x1_next_chosen_lahze363, x2_next_chosen_lahze363,x3_next_chosen_lahze363,x4_next_chosen_lahze363,js3621001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3631001');
[cost_3611001,u_star362,x1_next_chosen_lahze362, x2_next_chosen_lahze362,x3_next_chosen_lahze362,x4_next_chosen_lahze362,js3611001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3621001');
[cost_3601001,u_star361,x1_next_chosen_lahze361, x2_next_chosen_lahze361,x3_next_chosen_lahze361,x4_next_chosen_lahze361,js3601001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3611001');
[cost_3591001,u_star360,x1_next_chosen_lahze360, x2_next_chosen_lahze360,x3_next_chosen_lahze360,x4_next_chosen_lahze360,js3591001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3601001');
[cost_3581001,u_star359,x1_next_chosen_lahze359, x2_next_chosen_lahze359,x3_next_chosen_lahze359,x4_next_chosen_lahze359,js3581001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3591001');
[cost_3571001,u_star358,x1_next_chosen_lahze358, x2_next_chosen_lahze358,x3_next_chosen_lahze358,x4_next_chosen_lahze358,js3571001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3581001');
[cost_3561001,u_star357,x1_next_chosen_lahze357, x2_next_chosen_lahze357,x3_next_chosen_lahze357,x4_next_chosen_lahze357,js3561001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3571001');
[cost_3551001,u_star356,x1_next_chosen_lahze356, x2_next_chosen_lahze356,x3_next_chosen_lahze356,x4_next_chosen_lahze356,js3551001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3561001');
[cost_3541001,u_star355,x1_next_chosen_lahze355, x2_next_chosen_lahze355,x3_next_chosen_lahze355,x4_next_chosen_lahze355,js3541001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3551001');
[cost_3531001,u_star354,x1_next_chosen_lahze354, x2_next_chosen_lahze354,x3_next_chosen_lahze354,x4_next_chosen_lahze354,js3531001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3541001');
[cost_3521001,u_star353,x1_next_chosen_lahze353, x2_next_chosen_lahze353,x3_next_chosen_lahze353,x4_next_chosen_lahze353,js3521001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3531001');
[cost_3511001,u_star352,x1_next_chosen_lahze352, x2_next_chosen_lahze352,x3_next_chosen_lahze352,x4_next_chosen_lahze352,js3511001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3521001');
[cost_3501001,u_star351,x1_next_chosen_lahze351, x2_next_chosen_lahze351,x3_next_chosen_lahze351,x4_next_chosen_lahze351,js3501001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3511001');
[cost_3491001,u_star350,x1_next_chosen_lahze350, x2_next_chosen_lahze350,x3_next_chosen_lahze350,x4_next_chosen_lahze350,js3491001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3501001');
[cost_3481001,u_star349,x1_next_chosen_lahze349, x2_next_chosen_lahze349,x3_next_chosen_lahze349,x4_next_chosen_lahze349,js3481001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3491001');
[cost_3471001,u_star348,x1_next_chosen_lahze348, x2_next_chosen_lahze348,x3_next_chosen_lahze348,x4_next_chosen_lahze348,js3471001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3481001');
[cost_3461001,u_star347,x1_next_chosen_lahze347, x2_next_chosen_lahze347,x3_next_chosen_lahze347,x4_next_chosen_lahze347,js3461001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3471001');
[cost_3451001,u_star346,x1_next_chosen_lahze346, x2_next_chosen_lahze346,x3_next_chosen_lahze346,x4_next_chosen_lahze346,js3451001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3461001');
[cost_3441001,u_star345,x1_next_chosen_lahze345, x2_next_chosen_lahze345,x3_next_chosen_lahze345,x4_next_chosen_lahze345,js3441001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3451001');
[cost_3431001,u_star344,x1_next_chosen_lahze344, x2_next_chosen_lahze344,x3_next_chosen_lahze344,x4_next_chosen_lahze344,js3431001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3441001');
[cost_3421001,u_star343,x1_next_chosen_lahze343, x2_next_chosen_lahze343,x3_next_chosen_lahze343,x4_next_chosen_lahze343,js3421001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3431001');
[cost_3411001,u_star342,x1_next_chosen_lahze342, x2_next_chosen_lahze342,x3_next_chosen_lahze342,x4_next_chosen_lahze342,js3411001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3421001');
[cost_3401001,u_star341,x1_next_chosen_lahze341, x2_next_chosen_lahze341,x3_next_chosen_lahze341,x4_next_chosen_lahze341,js3401001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3411001');
[cost_3391001,u_star340,x1_next_chosen_lahze340, x2_next_chosen_lahze340,x3_next_chosen_lahze340,x4_next_chosen_lahze340,js3391001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3401001');
[cost_3381001,u_star339,x1_next_chosen_lahze339, x2_next_chosen_lahze339,x3_next_chosen_lahze339,x4_next_chosen_lahze339,js3381001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3391001');
[cost_3371001,u_star338,x1_next_chosen_lahze338, x2_next_chosen_lahze338,x3_next_chosen_lahze338,x4_next_chosen_lahze338,js3371001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3381001');
[cost_3361001,u_star337,x1_next_chosen_lahze337, x2_next_chosen_lahze337,x3_next_chosen_lahze337,x4_next_chosen_lahze337,js3361001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3371001');
[cost_3351001,u_star336,x1_next_chosen_lahze336, x2_next_chosen_lahze336,x3_next_chosen_lahze336,x4_next_chosen_lahze336,js3351001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3361001');
[cost_3341001,u_star335,x1_next_chosen_lahze335, x2_next_chosen_lahze335,x3_next_chosen_lahze335,x4_next_chosen_lahze335,js3341001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3351001');
[cost_3331001,u_star334,x1_next_chosen_lahze334, x2_next_chosen_lahze334,x3_next_chosen_lahze334,x4_next_chosen_lahze334,js3331001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3341001');
[cost_3321001,u_star333,x1_next_chosen_lahze333, x2_next_chosen_lahze333,x3_next_chosen_lahze333,x4_next_chosen_lahze333,js3321001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3331001');
[cost_3311001,u_star332,x1_next_chosen_lahze332, x2_next_chosen_lahze332,x3_next_chosen_lahze332,x4_next_chosen_lahze332,js3311001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3321001');
[cost_3301001,u_star331,x1_next_chosen_lahze331, x2_next_chosen_lahze331,x3_next_chosen_lahze331,x4_next_chosen_lahze331,js3301001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3311001');
[cost_3291001,u_star330,x1_next_chosen_lahze330, x2_next_chosen_lahze330,x3_next_chosen_lahze330,x4_next_chosen_lahze330,js3291001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3301001');
[cost_3281001,u_star329,x1_next_chosen_lahze329, x2_next_chosen_lahze329,x3_next_chosen_lahze329,x4_next_chosen_lahze329,js3281001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3291001');
[cost_3271001,u_star328,x1_next_chosen_lahze328, x2_next_chosen_lahze328,x3_next_chosen_lahze328,x4_next_chosen_lahze328,js3271001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3281001');
[cost_3261001,u_star327,x1_next_chosen_lahze327, x2_next_chosen_lahze327,x3_next_chosen_lahze327,x4_next_chosen_lahze327,js3261001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3271001');
[cost_3251001,u_star326,x1_next_chosen_lahze326, x2_next_chosen_lahze326,x3_next_chosen_lahze326,x4_next_chosen_lahze326,js3251001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3261001');
[cost_3241001,u_star325,x1_next_chosen_lahze325, x2_next_chosen_lahze325,x3_next_chosen_lahze325,x4_next_chosen_lahze325,js3241001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3251001');
[cost_3231001,u_star324,x1_next_chosen_lahze324, x2_next_chosen_lahze324,x3_next_chosen_lahze324,x4_next_chosen_lahze324,js3231001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3241001');
[cost_3221001,u_star323,x1_next_chosen_lahze323, x2_next_chosen_lahze323,x3_next_chosen_lahze323,x4_next_chosen_lahze323,js3221001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3231001');
[cost_3211001,u_star322,x1_next_chosen_lahze322, x2_next_chosen_lahze322,x3_next_chosen_lahze322,x4_next_chosen_lahze322,js3211001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3221001');
[cost_3201001,u_star321,x1_next_chosen_lahze321, x2_next_chosen_lahze321,x3_next_chosen_lahze321,x4_next_chosen_lahze321,js3201001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3211001');
[cost_3191001,u_star320,x1_next_chosen_lahze320, x2_next_chosen_lahze320,x3_next_chosen_lahze320,x4_next_chosen_lahze320,js3191001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3201001');
[cost_3181001,u_star319,x1_next_chosen_lahze319, x2_next_chosen_lahze319,x3_next_chosen_lahze319,x4_next_chosen_lahze319,js3181001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3191001');
[cost_3171001,u_star318,x1_next_chosen_lahze318, x2_next_chosen_lahze318,x3_next_chosen_lahze318,x4_next_chosen_lahze318,js3171001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3181001');
[cost_3161001,u_star317,x1_next_chosen_lahze317, x2_next_chosen_lahze317,x3_next_chosen_lahze317,x4_next_chosen_lahze317,js3161001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3171001');
[cost_3151001,u_star316,x1_next_chosen_lahze316, x2_next_chosen_lahze316,x3_next_chosen_lahze316,x4_next_chosen_lahze316,js3151001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3161001');
[cost_3141001,u_star315,x1_next_chosen_lahze315, x2_next_chosen_lahze315,x3_next_chosen_lahze315,x4_next_chosen_lahze315,js3141001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3151001');
[cost_3131001,u_star314,x1_next_chosen_lahze314, x2_next_chosen_lahze314,x3_next_chosen_lahze314,x4_next_chosen_lahze314,js3131001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3141001');
[cost_3121001,u_star313,x1_next_chosen_lahze313, x2_next_chosen_lahze313,x3_next_chosen_lahze313,x4_next_chosen_lahze313,js3121001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3131001');
[cost_3111001,u_star312,x1_next_chosen_lahze312, x2_next_chosen_lahze312,x3_next_chosen_lahze312,x4_next_chosen_lahze312,js3111001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3121001');
[cost_3101001,u_star311,x1_next_chosen_lahze311, x2_next_chosen_lahze311,x3_next_chosen_lahze311,x4_next_chosen_lahze311,js3101001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3111001');
[cost_3091001,u_star310,x1_next_chosen_lahze310, x2_next_chosen_lahze310,x3_next_chosen_lahze310,x4_next_chosen_lahze310,js3091001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3101001');
[cost_3081001,u_star309,x1_next_chosen_lahze309, x2_next_chosen_lahze309,x3_next_chosen_lahze309,x4_next_chosen_lahze309,js3081001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3091001');
[cost_3071001,u_star308,x1_next_chosen_lahze308, x2_next_chosen_lahze308,x3_next_chosen_lahze308,x4_next_chosen_lahze308,js3071001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3081001');
[cost_3061001,u_star307,x1_next_chosen_lahze307, x2_next_chosen_lahze307,x3_next_chosen_lahze307,x4_next_chosen_lahze307,js3061001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3071001');
[cost_3051001,u_star306,x1_next_chosen_lahze306, x2_next_chosen_lahze306,x3_next_chosen_lahze306,x4_next_chosen_lahze306,js3051001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3061001');
[cost_3041001,u_star305,x1_next_chosen_lahze305, x2_next_chosen_lahze305,x3_next_chosen_lahze305,x4_next_chosen_lahze305,js3041001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3051001');
[cost_3031001,u_star304,x1_next_chosen_lahze304, x2_next_chosen_lahze304,x3_next_chosen_lahze304,x4_next_chosen_lahze304,js3031001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3041001');
[cost_3021001,u_star303,x1_next_chosen_lahze303, x2_next_chosen_lahze303,x3_next_chosen_lahze303,x4_next_chosen_lahze303,js3021001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3031001');
[cost_3011001,u_star302,x1_next_chosen_lahze302, x2_next_chosen_lahze302,x3_next_chosen_lahze302,x4_next_chosen_lahze302,js3011001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3021001');
[cost_3001001,u_star301,x1_next_chosen_lahze301, x2_next_chosen_lahze301,x3_next_chosen_lahze301,x4_next_chosen_lahze301,js3001001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3011001');
[cost_2991001,u_star300,x1_next_chosen_lahze300, x2_next_chosen_lahze300,x3_next_chosen_lahze300,x4_next_chosen_lahze300,js2991001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js3001001');
[cost_2981001,u_star299,x1_next_chosen_lahze299, x2_next_chosen_lahze299,x3_next_chosen_lahze299,x4_next_chosen_lahze299,js2981001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2991001');
[cost_2971001,u_star298,x1_next_chosen_lahze298, x2_next_chosen_lahze298,x3_next_chosen_lahze298,x4_next_chosen_lahze298,js2971001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2981001');
[cost_2961001,u_star297,x1_next_chosen_lahze297, x2_next_chosen_lahze297,x3_next_chosen_lahze297,x4_next_chosen_lahze297,js2961001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2971001');
[cost_2951001,u_star296,x1_next_chosen_lahze296, x2_next_chosen_lahze296,x3_next_chosen_lahze296,x4_next_chosen_lahze296,js2951001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2961001');
[cost_2941001,u_star295,x1_next_chosen_lahze295, x2_next_chosen_lahze295,x3_next_chosen_lahze295,x4_next_chosen_lahze295,js2941001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2951001');
[cost_2931001,u_star294,x1_next_chosen_lahze294, x2_next_chosen_lahze294,x3_next_chosen_lahze294,x4_next_chosen_lahze294,js2931001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2941001');
[cost_2921001,u_star293,x1_next_chosen_lahze293, x2_next_chosen_lahze293,x3_next_chosen_lahze293,x4_next_chosen_lahze293,js2921001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2931001');
[cost_2911001,u_star292,x1_next_chosen_lahze292, x2_next_chosen_lahze292,x3_next_chosen_lahze292,x4_next_chosen_lahze292,js2911001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2921001');
[cost_2901001,u_star291,x1_next_chosen_lahze291, x2_next_chosen_lahze291,x3_next_chosen_lahze291,x4_next_chosen_lahze291,js2901001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2911001');
[cost_2891001,u_star290,x1_next_chosen_lahze290, x2_next_chosen_lahze290,x3_next_chosen_lahze290,x4_next_chosen_lahze290,js2891001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2901001');
[cost_2881001,u_star289,x1_next_chosen_lahze289, x2_next_chosen_lahze289,x3_next_chosen_lahze289,x4_next_chosen_lahze289,js2881001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2891001');
[cost_2871001,u_star288,x1_next_chosen_lahze288, x2_next_chosen_lahze288,x3_next_chosen_lahze288,x4_next_chosen_lahze288,js2871001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2881001');
[cost_2861001,u_star287,x1_next_chosen_lahze287, x2_next_chosen_lahze287,x3_next_chosen_lahze287,x4_next_chosen_lahze287,js2861001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2871001');
[cost_2851001,u_star286,x1_next_chosen_lahze286, x2_next_chosen_lahze286,x3_next_chosen_lahze286,x4_next_chosen_lahze286,js2851001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2861001');
[cost_2841001,u_star285,x1_next_chosen_lahze285, x2_next_chosen_lahze285,x3_next_chosen_lahze285,x4_next_chosen_lahze285,js2841001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2851001');
[cost_2831001,u_star284,x1_next_chosen_lahze284, x2_next_chosen_lahze284,x3_next_chosen_lahze284,x4_next_chosen_lahze284,js2831001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2841001');
[cost_2821001,u_star283,x1_next_chosen_lahze283, x2_next_chosen_lahze283,x3_next_chosen_lahze283,x4_next_chosen_lahze283,js2821001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2831001');
[cost_2811001,u_star282,x1_next_chosen_lahze282, x2_next_chosen_lahze282,x3_next_chosen_lahze282,x4_next_chosen_lahze282,js2811001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2821001');
[cost_2801001,u_star281,x1_next_chosen_lahze281, x2_next_chosen_lahze281,x3_next_chosen_lahze281,x4_next_chosen_lahze281,js2801001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2811001');
[cost_2791001,u_star280,x1_next_chosen_lahze280, x2_next_chosen_lahze280,x3_next_chosen_lahze280,x4_next_chosen_lahze280,js2791001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2801001');
[cost_2781001,u_star279,x1_next_chosen_lahze279, x2_next_chosen_lahze279,x3_next_chosen_lahze279,x4_next_chosen_lahze279,js2781001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2791001');
[cost_2771001,u_star278,x1_next_chosen_lahze278, x2_next_chosen_lahze278,x3_next_chosen_lahze278,x4_next_chosen_lahze278,js2771001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2781001');
[cost_2761001,u_star277,x1_next_chosen_lahze277, x2_next_chosen_lahze277,x3_next_chosen_lahze277,x4_next_chosen_lahze277,js2761001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2771001');
[cost_2751001,u_star276,x1_next_chosen_lahze276, x2_next_chosen_lahze276,x3_next_chosen_lahze276,x4_next_chosen_lahze276,js2751001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2761001');
[cost_2741001,u_star275,x1_next_chosen_lahze275, x2_next_chosen_lahze275,x3_next_chosen_lahze275,x4_next_chosen_lahze275,js2741001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2751001');
[cost_2731001,u_star274,x1_next_chosen_lahze274, x2_next_chosen_lahze274,x3_next_chosen_lahze274,x4_next_chosen_lahze274,js2731001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2741001');
[cost_2721001,u_star273,x1_next_chosen_lahze273, x2_next_chosen_lahze273,x3_next_chosen_lahze273,x4_next_chosen_lahze273,js2721001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2731001');
[cost_2711001,u_star272,x1_next_chosen_lahze272, x2_next_chosen_lahze272,x3_next_chosen_lahze272,x4_next_chosen_lahze272,js2711001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2721001');
[cost_2701001,u_star271,x1_next_chosen_lahze271, x2_next_chosen_lahze271,x3_next_chosen_lahze271,x4_next_chosen_lahze271,js2701001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2711001');
[cost_2691001,u_star270,x1_next_chosen_lahze270, x2_next_chosen_lahze270,x3_next_chosen_lahze270,x4_next_chosen_lahze270,js2691001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2701001');
[cost_2681001,u_star269,x1_next_chosen_lahze269, x2_next_chosen_lahze269,x3_next_chosen_lahze269,x4_next_chosen_lahze269,js2681001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2691001');
[cost_2671001,u_star268,x1_next_chosen_lahze268, x2_next_chosen_lahze268,x3_next_chosen_lahze268,x4_next_chosen_lahze268,js2671001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2681001');
[cost_2661001,u_star267,x1_next_chosen_lahze267, x2_next_chosen_lahze267,x3_next_chosen_lahze267,x4_next_chosen_lahze267,js2661001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2671001');
[cost_2651001,u_star266,x1_next_chosen_lahze266, x2_next_chosen_lahze266,x3_next_chosen_lahze266,x4_next_chosen_lahze266,js2651001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2661001');
[cost_2641001,u_star265,x1_next_chosen_lahze265, x2_next_chosen_lahze265,x3_next_chosen_lahze265,x4_next_chosen_lahze265,js2641001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2651001');
[cost_2631001,u_star264,x1_next_chosen_lahze264, x2_next_chosen_lahze264,x3_next_chosen_lahze264,x4_next_chosen_lahze264,js2631001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2641001');
[cost_2621001,u_star263,x1_next_chosen_lahze263, x2_next_chosen_lahze263,x3_next_chosen_lahze263,x4_next_chosen_lahze263,js2621001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2631001');
[cost_2611001,u_star262,x1_next_chosen_lahze262, x2_next_chosen_lahze262,x3_next_chosen_lahze262,x4_next_chosen_lahze262,js2611001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2621001');
[cost_2601001,u_star261,x1_next_chosen_lahze261, x2_next_chosen_lahze261,x3_next_chosen_lahze261,x4_next_chosen_lahze261,js2601001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2611001');
[cost_2591001,u_star260,x1_next_chosen_lahze260, x2_next_chosen_lahze260,x3_next_chosen_lahze260,x4_next_chosen_lahze260,js2591001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2601001');
[cost_2581001,u_star259,x1_next_chosen_lahze259, x2_next_chosen_lahze259,x3_next_chosen_lahze259,x4_next_chosen_lahze259,js2581001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2591001');
[cost_2571001,u_star258,x1_next_chosen_lahze258, x2_next_chosen_lahze258,x3_next_chosen_lahze258,x4_next_chosen_lahze258,js2571001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2581001');
[cost_2561001,u_star257,x1_next_chosen_lahze257, x2_next_chosen_lahze257,x3_next_chosen_lahze257,x4_next_chosen_lahze257,js2561001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2571001');
[cost_2551001,u_star256,x1_next_chosen_lahze256, x2_next_chosen_lahze256,x3_next_chosen_lahze256,x4_next_chosen_lahze256,js2551001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2561001');
[cost_2541001,u_star255,x1_next_chosen_lahze255, x2_next_chosen_lahze255,x3_next_chosen_lahze255,x4_next_chosen_lahze255,js2541001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2551001');
[cost_2531001,u_star254,x1_next_chosen_lahze254, x2_next_chosen_lahze254,x3_next_chosen_lahze254,x4_next_chosen_lahze254,js2531001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2541001');
[cost_2521001,u_star253,x1_next_chosen_lahze253, x2_next_chosen_lahze253,x3_next_chosen_lahze253,x4_next_chosen_lahze253,js2521001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2531001');
[cost_2511001,u_star252,x1_next_chosen_lahze252, x2_next_chosen_lahze252,x3_next_chosen_lahze252,x4_next_chosen_lahze252,js2511001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2521001');
[cost_2501001,u_star251,x1_next_chosen_lahze251, x2_next_chosen_lahze251,x3_next_chosen_lahze251,x4_next_chosen_lahze251,js2501001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2511001');
[cost_2491001,u_star250,x1_next_chosen_lahze250, x2_next_chosen_lahze250,x3_next_chosen_lahze250,x4_next_chosen_lahze250,js2491001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2501001');
[cost_2481001,u_star249,x1_next_chosen_lahze249, x2_next_chosen_lahze249,x3_next_chosen_lahze249,x4_next_chosen_lahze249,js2481001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2491001');
[cost_2471001,u_star248,x1_next_chosen_lahze248, x2_next_chosen_lahze248,x3_next_chosen_lahze248,x4_next_chosen_lahze248,js2471001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2481001');
[cost_2461001,u_star247,x1_next_chosen_lahze247, x2_next_chosen_lahze247,x3_next_chosen_lahze247,x4_next_chosen_lahze247,js2461001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2471001');
[cost_2451001,u_star246,x1_next_chosen_lahze246, x2_next_chosen_lahze246,x3_next_chosen_lahze246,x4_next_chosen_lahze246,js2451001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2461001');
[cost_2441001,u_star245,x1_next_chosen_lahze245, x2_next_chosen_lahze245,x3_next_chosen_lahze245,x4_next_chosen_lahze245,js2441001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2451001');
[cost_2431001,u_star244,x1_next_chosen_lahze244, x2_next_chosen_lahze244,x3_next_chosen_lahze244,x4_next_chosen_lahze244,js2431001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2441001');
[cost_2421001,u_star243,x1_next_chosen_lahze243, x2_next_chosen_lahze243,x3_next_chosen_lahze243,x4_next_chosen_lahze243,js2421001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2431001');
[cost_2411001,u_star242,x1_next_chosen_lahze242, x2_next_chosen_lahze242,x3_next_chosen_lahze242,x4_next_chosen_lahze242,js2411001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2421001');
[cost_2401001,u_star241,x1_next_chosen_lahze241, x2_next_chosen_lahze241,x3_next_chosen_lahze241,x4_next_chosen_lahze241,js2401001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2411001');
[cost_2391001,u_star240,x1_next_chosen_lahze240, x2_next_chosen_lahze240,x3_next_chosen_lahze240,x4_next_chosen_lahze240,js2391001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2401001');
[cost_2381001,u_star239,x1_next_chosen_lahze239, x2_next_chosen_lahze239,x3_next_chosen_lahze239,x4_next_chosen_lahze239,js2381001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2391001');
[cost_2371001,u_star238,x1_next_chosen_lahze238, x2_next_chosen_lahze238,x3_next_chosen_lahze238,x4_next_chosen_lahze238,js2371001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2381001');
[cost_2361001,u_star237,x1_next_chosen_lahze237, x2_next_chosen_lahze237,x3_next_chosen_lahze237,x4_next_chosen_lahze237,js2361001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2371001');
[cost_2351001,u_star236,x1_next_chosen_lahze236, x2_next_chosen_lahze236,x3_next_chosen_lahze236,x4_next_chosen_lahze236,js2351001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2361001');
[cost_2341001,u_star235,x1_next_chosen_lahze235, x2_next_chosen_lahze235,x3_next_chosen_lahze235,x4_next_chosen_lahze235,js2341001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2351001');
[cost_2331001,u_star234,x1_next_chosen_lahze234, x2_next_chosen_lahze234,x3_next_chosen_lahze234,x4_next_chosen_lahze234,js2331001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2341001');
[cost_2321001,u_star233,x1_next_chosen_lahze233, x2_next_chosen_lahze233,x3_next_chosen_lahze233,x4_next_chosen_lahze233,js2321001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2331001');
[cost_2311001,u_star232,x1_next_chosen_lahze232, x2_next_chosen_lahze232,x3_next_chosen_lahze232,x4_next_chosen_lahze232,js2311001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2321001');
[cost_2301001,u_star231,x1_next_chosen_lahze231, x2_next_chosen_lahze231,x3_next_chosen_lahze231,x4_next_chosen_lahze231,js2301001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2311001');
[cost_2291001,u_star230,x1_next_chosen_lahze230, x2_next_chosen_lahze230,x3_next_chosen_lahze230,x4_next_chosen_lahze230,js2291001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2301001');
[cost_2281001,u_star229,x1_next_chosen_lahze229, x2_next_chosen_lahze229,x3_next_chosen_lahze229,x4_next_chosen_lahze229,js2281001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2291001');
[cost_2271001,u_star228,x1_next_chosen_lahze228, x2_next_chosen_lahze228,x3_next_chosen_lahze228,x4_next_chosen_lahze228,js2271001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2281001');
[cost_2261001,u_star227,x1_next_chosen_lahze227, x2_next_chosen_lahze227,x3_next_chosen_lahze227,x4_next_chosen_lahze227,js2261001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2271001');
[cost_2251001,u_star226,x1_next_chosen_lahze226, x2_next_chosen_lahze226,x3_next_chosen_lahze226,x4_next_chosen_lahze226,js2251001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2261001');
[cost_2241001,u_star225,x1_next_chosen_lahze225, x2_next_chosen_lahze225,x3_next_chosen_lahze225,x4_next_chosen_lahze225,js2241001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2251001');
[cost_2231001,u_star224,x1_next_chosen_lahze224, x2_next_chosen_lahze224,x3_next_chosen_lahze224,x4_next_chosen_lahze224,js2231001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2241001');
[cost_2221001,u_star223,x1_next_chosen_lahze223, x2_next_chosen_lahze223,x3_next_chosen_lahze223,x4_next_chosen_lahze223,js2221001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2231001');
[cost_2211001,u_star222,x1_next_chosen_lahze222, x2_next_chosen_lahze222,x3_next_chosen_lahze222,x4_next_chosen_lahze222,js2211001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2221001');
[cost_2201001,u_star221,x1_next_chosen_lahze221, x2_next_chosen_lahze221,x3_next_chosen_lahze221,x4_next_chosen_lahze221,js2201001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2211001');
[cost_2191001,u_star220,x1_next_chosen_lahze220, x2_next_chosen_lahze220,x3_next_chosen_lahze220,x4_next_chosen_lahze220,js2191001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2201001');
[cost_2181001,u_star219,x1_next_chosen_lahze219, x2_next_chosen_lahze219,x3_next_chosen_lahze219,x4_next_chosen_lahze219,js2181001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2191001');
[cost_2171001,u_star218,x1_next_chosen_lahze218, x2_next_chosen_lahze218,x3_next_chosen_lahze218,x4_next_chosen_lahze218,js2171001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2181001');
[cost_2161001,u_star217,x1_next_chosen_lahze217, x2_next_chosen_lahze217,x3_next_chosen_lahze217,x4_next_chosen_lahze217,js2161001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2171001');
[cost_2151001,u_star216,x1_next_chosen_lahze216, x2_next_chosen_lahze216,x3_next_chosen_lahze216,x4_next_chosen_lahze216,js2151001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2161001');
[cost_2141001,u_star215,x1_next_chosen_lahze215, x2_next_chosen_lahze215,x3_next_chosen_lahze215,x4_next_chosen_lahze215,js2141001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2151001');
[cost_2131001,u_star214,x1_next_chosen_lahze214, x2_next_chosen_lahze214,x3_next_chosen_lahze214,x4_next_chosen_lahze214,js2131001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2141001');
[cost_2121001,u_star213,x1_next_chosen_lahze213, x2_next_chosen_lahze213,x3_next_chosen_lahze213,x4_next_chosen_lahze213,js2121001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2131001');
[cost_2111001,u_star212,x1_next_chosen_lahze212, x2_next_chosen_lahze212,x3_next_chosen_lahze212,x4_next_chosen_lahze212,js2111001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2121001');
[cost_2101001,u_star211,x1_next_chosen_lahze211, x2_next_chosen_lahze211,x3_next_chosen_lahze211,x4_next_chosen_lahze211,js2101001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2111001');
[cost_2091001,u_star210,x1_next_chosen_lahze210, x2_next_chosen_lahze210,x3_next_chosen_lahze210,x4_next_chosen_lahze210,js2091001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2101001');
[cost_2081001,u_star209,x1_next_chosen_lahze209, x2_next_chosen_lahze209,x3_next_chosen_lahze209,x4_next_chosen_lahze209,js2081001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2091001');
[cost_2071001,u_star208,x1_next_chosen_lahze208, x2_next_chosen_lahze208,x3_next_chosen_lahze208,x4_next_chosen_lahze208,js2071001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2081001');
[cost_2061001,u_star207,x1_next_chosen_lahze207, x2_next_chosen_lahze207,x3_next_chosen_lahze207,x4_next_chosen_lahze207,js2061001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2071001');
[cost_2051001,u_star206,x1_next_chosen_lahze206, x2_next_chosen_lahze206,x3_next_chosen_lahze206,x4_next_chosen_lahze206,js2051001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2061001');
[cost_2041001,u_star205,x1_next_chosen_lahze205, x2_next_chosen_lahze205,x3_next_chosen_lahze205,x4_next_chosen_lahze205,js2041001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2051001');
[cost_2031001,u_star204,x1_next_chosen_lahze204, x2_next_chosen_lahze204,x3_next_chosen_lahze204,x4_next_chosen_lahze204,js2031001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2041001');
[cost_2021001,u_star203,x1_next_chosen_lahze203, x2_next_chosen_lahze203,x3_next_chosen_lahze203,x4_next_chosen_lahze203,js2021001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2031001');
[cost_2011001,u_star202,x1_next_chosen_lahze202, x2_next_chosen_lahze202,x3_next_chosen_lahze202,x4_next_chosen_lahze202,js2011001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2021001');
[cost_2001001,u_star201,x1_next_chosen_lahze201, x2_next_chosen_lahze201,x3_next_chosen_lahze201,x4_next_chosen_lahze201,js2001001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2011001');
[cost_1991001,u_star200,x1_next_chosen_lahze200, x2_next_chosen_lahze200,x3_next_chosen_lahze200,x4_next_chosen_lahze200,js1991001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js2001001');
[cost_1981001,u_star199,x1_next_chosen_lahze199, x2_next_chosen_lahze199,x3_next_chosen_lahze199,x4_next_chosen_lahze199,js1981001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1991001');
[cost_1971001,u_star198,x1_next_chosen_lahze198, x2_next_chosen_lahze198,x3_next_chosen_lahze198,x4_next_chosen_lahze198,js1971001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1981001');
[cost_1961001,u_star197,x1_next_chosen_lahze197, x2_next_chosen_lahze197,x3_next_chosen_lahze197,x4_next_chosen_lahze197,js1961001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1971001');
[cost_1951001,u_star196,x1_next_chosen_lahze196, x2_next_chosen_lahze196,x3_next_chosen_lahze196,x4_next_chosen_lahze196,js1951001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1961001');
[cost_1941001,u_star195,x1_next_chosen_lahze195, x2_next_chosen_lahze195,x3_next_chosen_lahze195,x4_next_chosen_lahze195,js1941001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1951001');
[cost_1931001,u_star194,x1_next_chosen_lahze194, x2_next_chosen_lahze194,x3_next_chosen_lahze194,x4_next_chosen_lahze194,js1931001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1941001');
[cost_1921001,u_star193,x1_next_chosen_lahze193, x2_next_chosen_lahze193,x3_next_chosen_lahze193,x4_next_chosen_lahze193,js1921001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1931001');
[cost_1911001,u_star192,x1_next_chosen_lahze192, x2_next_chosen_lahze192,x3_next_chosen_lahze192,x4_next_chosen_lahze192,js1911001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1921001');
[cost_1901001,u_star191,x1_next_chosen_lahze191, x2_next_chosen_lahze191,x3_next_chosen_lahze191,x4_next_chosen_lahze191,js1901001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1911001');
[cost_1891001,u_star190,x1_next_chosen_lahze190, x2_next_chosen_lahze190,x3_next_chosen_lahze190,x4_next_chosen_lahze190,js1891001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1901001');
[cost_1881001,u_star189,x1_next_chosen_lahze189, x2_next_chosen_lahze189,x3_next_chosen_lahze189,x4_next_chosen_lahze189,js1881001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1891001');
[cost_1871001,u_star188,x1_next_chosen_lahze188, x2_next_chosen_lahze188,x3_next_chosen_lahze188,x4_next_chosen_lahze188,js1871001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1881001');
[cost_1861001,u_star187,x1_next_chosen_lahze187, x2_next_chosen_lahze187,x3_next_chosen_lahze187,x4_next_chosen_lahze187,js1861001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1871001');
[cost_1851001,u_star186,x1_next_chosen_lahze186, x2_next_chosen_lahze186,x3_next_chosen_lahze186,x4_next_chosen_lahze186,js1851001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1861001');
[cost_1841001,u_star185,x1_next_chosen_lahze185, x2_next_chosen_lahze185,x3_next_chosen_lahze185,x4_next_chosen_lahze185,js1841001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1851001');
[cost_1831001,u_star184,x1_next_chosen_lahze184, x2_next_chosen_lahze184,x3_next_chosen_lahze184,x4_next_chosen_lahze184,js1831001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1841001');
[cost_1821001,u_star183,x1_next_chosen_lahze183, x2_next_chosen_lahze183,x3_next_chosen_lahze183,x4_next_chosen_lahze183,js1821001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1831001');
[cost_1811001,u_star182,x1_next_chosen_lahze182, x2_next_chosen_lahze182,x3_next_chosen_lahze182,x4_next_chosen_lahze182,js1811001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1821001');
[cost_1801001,u_star181,x1_next_chosen_lahze181, x2_next_chosen_lahze181,x3_next_chosen_lahze181,x4_next_chosen_lahze181,js1801001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1811001');
[cost_1791001,u_star180,x1_next_chosen_lahze180, x2_next_chosen_lahze180,x3_next_chosen_lahze180,x4_next_chosen_lahze180,js1791001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1801001');
[cost_1781001,u_star179,x1_next_chosen_lahze179, x2_next_chosen_lahze179,x3_next_chosen_lahze179,x4_next_chosen_lahze179,js1781001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1791001');
[cost_1771001,u_star178,x1_next_chosen_lahze178, x2_next_chosen_lahze178,x3_next_chosen_lahze178,x4_next_chosen_lahze178,js1771001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1781001');
[cost_1761001,u_star177,x1_next_chosen_lahze177, x2_next_chosen_lahze177,x3_next_chosen_lahze177,x4_next_chosen_lahze177,js1761001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1771001');
[cost_1751001,u_star176,x1_next_chosen_lahze176, x2_next_chosen_lahze176,x3_next_chosen_lahze176,x4_next_chosen_lahze176,js1751001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1761001');
[cost_1741001,u_star175,x1_next_chosen_lahze175, x2_next_chosen_lahze175,x3_next_chosen_lahze175,x4_next_chosen_lahze175,js1741001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1751001');
[cost_1731001,u_star174,x1_next_chosen_lahze174, x2_next_chosen_lahze174,x3_next_chosen_lahze174,x4_next_chosen_lahze174,js1731001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1741001');
[cost_1721001,u_star173,x1_next_chosen_lahze173, x2_next_chosen_lahze173,x3_next_chosen_lahze173,x4_next_chosen_lahze173,js1721001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1731001');
[cost_1711001,u_star172,x1_next_chosen_lahze172, x2_next_chosen_lahze172,x3_next_chosen_lahze172,x4_next_chosen_lahze172,js1711001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1721001');
[cost_1701001,u_star171,x1_next_chosen_lahze171, x2_next_chosen_lahze171,x3_next_chosen_lahze171,x4_next_chosen_lahze171,js1701001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1711001');
[cost_1691001,u_star170,x1_next_chosen_lahze170, x2_next_chosen_lahze170,x3_next_chosen_lahze170,x4_next_chosen_lahze170,js1691001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1701001');
[cost_1681001,u_star169,x1_next_chosen_lahze169, x2_next_chosen_lahze169,x3_next_chosen_lahze169,x4_next_chosen_lahze169,js1681001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1691001');
[cost_1671001,u_star168,x1_next_chosen_lahze168, x2_next_chosen_lahze168,x3_next_chosen_lahze168,x4_next_chosen_lahze168,js1671001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1681001');
[cost_1661001,u_star167,x1_next_chosen_lahze167, x2_next_chosen_lahze167,x3_next_chosen_lahze167,x4_next_chosen_lahze167,js1661001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1671001');
[cost_1651001,u_star166,x1_next_chosen_lahze166, x2_next_chosen_lahze166,x3_next_chosen_lahze166,x4_next_chosen_lahze166,js1651001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1661001');
[cost_1641001,u_star165,x1_next_chosen_lahze165, x2_next_chosen_lahze165,x3_next_chosen_lahze165,x4_next_chosen_lahze165,js1641001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1651001');
[cost_1631001,u_star164,x1_next_chosen_lahze164, x2_next_chosen_lahze164,x3_next_chosen_lahze164,x4_next_chosen_lahze164,js1631001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1641001');
[cost_1621001,u_star163,x1_next_chosen_lahze163, x2_next_chosen_lahze163,x3_next_chosen_lahze163,x4_next_chosen_lahze163,js1621001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1631001');
[cost_1611001,u_star162,x1_next_chosen_lahze162, x2_next_chosen_lahze162,x3_next_chosen_lahze162,x4_next_chosen_lahze162,js1611001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1621001');
[cost_1601001,u_star161,x1_next_chosen_lahze161, x2_next_chosen_lahze161,x3_next_chosen_lahze161,x4_next_chosen_lahze161,js1601001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1611001');
[cost_1591001,u_star160,x1_next_chosen_lahze160, x2_next_chosen_lahze160,x3_next_chosen_lahze160,x4_next_chosen_lahze160,js1591001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1601001');
[cost_1581001,u_star159,x1_next_chosen_lahze159, x2_next_chosen_lahze159,x3_next_chosen_lahze159,x4_next_chosen_lahze159,js1581001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1591001');
[cost_1571001,u_star158,x1_next_chosen_lahze158, x2_next_chosen_lahze158,x3_next_chosen_lahze158,x4_next_chosen_lahze158,js1571001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1581001');
[cost_1561001,u_star157,x1_next_chosen_lahze157, x2_next_chosen_lahze157,x3_next_chosen_lahze157,x4_next_chosen_lahze157,js1561001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1571001');
[cost_1551001,u_star156,x1_next_chosen_lahze156, x2_next_chosen_lahze156,x3_next_chosen_lahze156,x4_next_chosen_lahze156,js1551001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1561001');
[cost_1541001,u_star155,x1_next_chosen_lahze155, x2_next_chosen_lahze155,x3_next_chosen_lahze155,x4_next_chosen_lahze155,js1541001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1551001');
[cost_1531001,u_star154,x1_next_chosen_lahze154, x2_next_chosen_lahze154,x3_next_chosen_lahze154,x4_next_chosen_lahze154,js1531001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1541001');
[cost_1521001,u_star153,x1_next_chosen_lahze153, x2_next_chosen_lahze153,x3_next_chosen_lahze153,x4_next_chosen_lahze153,js1521001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1531001');
[cost_1511001,u_star152,x1_next_chosen_lahze152, x2_next_chosen_lahze152,x3_next_chosen_lahze152,x4_next_chosen_lahze152,js1511001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1521001');
[cost_1501001,u_star151,x1_next_chosen_lahze151, x2_next_chosen_lahze151,x3_next_chosen_lahze151,x4_next_chosen_lahze151,js1501001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1511001');
[cost_1491001,u_star150,x1_next_chosen_lahze150, x2_next_chosen_lahze150,x3_next_chosen_lahze150,x4_next_chosen_lahze150,js1491001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1501001');
[cost_1481001,u_star149,x1_next_chosen_lahze149, x2_next_chosen_lahze149,x3_next_chosen_lahze149,x4_next_chosen_lahze149,js1481001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1491001');
[cost_1471001,u_star148,x1_next_chosen_lahze148, x2_next_chosen_lahze148,x3_next_chosen_lahze148,x4_next_chosen_lahze148,js1471001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1481001');
[cost_1461001,u_star147,x1_next_chosen_lahze147, x2_next_chosen_lahze147,x3_next_chosen_lahze147,x4_next_chosen_lahze147,js1461001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1471001');
[cost_1451001,u_star146,x1_next_chosen_lahze146, x2_next_chosen_lahze146,x3_next_chosen_lahze146,x4_next_chosen_lahze146,js1451001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1461001');
[cost_1441001,u_star145,x1_next_chosen_lahze145, x2_next_chosen_lahze145,x3_next_chosen_lahze145,x4_next_chosen_lahze145,js1441001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1451001');
[cost_1431001,u_star144,x1_next_chosen_lahze144, x2_next_chosen_lahze144,x3_next_chosen_lahze144,x4_next_chosen_lahze144,js1431001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1441001');
[cost_1421001,u_star143,x1_next_chosen_lahze143, x2_next_chosen_lahze143,x3_next_chosen_lahze143,x4_next_chosen_lahze143,js1421001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1431001');
[cost_1411001,u_star142,x1_next_chosen_lahze142, x2_next_chosen_lahze142,x3_next_chosen_lahze142,x4_next_chosen_lahze142,js1411001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1421001');
[cost_1401001,u_star141,x1_next_chosen_lahze141, x2_next_chosen_lahze141,x3_next_chosen_lahze141,x4_next_chosen_lahze141,js1401001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1411001');
[cost_1391001,u_star140,x1_next_chosen_lahze140, x2_next_chosen_lahze140,x3_next_chosen_lahze140,x4_next_chosen_lahze140,js1391001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1401001');
[cost_1381001,u_star139,x1_next_chosen_lahze139, x2_next_chosen_lahze139,x3_next_chosen_lahze139,x4_next_chosen_lahze139,js1381001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1391001');
[cost_1371001,u_star138,x1_next_chosen_lahze138, x2_next_chosen_lahze138,x3_next_chosen_lahze138,x4_next_chosen_lahze138,js1371001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1381001');
[cost_1361001,u_star137,x1_next_chosen_lahze137, x2_next_chosen_lahze137,x3_next_chosen_lahze137,x4_next_chosen_lahze137,js1361001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1371001');
[cost_1351001,u_star136,x1_next_chosen_lahze136, x2_next_chosen_lahze136,x3_next_chosen_lahze136,x4_next_chosen_lahze136,js1351001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1361001');
[cost_1341001,u_star135,x1_next_chosen_lahze135, x2_next_chosen_lahze135,x3_next_chosen_lahze135,x4_next_chosen_lahze135,js1341001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1351001');
[cost_1331001,u_star134,x1_next_chosen_lahze134, x2_next_chosen_lahze134,x3_next_chosen_lahze134,x4_next_chosen_lahze134,js1331001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1341001');
[cost_1321001,u_star133,x1_next_chosen_lahze133, x2_next_chosen_lahze133,x3_next_chosen_lahze133,x4_next_chosen_lahze133,js1321001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1331001');
[cost_1311001,u_star132,x1_next_chosen_lahze132, x2_next_chosen_lahze132,x3_next_chosen_lahze132,x4_next_chosen_lahze132,js1311001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1321001');
[cost_1301001,u_star131,x1_next_chosen_lahze131, x2_next_chosen_lahze131,x3_next_chosen_lahze131,x4_next_chosen_lahze131,js1301001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1311001');
[cost_1291001,u_star130,x1_next_chosen_lahze130, x2_next_chosen_lahze130,x3_next_chosen_lahze130,x4_next_chosen_lahze130,js1291001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1301001');
[cost_1281001,u_star129,x1_next_chosen_lahze129, x2_next_chosen_lahze129,x3_next_chosen_lahze129,x4_next_chosen_lahze129,js1281001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1291001');
[cost_1271001,u_star128,x1_next_chosen_lahze128, x2_next_chosen_lahze128,x3_next_chosen_lahze128,x4_next_chosen_lahze128,js1271001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1281001');
[cost_1261001,u_star127,x1_next_chosen_lahze127, x2_next_chosen_lahze127,x3_next_chosen_lahze127,x4_next_chosen_lahze127,js1261001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1271001');
[cost_1251001,u_star126,x1_next_chosen_lahze126, x2_next_chosen_lahze126,x3_next_chosen_lahze126,x4_next_chosen_lahze126,js1251001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1261001');
[cost_1241001,u_star125,x1_next_chosen_lahze125, x2_next_chosen_lahze125,x3_next_chosen_lahze125,x4_next_chosen_lahze125,js1241001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1251001');
[cost_1231001,u_star124,x1_next_chosen_lahze124, x2_next_chosen_lahze124,x3_next_chosen_lahze124,x4_next_chosen_lahze124,js1231001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1241001');
[cost_1221001,u_star123,x1_next_chosen_lahze123, x2_next_chosen_lahze123,x3_next_chosen_lahze123,x4_next_chosen_lahze123,js1221001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1231001');
[cost_1211001,u_star122,x1_next_chosen_lahze122, x2_next_chosen_lahze122,x3_next_chosen_lahze122,x4_next_chosen_lahze122,js1211001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1221001');
[cost_1201001,u_star121,x1_next_chosen_lahze121, x2_next_chosen_lahze121,x3_next_chosen_lahze121,x4_next_chosen_lahze121,js1201001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1211001');
[cost_1191001,u_star120,x1_next_chosen_lahze120, x2_next_chosen_lahze120,x3_next_chosen_lahze120,x4_next_chosen_lahze120,js1191001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1201001');
[cost_1181001,u_star119,x1_next_chosen_lahze119, x2_next_chosen_lahze119,x3_next_chosen_lahze119,x4_next_chosen_lahze119,js1181001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1191001');
[cost_1171001,u_star118,x1_next_chosen_lahze118, x2_next_chosen_lahze118,x3_next_chosen_lahze118,x4_next_chosen_lahze118,js1171001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1181001');
[cost_1161001,u_star117,x1_next_chosen_lahze117, x2_next_chosen_lahze117,x3_next_chosen_lahze117,x4_next_chosen_lahze117,js1161001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1171001');
[cost_1151001,u_star116,x1_next_chosen_lahze116, x2_next_chosen_lahze116,x3_next_chosen_lahze116,x4_next_chosen_lahze116,js1151001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1161001');
[cost_1141001,u_star115,x1_next_chosen_lahze115, x2_next_chosen_lahze115,x3_next_chosen_lahze115,x4_next_chosen_lahze115,js1141001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1151001');
[cost_1131001,u_star114,x1_next_chosen_lahze114, x2_next_chosen_lahze114,x3_next_chosen_lahze114,x4_next_chosen_lahze114,js1131001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1141001');
[cost_1121001,u_star113,x1_next_chosen_lahze113, x2_next_chosen_lahze113,x3_next_chosen_lahze113,x4_next_chosen_lahze113,js1121001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1131001');
[cost_1111001,u_star112,x1_next_chosen_lahze112, x2_next_chosen_lahze112,x3_next_chosen_lahze112,x4_next_chosen_lahze112,js1111001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1121001');
[cost_1101001,u_star111,x1_next_chosen_lahze111, x2_next_chosen_lahze111,x3_next_chosen_lahze111,x4_next_chosen_lahze111,js1101001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1111001');
[cost_1091001,u_star110,x1_next_chosen_lahze110, x2_next_chosen_lahze110,x3_next_chosen_lahze110,x4_next_chosen_lahze110,js1091001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1101001');
[cost_1081001,u_star109,x1_next_chosen_lahze109, x2_next_chosen_lahze109,x3_next_chosen_lahze109,x4_next_chosen_lahze109,js1081001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1091001');
[cost_1071001,u_star108,x1_next_chosen_lahze108, x2_next_chosen_lahze108,x3_next_chosen_lahze108,x4_next_chosen_lahze108,js1071001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1081001');
[cost_1061001,u_star107,x1_next_chosen_lahze107, x2_next_chosen_lahze107,x3_next_chosen_lahze107,x4_next_chosen_lahze107,js1061001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1071001');
[cost_1051001,u_star106,x1_next_chosen_lahze106, x2_next_chosen_lahze106,x3_next_chosen_lahze106,x4_next_chosen_lahze106,js1051001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1061001');
[cost_1041001,u_star105,x1_next_chosen_lahze105, x2_next_chosen_lahze105,x3_next_chosen_lahze105,x4_next_chosen_lahze105,js1041001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1051001');
[cost_1031001,u_star104,x1_next_chosen_lahze104, x2_next_chosen_lahze104,x3_next_chosen_lahze104,x4_next_chosen_lahze104,js1031001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1041001');
[cost_1021001,u_star103,x1_next_chosen_lahze103, x2_next_chosen_lahze103,x3_next_chosen_lahze103,x4_next_chosen_lahze103,js1021001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1031001');
[cost_1011001,u_star102,x1_next_chosen_lahze102, x2_next_chosen_lahze102,x3_next_chosen_lahze102,x4_next_chosen_lahze102,js1011001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1021001');
[cost_1001001,u_star101,x1_next_chosen_lahze101, x2_next_chosen_lahze101,x3_next_chosen_lahze101,x4_next_chosen_lahze101,js1001001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1011001');
[cost_991001,u_star100,x1_next_chosen_lahze100, x2_next_chosen_lahze100,x3_next_chosen_lahze100,x4_next_chosen_lahze100,js991001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js1001001');
[cost_981001,u_star99,x1_next_chosen_lahze99, x2_next_chosen_lahze99,x3_next_chosen_lahze99,x4_next_chosen_lahze99,js981001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js991001');
[cost_971001,u_star98,x1_next_chosen_lahze98, x2_next_chosen_lahze98,x3_next_chosen_lahze98,x4_next_chosen_lahze98,js971001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js981001');
[cost_961001,u_star97,x1_next_chosen_lahze97, x2_next_chosen_lahze97,x3_next_chosen_lahze97,x4_next_chosen_lahze97,js961001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js971001');
[cost_951001,u_star96,x1_next_chosen_lahze96, x2_next_chosen_lahze96,x3_next_chosen_lahze96,x4_next_chosen_lahze96,js951001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js961001');
[cost_941001,u_star95,x1_next_chosen_lahze95, x2_next_chosen_lahze95,x3_next_chosen_lahze95,x4_next_chosen_lahze95,js941001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js951001');
[cost_931001,u_star94,x1_next_chosen_lahze94, x2_next_chosen_lahze94,x3_next_chosen_lahze94,x4_next_chosen_lahze94,js931001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js941001');
[cost_921001,u_star93,x1_next_chosen_lahze93, x2_next_chosen_lahze93,x3_next_chosen_lahze93,x4_next_chosen_lahze93,js921001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js931001');
[cost_911001,u_star92,x1_next_chosen_lahze92, x2_next_chosen_lahze92,x3_next_chosen_lahze92,x4_next_chosen_lahze92,js911001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js921001');
[cost_901001,u_star91,x1_next_chosen_lahze91, x2_next_chosen_lahze91,x3_next_chosen_lahze91,x4_next_chosen_lahze91,js901001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js911001');
[cost_891001,u_star90,x1_next_chosen_lahze90, x2_next_chosen_lahze90,x3_next_chosen_lahze90,x4_next_chosen_lahze90,js891001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js901001');
[cost_881001,u_star89,x1_next_chosen_lahze89, x2_next_chosen_lahze89,x3_next_chosen_lahze89,x4_next_chosen_lahze89,js881001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js891001');
[cost_871001,u_star88,x1_next_chosen_lahze88, x2_next_chosen_lahze88,x3_next_chosen_lahze88,x4_next_chosen_lahze88,js871001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js881001');
[cost_861001,u_star87,x1_next_chosen_lahze87, x2_next_chosen_lahze87,x3_next_chosen_lahze87,x4_next_chosen_lahze87,js861001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js871001');
[cost_851001,u_star86,x1_next_chosen_lahze86, x2_next_chosen_lahze86,x3_next_chosen_lahze86,x4_next_chosen_lahze86,js851001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js861001');
[cost_841001,u_star85,x1_next_chosen_lahze85, x2_next_chosen_lahze85,x3_next_chosen_lahze85,x4_next_chosen_lahze85,js841001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js851001');
[cost_831001,u_star84,x1_next_chosen_lahze84, x2_next_chosen_lahze84,x3_next_chosen_lahze84,x4_next_chosen_lahze84,js831001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js841001');
[cost_821001,u_star83,x1_next_chosen_lahze83, x2_next_chosen_lahze83,x3_next_chosen_lahze83,x4_next_chosen_lahze83,js821001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js831001');
[cost_811001,u_star82,x1_next_chosen_lahze82, x2_next_chosen_lahze82,x3_next_chosen_lahze82,x4_next_chosen_lahze82,js811001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js821001');
[cost_801001,u_star81,x1_next_chosen_lahze81, x2_next_chosen_lahze81,x3_next_chosen_lahze81,x4_next_chosen_lahze81,js801001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js811001');
[cost_791001,u_star80,x1_next_chosen_lahze80, x2_next_chosen_lahze80,x3_next_chosen_lahze80,x4_next_chosen_lahze80,js791001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js801001');
[cost_781001,u_star79,x1_next_chosen_lahze79, x2_next_chosen_lahze79,x3_next_chosen_lahze79,x4_next_chosen_lahze79,js781001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js791001');
[cost_771001,u_star78,x1_next_chosen_lahze78, x2_next_chosen_lahze78,x3_next_chosen_lahze78,x4_next_chosen_lahze78,js771001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js781001');
[cost_761001,u_star77,x1_next_chosen_lahze77, x2_next_chosen_lahze77,x3_next_chosen_lahze77,x4_next_chosen_lahze77,js761001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js771001');
[cost_751001,u_star76,x1_next_chosen_lahze76, x2_next_chosen_lahze76,x3_next_chosen_lahze76,x4_next_chosen_lahze76,js751001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js761001');
[cost_741001,u_star75,x1_next_chosen_lahze75, x2_next_chosen_lahze75,x3_next_chosen_lahze75,x4_next_chosen_lahze75,js741001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js751001');
[cost_731001,u_star74,x1_next_chosen_lahze74, x2_next_chosen_lahze74,x3_next_chosen_lahze74,x4_next_chosen_lahze74,js731001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js741001');
[cost_721001,u_star73,x1_next_chosen_lahze73, x2_next_chosen_lahze73,x3_next_chosen_lahze73,x4_next_chosen_lahze73,js721001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js731001');
[cost_711001,u_star72,x1_next_chosen_lahze72, x2_next_chosen_lahze72,x3_next_chosen_lahze72,x4_next_chosen_lahze72,js711001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js721001');
[cost_701001,u_star71,x1_next_chosen_lahze71, x2_next_chosen_lahze71,x3_next_chosen_lahze71,x4_next_chosen_lahze71,js701001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js711001');
[cost_691001,u_star70,x1_next_chosen_lahze70, x2_next_chosen_lahze70,x3_next_chosen_lahze70,x4_next_chosen_lahze70,js691001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js701001');
[cost_681001,u_star69,x1_next_chosen_lahze69, x2_next_chosen_lahze69,x3_next_chosen_lahze69,x4_next_chosen_lahze69,js681001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js691001');
[cost_671001,u_star68,x1_next_chosen_lahze68, x2_next_chosen_lahze68,x3_next_chosen_lahze68,x4_next_chosen_lahze68,js671001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js681001');
[cost_661001,u_star67,x1_next_chosen_lahze67, x2_next_chosen_lahze67,x3_next_chosen_lahze67,x4_next_chosen_lahze67,js661001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js671001');
[cost_651001,u_star66,x1_next_chosen_lahze66, x2_next_chosen_lahze66,x3_next_chosen_lahze66,x4_next_chosen_lahze66,js651001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js661001');
[cost_641001,u_star65,x1_next_chosen_lahze65, x2_next_chosen_lahze65,x3_next_chosen_lahze65,x4_next_chosen_lahze65,js641001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js651001');
[cost_631001,u_star64,x1_next_chosen_lahze64, x2_next_chosen_lahze64,x3_next_chosen_lahze64,x4_next_chosen_lahze64,js631001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js641001');
[cost_621001,u_star63,x1_next_chosen_lahze63, x2_next_chosen_lahze63,x3_next_chosen_lahze63,x4_next_chosen_lahze63,js621001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js631001');
[cost_611001,u_star62,x1_next_chosen_lahze62, x2_next_chosen_lahze62,x3_next_chosen_lahze62,x4_next_chosen_lahze62,js611001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js621001');
[cost_601001,u_star61,x1_next_chosen_lahze61, x2_next_chosen_lahze61,x3_next_chosen_lahze61,x4_next_chosen_lahze61,js601001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js611001');
[cost_591001,u_star60,x1_next_chosen_lahze60, x2_next_chosen_lahze60,x3_next_chosen_lahze60,x4_next_chosen_lahze60,js591001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js601001');
[cost_581001,u_star59,x1_next_chosen_lahze59, x2_next_chosen_lahze59,x3_next_chosen_lahze59,x4_next_chosen_lahze59,js581001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js591001');
[cost_571001,u_star58,x1_next_chosen_lahze58, x2_next_chosen_lahze58,x3_next_chosen_lahze58,x4_next_chosen_lahze58,js571001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js581001');
[cost_561001,u_star57,x1_next_chosen_lahze57, x2_next_chosen_lahze57,x3_next_chosen_lahze57,x4_next_chosen_lahze57,js561001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js571001');
[cost_551001,u_star56,x1_next_chosen_lahze56, x2_next_chosen_lahze56,x3_next_chosen_lahze56,x4_next_chosen_lahze56,js551001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js561001');
[cost_541001,u_star55,x1_next_chosen_lahze55, x2_next_chosen_lahze55,x3_next_chosen_lahze55,x4_next_chosen_lahze55,js541001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js551001');
[cost_531001,u_star54,x1_next_chosen_lahze54, x2_next_chosen_lahze54,x3_next_chosen_lahze54,x4_next_chosen_lahze54,js531001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js541001');
[cost_521001,u_star53,x1_next_chosen_lahze53, x2_next_chosen_lahze53,x3_next_chosen_lahze53,x4_next_chosen_lahze53,js521001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js531001');
[cost_511001,u_star52,x1_next_chosen_lahze52, x2_next_chosen_lahze52,x3_next_chosen_lahze52,x4_next_chosen_lahze52,js511001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js521001');
[cost_501001,u_star51,x1_next_chosen_lahze51, x2_next_chosen_lahze51,x3_next_chosen_lahze51,x4_next_chosen_lahze51,js501001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js511001');
[cost_491001,u_star50,x1_next_chosen_lahze50, x2_next_chosen_lahze50,x3_next_chosen_lahze50,x4_next_chosen_lahze50,js491001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js501001');
[cost_481001,u_star49,x1_next_chosen_lahze49, x2_next_chosen_lahze49,x3_next_chosen_lahze49,x4_next_chosen_lahze49,js481001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js491001');
[cost_471001,u_star48,x1_next_chosen_lahze48, x2_next_chosen_lahze48,x3_next_chosen_lahze48,x4_next_chosen_lahze48,js471001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js481001');
[cost_461001,u_star47,x1_next_chosen_lahze47, x2_next_chosen_lahze47,x3_next_chosen_lahze47,x4_next_chosen_lahze47,js461001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js471001');
[cost_451001,u_star46,x1_next_chosen_lahze46, x2_next_chosen_lahze46,x3_next_chosen_lahze46,x4_next_chosen_lahze46,js451001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js461001');
[cost_441001,u_star45,x1_next_chosen_lahze45, x2_next_chosen_lahze45,x3_next_chosen_lahze45,x4_next_chosen_lahze45,js441001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js451001');
[cost_431001,u_star44,x1_next_chosen_lahze44, x2_next_chosen_lahze44,x3_next_chosen_lahze44,x4_next_chosen_lahze44,js431001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js441001');
[cost_421001,u_star43,x1_next_chosen_lahze43, x2_next_chosen_lahze43,x3_next_chosen_lahze43,x4_next_chosen_lahze43,js421001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js431001');
[cost_411001,u_star42,x1_next_chosen_lahze42, x2_next_chosen_lahze42,x3_next_chosen_lahze42,x4_next_chosen_lahze42,js411001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js421001');
[cost_401001,u_star41,x1_next_chosen_lahze41, x2_next_chosen_lahze41,x3_next_chosen_lahze41,x4_next_chosen_lahze41,js401001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js411001');
[cost_391001,u_star40,x1_next_chosen_lahze40, x2_next_chosen_lahze40,x3_next_chosen_lahze40,x4_next_chosen_lahze40,js391001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js401001');
[cost_381001,u_star39,x1_next_chosen_lahze39, x2_next_chosen_lahze39,x3_next_chosen_lahze39,x4_next_chosen_lahze39,js381001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js391001');
[cost_371001,u_star38,x1_next_chosen_lahze38, x2_next_chosen_lahze38,x3_next_chosen_lahze38,x4_next_chosen_lahze38,js371001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js381001');
[cost_361001,u_star37,x1_next_chosen_lahze37, x2_next_chosen_lahze37,x3_next_chosen_lahze37,x4_next_chosen_lahze37,js361001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js371001');
[cost_351001,u_star36,x1_next_chosen_lahze36, x2_next_chosen_lahze36,x3_next_chosen_lahze36,x4_next_chosen_lahze36,js351001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js361001');
[cost_341001,u_star35,x1_next_chosen_lahze35, x2_next_chosen_lahze35,x3_next_chosen_lahze35,x4_next_chosen_lahze35,js341001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js351001');
[cost_331001,u_star34,x1_next_chosen_lahze34, x2_next_chosen_lahze34,x3_next_chosen_lahze34,x4_next_chosen_lahze34,js331001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js341001');
[cost_321001,u_star33,x1_next_chosen_lahze33, x2_next_chosen_lahze33,x3_next_chosen_lahze33,x4_next_chosen_lahze33,js321001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js331001');
[cost_311001,u_star32,x1_next_chosen_lahze32, x2_next_chosen_lahze32,x3_next_chosen_lahze32,x4_next_chosen_lahze32,js311001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js321001');
[cost_301001,u_star31,x1_next_chosen_lahze31, x2_next_chosen_lahze31,x3_next_chosen_lahze31,x4_next_chosen_lahze31,js301001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js311001');
[cost_291001,u_star30,x1_next_chosen_lahze30, x2_next_chosen_lahze30,x3_next_chosen_lahze30,x4_next_chosen_lahze30,js291001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js301001');
[cost_281001,u_star29,x1_next_chosen_lahze29, x2_next_chosen_lahze29,x3_next_chosen_lahze29,x4_next_chosen_lahze29,js281001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js291001');
[cost_271001,u_star28,x1_next_chosen_lahze28, x2_next_chosen_lahze28,x3_next_chosen_lahze28,x4_next_chosen_lahze28,js271001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js281001');
[cost_261001,u_star27,x1_next_chosen_lahze27, x2_next_chosen_lahze27,x3_next_chosen_lahze27,x4_next_chosen_lahze27,js261001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js271001');
[cost_251001,u_star26,x1_next_chosen_lahze26, x2_next_chosen_lahze26,x3_next_chosen_lahze26,x4_next_chosen_lahze26,js251001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js261001');
[cost_241001,u_star25,x1_next_chosen_lahze25, x2_next_chosen_lahze25,x3_next_chosen_lahze25,x4_next_chosen_lahze25,js241001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js251001');
[cost_231001,u_star24,x1_next_chosen_lahze24, x2_next_chosen_lahze24,x3_next_chosen_lahze24,x4_next_chosen_lahze24,js231001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js241001');
[cost_221001,u_star23,x1_next_chosen_lahze23, x2_next_chosen_lahze23,x3_next_chosen_lahze23,x4_next_chosen_lahze23,js221001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js231001');
[cost_211001,u_star22,x1_next_chosen_lahze22, x2_next_chosen_lahze22,x3_next_chosen_lahze22,x4_next_chosen_lahze22,js211001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js221001');
[cost_201001,u_star21,x1_next_chosen_lahze21, x2_next_chosen_lahze21,x3_next_chosen_lahze21,x4_next_chosen_lahze21,js201001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js211001');
[cost_191001,u_star20,x1_next_chosen_lahze20, x2_next_chosen_lahze20,x3_next_chosen_lahze20,x4_next_chosen_lahze20,js191001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js201001');
[cost_181001,u_star19,x1_next_chosen_lahze19, x2_next_chosen_lahze19,x3_next_chosen_lahze19,x4_next_chosen_lahze19,js181001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js191001');
[cost_171001,u_star18,x1_next_chosen_lahze18, x2_next_chosen_lahze18,x3_next_chosen_lahze18,x4_next_chosen_lahze18,js171001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js181001');
[cost_161001,u_star17,x1_next_chosen_lahze17, x2_next_chosen_lahze17,x3_next_chosen_lahze17,x4_next_chosen_lahze17,js161001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js171001');
[cost_151001,u_star16,x1_next_chosen_lahze16, x2_next_chosen_lahze16,x3_next_chosen_lahze16,x4_next_chosen_lahze16,js151001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js161001');
[cost_141001,u_star15,x1_next_chosen_lahze15, x2_next_chosen_lahze15,x3_next_chosen_lahze15,x4_next_chosen_lahze15,js141001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js151001');
[cost_131001,u_star14,x1_next_chosen_lahze14, x2_next_chosen_lahze14,x3_next_chosen_lahze14,x4_next_chosen_lahze14,js131001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js141001');
[cost_121001,u_star13,x1_next_chosen_lahze13, x2_next_chosen_lahze13,x3_next_chosen_lahze13,x4_next_chosen_lahze13,js121001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js131001');
[cost_111001,u_star12,x1_next_chosen_lahze12, x2_next_chosen_lahze12,x3_next_chosen_lahze12,x4_next_chosen_lahze12,js111001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js121001');
[cost_101001,u_star11,x1_next_chosen_lahze11, x2_next_chosen_lahze11,x3_next_chosen_lahze11,x4_next_chosen_lahze11,js101001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js111001');
[cost_91001,u_star10,x1_next_chosen_lahze10, x2_next_chosen_lahze10,x3_next_chosen_lahze10,x4_next_chosen_lahze10,js91001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js101001');
[cost_81001,u_star9,x1_next_chosen_lahze9, x2_next_chosen_lahze9,x3_next_chosen_lahze9,x4_next_chosen_lahze9,js81001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js91001');
[cost_71001,u_star8,x1_next_chosen_lahze8, x2_next_chosen_lahze8,x3_next_chosen_lahze8,x4_next_chosen_lahze8,js71001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js81001');
[cost_61001,u_star7,x1_next_chosen_lahze7, x2_next_chosen_lahze7,x3_next_chosen_lahze7,x4_next_chosen_lahze7,js61001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js71001');
[cost_51001,u_star6,x1_next_chosen_lahze6, x2_next_chosen_lahze6,x3_next_chosen_lahze6,x4_next_chosen_lahze6,js51001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js61001');
[cost_41001,u_star5,x1_next_chosen_lahze5, x2_next_chosen_lahze5,x3_next_chosen_lahze5,x4_next_chosen_lahze5,js41001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js51001');
[cost_31001,u_star4,x1_next_chosen_lahze4, x2_next_chosen_lahze4,x3_next_chosen_lahze4,x4_next_chosen_lahze4,js31001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js41001');
[cost_21001,u_star3,x1_next_chosen_lahze3, x2_next_chosen_lahze3,x3_next_chosen_lahze3,x4_next_chosen_lahze3,js21001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js31001');
[cost_11001,u_star2,x1_next_chosen_lahze2, x2_next_chosen_lahze2,x3_next_chosen_lahze2,x4_next_chosen_lahze2,js11001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js21001');
[cost_01001,u_star1,x1_next_chosen_lahze1, x2_next_chosen_lahze1,x3_next_chosen_lahze1,x4_next_chosen_lahze1,js01001]=function2(A, r0, r_dot0, alfa0, alfa_dot0, dr, du, xk,js11001');





%        [cost_35,u_star4,x1_next_chosen_lahze4,x2_next_chosen_lahze4,x3_next_chosen_lahze4,x4_next_chosen_lahze4,js35]=function2(A,r0,r_dot0,alfa0,alfa_dot0,dr,du,xk, js45');
% 
% 
%        [cost_25,u_star3,x1_next_chosen_lahze3,x2_next_chosen_lahze3,x3_next_chosen_lahze3,x4_next_chosen_lahze3,js25]=function2(A,r,r_dot,alfa,alfa_dot,dr,du,xk, js35');
% 
%         
%        [cost_15,u_star2,x1_next_chosen_lahze2,x2_next_chosen_lahze2,x3_next_chosen_lahze2,x4_next_chosen_lahze2,js15]=function2(A,r,r_dot,alfa,alfa_dot,dr,du,xk,js25');
%     
%        
%        [cost_05,u_star1,x1_next_chosen_lahze1,x2_next_chosen_lahze1,x3_next_chosen_lahze1,x4_next_chosen_lahze1,js05]=function2(A,r,r_dot,alfa,alfa_dot,dr,du,xk,js15');

       
       
       [h11,f11]=find(r0==xk(:,1) & r_dot0==xk(:,2) & alfa0==xk(:,3) & alfa_dot0==xk(:,4));
               if isempty(h11) 
       [h11,f11]= find(r0<=xk(:,1) & r_dot0<=xk(:,2) & alfa0<=xk(:,3) & alfa_dot0<=xk(:,4));
%                               
                                 f_after = max(h11);
                                 [h22,f22]=find(r0>=xk(:,1) & r_dot0>=xk(:,2) & alfa0>=xk(:,3) & alfa_dot0>=xk(:,4));
%                              
                                f_before = min(h22);
%                                 if isinf(js05(f_before)) && isinf(js05(f_after)) 
%                                    Js_E_karbar = inf;
%                                 elseif  isinf(js05(f_before))==1 && isinf(js05(f_after)) ~=1
%                                  Js_E=js05(f_after) ;  
%                                 elseif  isinf(js05(f_before))~=1 && isinf(js05(f_after)) ==1
%                                  Js_E_karbar=js05(f_before) ;  
%                                 else
%                                     if x1_next_chosen_lahze1(1,f_after)~= xk(f_before,1)
%                                         Js_E_karbar=js05(f_before)+((( x1_next_chosen_lahze1(1,f_after)-xk(f_before,1) )/dr))*(js05(f_after)-js05(f_before));
%                                     elseif x2_next_chosen_lahzei(1,f_after)~= xk(f_before,2)
%                                         Js_E_karbar=js05(f_before)+((( x2_next_chosen_lahze1(1,f_after)-xk(f_before,2) )/dr))*(js05(f_after)-js05(f_before));
%                                     elseif x3_next_chosen_lahzei(j,i)~= xk(f_before,3)
%                                         Js_E_karbar=js05(f_before)+((( x3_next_chosen_lahze1(1,f_after)-xk(f_before,3) )/dr))*(js05(f_after)-js05(f_before));
%                                     else 
%                                         Js_E_karbar=js05(f_before)+((( x4_next_chosen_lahze1(1,f_after)-xk(f_before,4) )/dr))*(js05(f_after)-js05(f_before));
%                                     end
%                                 end

                                 for GG=f_before:f_after
                                     GG_nna = GG;
                                     if not(isnan(u_star1001(GG)))
                                            x1_lahze1 = r_dot0*dr + r0;
                                            x2_lahze1 = A*alfa0*dr+r_dot0;
                                            x3_lahze1 = alfa_dot0*dr+alfa0;
                                            x4_lahze1 = (u_star1(GG))*dr+alfa_dot0;
                                         show = GG
                                         break;
                                     end
                                 end
                                 if isnan(u_star1(GG_nna))
                                     u_p=0.5;
                                             x1_lahze1 = r_dot0*dr + r0;
                                            x2_lahze1 = A*alfa0*dr+r_dot0;
                                            x3_lahze1 = alfa_dot0*dr+alfa0;
                                            x4_lahze1 = (u_p)*dr+alfa_dot0;
                                 end
               else
                   
                  x1_lahze1 = x1_next_chosen_lahze1(1,h11);
                  x2_lahze1 = x2_next_chosen_lahze1(1,h11);
                  x3_lahze1 = x3_next_chosen_lahze1(1,h11);
                  x4_lahze1 = x4_next_chosen_lahze1(1,h11);
                  Js_E_karbar=js05(1,f_before);
               end
%        [h11,f11]=find(x1_lahze1==xk(:,1) & x2_lahze1==xk(:,2) &  x3_lahze1==xk(:,3) & x4_lahze1==xk(:,4));
%         if isempty(h11) 
%        [h11,f11]= find(x1_lahze1<=xk(:,1) & x2_lahze1<=xk(:,2) & x3_lahze1<=xk(:,3) & x4_lahze1<=xk(:,4));
%                                for pp=length(h11):-1:1  
%                                 f_after=h11(pp);
%                                 if isinf(js15(f_after))
%                                     continue;
%                                 else 
%                                     break;
%                                 end
%                                end
%        [h22,f22]=find(x1_lahze1>=xk(:,1) & x2_lahze1>=xk(:,2) & x3_lahze1>=xk(:,3) & x4_lahze1>=xk(:,4));
%                                 for pp=1:length(h22)    
%                                 f_before=h22(pp);
%                                 if isinf(js15(f_before))
%                                     continue;
%                                 else 
%                                     break;
%                                 end
%                                 
%                                 end
%        
%                                 x1_lahze2 = x1_next_chosen_lahze2(1,f_before);
%                                 x2_lahze2 = x2_next_chosen_lahze2(1,f_before);
%                                 x3_lahze2 = x3_next_chosen_lahze2(1,f_before);
%                                 x4_lahze2 = x4_next_chosen_lahze2(1,f_before);
%                                 
%         end         
        
        
        
%         [x1_lahze2, x2_lahze2, x3_lahze2, x4_lahze2] = function4(xk,dr,A, x1_lahze1,x2_lahze1,x3_lahze1,x4_lahze1,x1_next_chosen_lahze2,x2_next_chosen_lahze2,x3_next_chosen_lahze2,x4_next_chosen_lahze2,u_star2,js25);
%         [x1_lahze3, x2_lahze3, x3_lahze3, x4_lahze3] = function4(xk,dr,A, x1_lahze2,x2_lahze2,x3_lahze2,x4_lahze2,x1_next_chosen_lahze3,x2_next_chosen_lahze3,x3_next_chosen_lahze3,x4_next_chosen_lahze3,u_star3,js25);
%         [x1_lahze4, x2_lahze4, x3_lahze4, x4_lahze4] = function4(xk,dr,A, x1_lahze3,x2_lahze3,x3_lahze3,x4_lahze3,x1_next_chosen_lahze4,x2_next_chosen_lahze4,x3_next_chosen_lahze4,x4_next_chosen_lahze4,u_star4,js35); 
%         [x1_lahze5, x2_lahze5, x3_lahze5, x4_lahze5] = function4(xk,dr,A, x1_lahze4,x2_lahze4,x3_lahze4,x4_lahze4,x1_next_chosen_lahze5,x2_next_chosen_lahze5,x3_next_chosen_lahze5,x4_next_chosen_lahze5,u_star5,js45);
%         
%%%chaaape akhar

[x1_lahze2,x2_lahze2,x3_lahze2,x4_lahze2]= function4(xk, dr, A, x1_lahze1,x2_lahze1,x3_lahze1 ,x4_lahze1,x1_next_chosen_lahze2,x2_next_chosen_lahze2,x3_next_chosen_lahze2,x4_next_chosen_lahze2,u_star2,js21001);
[x1_lahze3,x2_lahze3,x3_lahze3,x4_lahze3]= function4(xk, dr, A, x1_lahze2,x2_lahze2,x3_lahze2 ,x4_lahze2,x1_next_chosen_lahze3,x2_next_chosen_lahze3,x3_next_chosen_lahze3,x4_next_chosen_lahze3,u_star3,js31001);
[x1_lahze4,x2_lahze4,x3_lahze4,x4_lahze4]= function4(xk, dr, A, x1_lahze3,x2_lahze3,x3_lahze3 ,x4_lahze3,x1_next_chosen_lahze4,x2_next_chosen_lahze4,x3_next_chosen_lahze4,x4_next_chosen_lahze4,u_star4,js41001);
[x1_lahze5,x2_lahze5,x3_lahze5,x4_lahze5]= function4(xk, dr, A, x1_lahze4,x2_lahze4,x3_lahze4 ,x4_lahze4,x1_next_chosen_lahze5,x2_next_chosen_lahze5,x3_next_chosen_lahze5,x4_next_chosen_lahze5,u_star5,js51001);
[x1_lahze6,x2_lahze6,x3_lahze6,x4_lahze6]= function4(xk, dr, A, x1_lahze5,x2_lahze5,x3_lahze5 ,x4_lahze5,x1_next_chosen_lahze6,x2_next_chosen_lahze6,x3_next_chosen_lahze6,x4_next_chosen_lahze6,u_star6,js61001);
[x1_lahze7,x2_lahze7,x3_lahze7,x4_lahze7]= function4(xk, dr, A, x1_lahze6,x2_lahze6,x3_lahze6 ,x4_lahze6,x1_next_chosen_lahze7,x2_next_chosen_lahze7,x3_next_chosen_lahze7,x4_next_chosen_lahze7,u_star7,js71001);
[x1_lahze8,x2_lahze8,x3_lahze8,x4_lahze8]= function4(xk, dr, A, x1_lahze7,x2_lahze7,x3_lahze7 ,x4_lahze7,x1_next_chosen_lahze8,x2_next_chosen_lahze8,x3_next_chosen_lahze8,x4_next_chosen_lahze8,u_star8,js81001);
[x1_lahze9,x2_lahze9,x3_lahze9,x4_lahze9]= function4(xk, dr, A, x1_lahze8,x2_lahze8,x3_lahze8 ,x4_lahze8,x1_next_chosen_lahze9,x2_next_chosen_lahze9,x3_next_chosen_lahze9,x4_next_chosen_lahze9,u_star9,js91001);
[x1_lahze10,x2_lahze10,x3_lahze10,x4_lahze10]= function4(xk, dr, A, x1_lahze9,x2_lahze9,x3_lahze9 ,x4_lahze9,x1_next_chosen_lahze10,x2_next_chosen_lahze10,x3_next_chosen_lahze10,x4_next_chosen_lahze10,u_star10,js101001);
[x1_lahze11,x2_lahze11,x3_lahze11,x4_lahze11]= function4(xk, dr, A, x1_lahze10,x2_lahze10,x3_lahze10 ,x4_lahze10,x1_next_chosen_lahze11,x2_next_chosen_lahze11,x3_next_chosen_lahze11,x4_next_chosen_lahze11,u_star11,js111001);
[x1_lahze12,x2_lahze12,x3_lahze12,x4_lahze12]= function4(xk, dr, A, x1_lahze11,x2_lahze11,x3_lahze11 ,x4_lahze11,x1_next_chosen_lahze12,x2_next_chosen_lahze12,x3_next_chosen_lahze12,x4_next_chosen_lahze12,u_star12,js121001);
[x1_lahze13,x2_lahze13,x3_lahze13,x4_lahze13]= function4(xk, dr, A, x1_lahze12,x2_lahze12,x3_lahze12 ,x4_lahze12,x1_next_chosen_lahze13,x2_next_chosen_lahze13,x3_next_chosen_lahze13,x4_next_chosen_lahze13,u_star13,js131001);
[x1_lahze14,x2_lahze14,x3_lahze14,x4_lahze14]= function4(xk, dr, A, x1_lahze13,x2_lahze13,x3_lahze13 ,x4_lahze13,x1_next_chosen_lahze14,x2_next_chosen_lahze14,x3_next_chosen_lahze14,x4_next_chosen_lahze14,u_star14,js141001);
[x1_lahze15,x2_lahze15,x3_lahze15,x4_lahze15]= function4(xk, dr, A, x1_lahze14,x2_lahze14,x3_lahze14 ,x4_lahze14,x1_next_chosen_lahze15,x2_next_chosen_lahze15,x3_next_chosen_lahze15,x4_next_chosen_lahze15,u_star15,js151001);
[x1_lahze16,x2_lahze16,x3_lahze16,x4_lahze16]= function4(xk, dr, A, x1_lahze15,x2_lahze15,x3_lahze15 ,x4_lahze15,x1_next_chosen_lahze16,x2_next_chosen_lahze16,x3_next_chosen_lahze16,x4_next_chosen_lahze16,u_star16,js161001);
[x1_lahze17,x2_lahze17,x3_lahze17,x4_lahze17]= function4(xk, dr, A, x1_lahze16,x2_lahze16,x3_lahze16 ,x4_lahze16,x1_next_chosen_lahze17,x2_next_chosen_lahze17,x3_next_chosen_lahze17,x4_next_chosen_lahze17,u_star17,js171001);
[x1_lahze18,x2_lahze18,x3_lahze18,x4_lahze18]= function4(xk, dr, A, x1_lahze17,x2_lahze17,x3_lahze17 ,x4_lahze17,x1_next_chosen_lahze18,x2_next_chosen_lahze18,x3_next_chosen_lahze18,x4_next_chosen_lahze18,u_star18,js181001);
[x1_lahze19,x2_lahze19,x3_lahze19,x4_lahze19]= function4(xk, dr, A, x1_lahze18,x2_lahze18,x3_lahze18 ,x4_lahze18,x1_next_chosen_lahze19,x2_next_chosen_lahze19,x3_next_chosen_lahze19,x4_next_chosen_lahze19,u_star19,js191001);
[x1_lahze20,x2_lahze20,x3_lahze20,x4_lahze20]= function4(xk, dr, A, x1_lahze19,x2_lahze19,x3_lahze19 ,x4_lahze19,x1_next_chosen_lahze20,x2_next_chosen_lahze20,x3_next_chosen_lahze20,x4_next_chosen_lahze20,u_star20,js201001);
[x1_lahze21,x2_lahze21,x3_lahze21,x4_lahze21]= function4(xk, dr, A, x1_lahze20,x2_lahze20,x3_lahze20 ,x4_lahze20,x1_next_chosen_lahze21,x2_next_chosen_lahze21,x3_next_chosen_lahze21,x4_next_chosen_lahze21,u_star21,js211001);
[x1_lahze22,x2_lahze22,x3_lahze22,x4_lahze22]= function4(xk, dr, A, x1_lahze21,x2_lahze21,x3_lahze21 ,x4_lahze21,x1_next_chosen_lahze22,x2_next_chosen_lahze22,x3_next_chosen_lahze22,x4_next_chosen_lahze22,u_star22,js221001);
[x1_lahze23,x2_lahze23,x3_lahze23,x4_lahze23]= function4(xk, dr, A, x1_lahze22,x2_lahze22,x3_lahze22 ,x4_lahze22,x1_next_chosen_lahze23,x2_next_chosen_lahze23,x3_next_chosen_lahze23,x4_next_chosen_lahze23,u_star23,js231001);
[x1_lahze24,x2_lahze24,x3_lahze24,x4_lahze24]= function4(xk, dr, A, x1_lahze23,x2_lahze23,x3_lahze23 ,x4_lahze23,x1_next_chosen_lahze24,x2_next_chosen_lahze24,x3_next_chosen_lahze24,x4_next_chosen_lahze24,u_star24,js241001);
[x1_lahze25,x2_lahze25,x3_lahze25,x4_lahze25]= function4(xk, dr, A, x1_lahze24,x2_lahze24,x3_lahze24 ,x4_lahze24,x1_next_chosen_lahze25,x2_next_chosen_lahze25,x3_next_chosen_lahze25,x4_next_chosen_lahze25,u_star25,js251001);
[x1_lahze26,x2_lahze26,x3_lahze26,x4_lahze26]= function4(xk, dr, A, x1_lahze25,x2_lahze25,x3_lahze25 ,x4_lahze25,x1_next_chosen_lahze26,x2_next_chosen_lahze26,x3_next_chosen_lahze26,x4_next_chosen_lahze26,u_star26,js261001);
[x1_lahze27,x2_lahze27,x3_lahze27,x4_lahze27]= function4(xk, dr, A, x1_lahze26,x2_lahze26,x3_lahze26 ,x4_lahze26,x1_next_chosen_lahze27,x2_next_chosen_lahze27,x3_next_chosen_lahze27,x4_next_chosen_lahze27,u_star27,js271001);
[x1_lahze28,x2_lahze28,x3_lahze28,x4_lahze28]= function4(xk, dr, A, x1_lahze27,x2_lahze27,x3_lahze27 ,x4_lahze27,x1_next_chosen_lahze28,x2_next_chosen_lahze28,x3_next_chosen_lahze28,x4_next_chosen_lahze28,u_star28,js281001);
[x1_lahze29,x2_lahze29,x3_lahze29,x4_lahze29]= function4(xk, dr, A, x1_lahze28,x2_lahze28,x3_lahze28 ,x4_lahze28,x1_next_chosen_lahze29,x2_next_chosen_lahze29,x3_next_chosen_lahze29,x4_next_chosen_lahze29,u_star29,js291001);
[x1_lahze30,x2_lahze30,x3_lahze30,x4_lahze30]= function4(xk, dr, A, x1_lahze29,x2_lahze29,x3_lahze29 ,x4_lahze29,x1_next_chosen_lahze30,x2_next_chosen_lahze30,x3_next_chosen_lahze30,x4_next_chosen_lahze30,u_star30,js301001);
[x1_lahze31,x2_lahze31,x3_lahze31,x4_lahze31]= function4(xk, dr, A, x1_lahze30,x2_lahze30,x3_lahze30 ,x4_lahze30,x1_next_chosen_lahze31,x2_next_chosen_lahze31,x3_next_chosen_lahze31,x4_next_chosen_lahze31,u_star31,js311001);
[x1_lahze32,x2_lahze32,x3_lahze32,x4_lahze32]= function4(xk, dr, A, x1_lahze31,x2_lahze31,x3_lahze31 ,x4_lahze31,x1_next_chosen_lahze32,x2_next_chosen_lahze32,x3_next_chosen_lahze32,x4_next_chosen_lahze32,u_star32,js321001);
[x1_lahze33,x2_lahze33,x3_lahze33,x4_lahze33]= function4(xk, dr, A, x1_lahze32,x2_lahze32,x3_lahze32 ,x4_lahze32,x1_next_chosen_lahze33,x2_next_chosen_lahze33,x3_next_chosen_lahze33,x4_next_chosen_lahze33,u_star33,js331001);
[x1_lahze34,x2_lahze34,x3_lahze34,x4_lahze34]= function4(xk, dr, A, x1_lahze33,x2_lahze33,x3_lahze33 ,x4_lahze33,x1_next_chosen_lahze34,x2_next_chosen_lahze34,x3_next_chosen_lahze34,x4_next_chosen_lahze34,u_star34,js341001);
[x1_lahze35,x2_lahze35,x3_lahze35,x4_lahze35]= function4(xk, dr, A, x1_lahze34,x2_lahze34,x3_lahze34 ,x4_lahze34,x1_next_chosen_lahze35,x2_next_chosen_lahze35,x3_next_chosen_lahze35,x4_next_chosen_lahze35,u_star35,js351001);
[x1_lahze36,x2_lahze36,x3_lahze36,x4_lahze36]= function4(xk, dr, A, x1_lahze35,x2_lahze35,x3_lahze35 ,x4_lahze35,x1_next_chosen_lahze36,x2_next_chosen_lahze36,x3_next_chosen_lahze36,x4_next_chosen_lahze36,u_star36,js361001);
[x1_lahze37,x2_lahze37,x3_lahze37,x4_lahze37]= function4(xk, dr, A, x1_lahze36,x2_lahze36,x3_lahze36 ,x4_lahze36,x1_next_chosen_lahze37,x2_next_chosen_lahze37,x3_next_chosen_lahze37,x4_next_chosen_lahze37,u_star37,js371001);
[x1_lahze38,x2_lahze38,x3_lahze38,x4_lahze38]= function4(xk, dr, A, x1_lahze37,x2_lahze37,x3_lahze37 ,x4_lahze37,x1_next_chosen_lahze38,x2_next_chosen_lahze38,x3_next_chosen_lahze38,x4_next_chosen_lahze38,u_star38,js381001);
[x1_lahze39,x2_lahze39,x3_lahze39,x4_lahze39]= function4(xk, dr, A, x1_lahze38,x2_lahze38,x3_lahze38 ,x4_lahze38,x1_next_chosen_lahze39,x2_next_chosen_lahze39,x3_next_chosen_lahze39,x4_next_chosen_lahze39,u_star39,js391001);
[x1_lahze40,x2_lahze40,x3_lahze40,x4_lahze40]= function4(xk, dr, A, x1_lahze39,x2_lahze39,x3_lahze39 ,x4_lahze39,x1_next_chosen_lahze40,x2_next_chosen_lahze40,x3_next_chosen_lahze40,x4_next_chosen_lahze40,u_star40,js401001);
[x1_lahze41,x2_lahze41,x3_lahze41,x4_lahze41]= function4(xk, dr, A, x1_lahze40,x2_lahze40,x3_lahze40 ,x4_lahze40,x1_next_chosen_lahze41,x2_next_chosen_lahze41,x3_next_chosen_lahze41,x4_next_chosen_lahze41,u_star41,js411001);
[x1_lahze42,x2_lahze42,x3_lahze42,x4_lahze42]= function4(xk, dr, A, x1_lahze41,x2_lahze41,x3_lahze41 ,x4_lahze41,x1_next_chosen_lahze42,x2_next_chosen_lahze42,x3_next_chosen_lahze42,x4_next_chosen_lahze42,u_star42,js421001);
[x1_lahze43,x2_lahze43,x3_lahze43,x4_lahze43]= function4(xk, dr, A, x1_lahze42,x2_lahze42,x3_lahze42 ,x4_lahze42,x1_next_chosen_lahze43,x2_next_chosen_lahze43,x3_next_chosen_lahze43,x4_next_chosen_lahze43,u_star43,js431001);
[x1_lahze44,x2_lahze44,x3_lahze44,x4_lahze44]= function4(xk, dr, A, x1_lahze43,x2_lahze43,x3_lahze43 ,x4_lahze43,x1_next_chosen_lahze44,x2_next_chosen_lahze44,x3_next_chosen_lahze44,x4_next_chosen_lahze44,u_star44,js441001);
[x1_lahze45,x2_lahze45,x3_lahze45,x4_lahze45]= function4(xk, dr, A, x1_lahze44,x2_lahze44,x3_lahze44 ,x4_lahze44,x1_next_chosen_lahze45,x2_next_chosen_lahze45,x3_next_chosen_lahze45,x4_next_chosen_lahze45,u_star45,js451001);
[x1_lahze46,x2_lahze46,x3_lahze46,x4_lahze46]= function4(xk, dr, A, x1_lahze45,x2_lahze45,x3_lahze45 ,x4_lahze45,x1_next_chosen_lahze46,x2_next_chosen_lahze46,x3_next_chosen_lahze46,x4_next_chosen_lahze46,u_star46,js461001);
[x1_lahze47,x2_lahze47,x3_lahze47,x4_lahze47]= function4(xk, dr, A, x1_lahze46,x2_lahze46,x3_lahze46 ,x4_lahze46,x1_next_chosen_lahze47,x2_next_chosen_lahze47,x3_next_chosen_lahze47,x4_next_chosen_lahze47,u_star47,js471001);
[x1_lahze48,x2_lahze48,x3_lahze48,x4_lahze48]= function4(xk, dr, A, x1_lahze47,x2_lahze47,x3_lahze47 ,x4_lahze47,x1_next_chosen_lahze48,x2_next_chosen_lahze48,x3_next_chosen_lahze48,x4_next_chosen_lahze48,u_star48,js481001);
[x1_lahze49,x2_lahze49,x3_lahze49,x4_lahze49]= function4(xk, dr, A, x1_lahze48,x2_lahze48,x3_lahze48 ,x4_lahze48,x1_next_chosen_lahze49,x2_next_chosen_lahze49,x3_next_chosen_lahze49,x4_next_chosen_lahze49,u_star49,js491001);
[x1_lahze50,x2_lahze50,x3_lahze50,x4_lahze50]= function4(xk, dr, A, x1_lahze49,x2_lahze49,x3_lahze49 ,x4_lahze49,x1_next_chosen_lahze50,x2_next_chosen_lahze50,x3_next_chosen_lahze50,x4_next_chosen_lahze50,u_star50,js501001);
[x1_lahze51,x2_lahze51,x3_lahze51,x4_lahze51]= function4(xk, dr, A, x1_lahze50,x2_lahze50,x3_lahze50 ,x4_lahze50,x1_next_chosen_lahze51,x2_next_chosen_lahze51,x3_next_chosen_lahze51,x4_next_chosen_lahze51,u_star51,js511001);
[x1_lahze52,x2_lahze52,x3_lahze52,x4_lahze52]= function4(xk, dr, A, x1_lahze51,x2_lahze51,x3_lahze51 ,x4_lahze51,x1_next_chosen_lahze52,x2_next_chosen_lahze52,x3_next_chosen_lahze52,x4_next_chosen_lahze52,u_star52,js521001);
[x1_lahze53,x2_lahze53,x3_lahze53,x4_lahze53]= function4(xk, dr, A, x1_lahze52,x2_lahze52,x3_lahze52 ,x4_lahze52,x1_next_chosen_lahze53,x2_next_chosen_lahze53,x3_next_chosen_lahze53,x4_next_chosen_lahze53,u_star53,js531001);
[x1_lahze54,x2_lahze54,x3_lahze54,x4_lahze54]= function4(xk, dr, A, x1_lahze53,x2_lahze53,x3_lahze53 ,x4_lahze53,x1_next_chosen_lahze54,x2_next_chosen_lahze54,x3_next_chosen_lahze54,x4_next_chosen_lahze54,u_star54,js541001);
[x1_lahze55,x2_lahze55,x3_lahze55,x4_lahze55]= function4(xk, dr, A, x1_lahze54,x2_lahze54,x3_lahze54 ,x4_lahze54,x1_next_chosen_lahze55,x2_next_chosen_lahze55,x3_next_chosen_lahze55,x4_next_chosen_lahze55,u_star55,js551001);
[x1_lahze56,x2_lahze56,x3_lahze56,x4_lahze56]= function4(xk, dr, A, x1_lahze55,x2_lahze55,x3_lahze55 ,x4_lahze55,x1_next_chosen_lahze56,x2_next_chosen_lahze56,x3_next_chosen_lahze56,x4_next_chosen_lahze56,u_star56,js561001);
[x1_lahze57,x2_lahze57,x3_lahze57,x4_lahze57]= function4(xk, dr, A, x1_lahze56,x2_lahze56,x3_lahze56 ,x4_lahze56,x1_next_chosen_lahze57,x2_next_chosen_lahze57,x3_next_chosen_lahze57,x4_next_chosen_lahze57,u_star57,js571001);
[x1_lahze58,x2_lahze58,x3_lahze58,x4_lahze58]= function4(xk, dr, A, x1_lahze57,x2_lahze57,x3_lahze57 ,x4_lahze57,x1_next_chosen_lahze58,x2_next_chosen_lahze58,x3_next_chosen_lahze58,x4_next_chosen_lahze58,u_star58,js581001);
[x1_lahze59,x2_lahze59,x3_lahze59,x4_lahze59]= function4(xk, dr, A, x1_lahze58,x2_lahze58,x3_lahze58 ,x4_lahze58,x1_next_chosen_lahze59,x2_next_chosen_lahze59,x3_next_chosen_lahze59,x4_next_chosen_lahze59,u_star59,js591001);
[x1_lahze60,x2_lahze60,x3_lahze60,x4_lahze60]= function4(xk, dr, A, x1_lahze59,x2_lahze59,x3_lahze59 ,x4_lahze59,x1_next_chosen_lahze60,x2_next_chosen_lahze60,x3_next_chosen_lahze60,x4_next_chosen_lahze60,u_star60,js601001);
[x1_lahze61,x2_lahze61,x3_lahze61,x4_lahze61]= function4(xk, dr, A, x1_lahze60,x2_lahze60,x3_lahze60 ,x4_lahze60,x1_next_chosen_lahze61,x2_next_chosen_lahze61,x3_next_chosen_lahze61,x4_next_chosen_lahze61,u_star61,js611001);
[x1_lahze62,x2_lahze62,x3_lahze62,x4_lahze62]= function4(xk, dr, A, x1_lahze61,x2_lahze61,x3_lahze61 ,x4_lahze61,x1_next_chosen_lahze62,x2_next_chosen_lahze62,x3_next_chosen_lahze62,x4_next_chosen_lahze62,u_star62,js621001);
[x1_lahze63,x2_lahze63,x3_lahze63,x4_lahze63]= function4(xk, dr, A, x1_lahze62,x2_lahze62,x3_lahze62 ,x4_lahze62,x1_next_chosen_lahze63,x2_next_chosen_lahze63,x3_next_chosen_lahze63,x4_next_chosen_lahze63,u_star63,js631001);
[x1_lahze64,x2_lahze64,x3_lahze64,x4_lahze64]= function4(xk, dr, A, x1_lahze63,x2_lahze63,x3_lahze63 ,x4_lahze63,x1_next_chosen_lahze64,x2_next_chosen_lahze64,x3_next_chosen_lahze64,x4_next_chosen_lahze64,u_star64,js641001);
[x1_lahze65,x2_lahze65,x3_lahze65,x4_lahze65]= function4(xk, dr, A, x1_lahze64,x2_lahze64,x3_lahze64 ,x4_lahze64,x1_next_chosen_lahze65,x2_next_chosen_lahze65,x3_next_chosen_lahze65,x4_next_chosen_lahze65,u_star65,js651001);
[x1_lahze66,x2_lahze66,x3_lahze66,x4_lahze66]= function4(xk, dr, A, x1_lahze65,x2_lahze65,x3_lahze65 ,x4_lahze65,x1_next_chosen_lahze66,x2_next_chosen_lahze66,x3_next_chosen_lahze66,x4_next_chosen_lahze66,u_star66,js661001);
[x1_lahze67,x2_lahze67,x3_lahze67,x4_lahze67]= function4(xk, dr, A, x1_lahze66,x2_lahze66,x3_lahze66 ,x4_lahze66,x1_next_chosen_lahze67,x2_next_chosen_lahze67,x3_next_chosen_lahze67,x4_next_chosen_lahze67,u_star67,js671001);
[x1_lahze68,x2_lahze68,x3_lahze68,x4_lahze68]= function4(xk, dr, A, x1_lahze67,x2_lahze67,x3_lahze67 ,x4_lahze67,x1_next_chosen_lahze68,x2_next_chosen_lahze68,x3_next_chosen_lahze68,x4_next_chosen_lahze68,u_star68,js681001);
[x1_lahze69,x2_lahze69,x3_lahze69,x4_lahze69]= function4(xk, dr, A, x1_lahze68,x2_lahze68,x3_lahze68 ,x4_lahze68,x1_next_chosen_lahze69,x2_next_chosen_lahze69,x3_next_chosen_lahze69,x4_next_chosen_lahze69,u_star69,js691001);
[x1_lahze70,x2_lahze70,x3_lahze70,x4_lahze70]= function4(xk, dr, A, x1_lahze69,x2_lahze69,x3_lahze69 ,x4_lahze69,x1_next_chosen_lahze70,x2_next_chosen_lahze70,x3_next_chosen_lahze70,x4_next_chosen_lahze70,u_star70,js701001);
[x1_lahze71,x2_lahze71,x3_lahze71,x4_lahze71]= function4(xk, dr, A, x1_lahze70,x2_lahze70,x3_lahze70 ,x4_lahze70,x1_next_chosen_lahze71,x2_next_chosen_lahze71,x3_next_chosen_lahze71,x4_next_chosen_lahze71,u_star71,js711001);
[x1_lahze72,x2_lahze72,x3_lahze72,x4_lahze72]= function4(xk, dr, A, x1_lahze71,x2_lahze71,x3_lahze71 ,x4_lahze71,x1_next_chosen_lahze72,x2_next_chosen_lahze72,x3_next_chosen_lahze72,x4_next_chosen_lahze72,u_star72,js721001);
[x1_lahze73,x2_lahze73,x3_lahze73,x4_lahze73]= function4(xk, dr, A, x1_lahze72,x2_lahze72,x3_lahze72 ,x4_lahze72,x1_next_chosen_lahze73,x2_next_chosen_lahze73,x3_next_chosen_lahze73,x4_next_chosen_lahze73,u_star73,js731001);
[x1_lahze74,x2_lahze74,x3_lahze74,x4_lahze74]= function4(xk, dr, A, x1_lahze73,x2_lahze73,x3_lahze73 ,x4_lahze73,x1_next_chosen_lahze74,x2_next_chosen_lahze74,x3_next_chosen_lahze74,x4_next_chosen_lahze74,u_star74,js741001);
[x1_lahze75,x2_lahze75,x3_lahze75,x4_lahze75]= function4(xk, dr, A, x1_lahze74,x2_lahze74,x3_lahze74 ,x4_lahze74,x1_next_chosen_lahze75,x2_next_chosen_lahze75,x3_next_chosen_lahze75,x4_next_chosen_lahze75,u_star75,js751001);
[x1_lahze76,x2_lahze76,x3_lahze76,x4_lahze76]= function4(xk, dr, A, x1_lahze75,x2_lahze75,x3_lahze75 ,x4_lahze75,x1_next_chosen_lahze76,x2_next_chosen_lahze76,x3_next_chosen_lahze76,x4_next_chosen_lahze76,u_star76,js761001);
[x1_lahze77,x2_lahze77,x3_lahze77,x4_lahze77]= function4(xk, dr, A, x1_lahze76,x2_lahze76,x3_lahze76 ,x4_lahze76,x1_next_chosen_lahze77,x2_next_chosen_lahze77,x3_next_chosen_lahze77,x4_next_chosen_lahze77,u_star77,js771001);
[x1_lahze78,x2_lahze78,x3_lahze78,x4_lahze78]= function4(xk, dr, A, x1_lahze77,x2_lahze77,x3_lahze77 ,x4_lahze77,x1_next_chosen_lahze78,x2_next_chosen_lahze78,x3_next_chosen_lahze78,x4_next_chosen_lahze78,u_star78,js781001);
[x1_lahze79,x2_lahze79,x3_lahze79,x4_lahze79]= function4(xk, dr, A, x1_lahze78,x2_lahze78,x3_lahze78 ,x4_lahze78,x1_next_chosen_lahze79,x2_next_chosen_lahze79,x3_next_chosen_lahze79,x4_next_chosen_lahze79,u_star79,js791001);
[x1_lahze80,x2_lahze80,x3_lahze80,x4_lahze80]= function4(xk, dr, A, x1_lahze79,x2_lahze79,x3_lahze79 ,x4_lahze79,x1_next_chosen_lahze80,x2_next_chosen_lahze80,x3_next_chosen_lahze80,x4_next_chosen_lahze80,u_star80,js801001);
[x1_lahze81,x2_lahze81,x3_lahze81,x4_lahze81]= function4(xk, dr, A, x1_lahze80,x2_lahze80,x3_lahze80 ,x4_lahze80,x1_next_chosen_lahze81,x2_next_chosen_lahze81,x3_next_chosen_lahze81,x4_next_chosen_lahze81,u_star81,js811001);
[x1_lahze82,x2_lahze82,x3_lahze82,x4_lahze82]= function4(xk, dr, A, x1_lahze81,x2_lahze81,x3_lahze81 ,x4_lahze81,x1_next_chosen_lahze82,x2_next_chosen_lahze82,x3_next_chosen_lahze82,x4_next_chosen_lahze82,u_star82,js821001);
[x1_lahze83,x2_lahze83,x3_lahze83,x4_lahze83]= function4(xk, dr, A, x1_lahze82,x2_lahze82,x3_lahze82 ,x4_lahze82,x1_next_chosen_lahze83,x2_next_chosen_lahze83,x3_next_chosen_lahze83,x4_next_chosen_lahze83,u_star83,js831001);
[x1_lahze84,x2_lahze84,x3_lahze84,x4_lahze84]= function4(xk, dr, A, x1_lahze83,x2_lahze83,x3_lahze83 ,x4_lahze83,x1_next_chosen_lahze84,x2_next_chosen_lahze84,x3_next_chosen_lahze84,x4_next_chosen_lahze84,u_star84,js841001);
[x1_lahze85,x2_lahze85,x3_lahze85,x4_lahze85]= function4(xk, dr, A, x1_lahze84,x2_lahze84,x3_lahze84 ,x4_lahze84,x1_next_chosen_lahze85,x2_next_chosen_lahze85,x3_next_chosen_lahze85,x4_next_chosen_lahze85,u_star85,js851001);
[x1_lahze86,x2_lahze86,x3_lahze86,x4_lahze86]= function4(xk, dr, A, x1_lahze85,x2_lahze85,x3_lahze85 ,x4_lahze85,x1_next_chosen_lahze86,x2_next_chosen_lahze86,x3_next_chosen_lahze86,x4_next_chosen_lahze86,u_star86,js861001);
[x1_lahze87,x2_lahze87,x3_lahze87,x4_lahze87]= function4(xk, dr, A, x1_lahze86,x2_lahze86,x3_lahze86 ,x4_lahze86,x1_next_chosen_lahze87,x2_next_chosen_lahze87,x3_next_chosen_lahze87,x4_next_chosen_lahze87,u_star87,js871001);
[x1_lahze88,x2_lahze88,x3_lahze88,x4_lahze88]= function4(xk, dr, A, x1_lahze87,x2_lahze87,x3_lahze87 ,x4_lahze87,x1_next_chosen_lahze88,x2_next_chosen_lahze88,x3_next_chosen_lahze88,x4_next_chosen_lahze88,u_star88,js881001);
[x1_lahze89,x2_lahze89,x3_lahze89,x4_lahze89]= function4(xk, dr, A, x1_lahze88,x2_lahze88,x3_lahze88 ,x4_lahze88,x1_next_chosen_lahze89,x2_next_chosen_lahze89,x3_next_chosen_lahze89,x4_next_chosen_lahze89,u_star89,js891001);
[x1_lahze90,x2_lahze90,x3_lahze90,x4_lahze90]= function4(xk, dr, A, x1_lahze89,x2_lahze89,x3_lahze89 ,x4_lahze89,x1_next_chosen_lahze90,x2_next_chosen_lahze90,x3_next_chosen_lahze90,x4_next_chosen_lahze90,u_star90,js901001);
[x1_lahze91,x2_lahze91,x3_lahze91,x4_lahze91]= function4(xk, dr, A, x1_lahze90,x2_lahze90,x3_lahze90 ,x4_lahze90,x1_next_chosen_lahze91,x2_next_chosen_lahze91,x3_next_chosen_lahze91,x4_next_chosen_lahze91,u_star91,js911001);
[x1_lahze92,x2_lahze92,x3_lahze92,x4_lahze92]= function4(xk, dr, A, x1_lahze91,x2_lahze91,x3_lahze91 ,x4_lahze91,x1_next_chosen_lahze92,x2_next_chosen_lahze92,x3_next_chosen_lahze92,x4_next_chosen_lahze92,u_star92,js921001);
[x1_lahze93,x2_lahze93,x3_lahze93,x4_lahze93]= function4(xk, dr, A, x1_lahze92,x2_lahze92,x3_lahze92 ,x4_lahze92,x1_next_chosen_lahze93,x2_next_chosen_lahze93,x3_next_chosen_lahze93,x4_next_chosen_lahze93,u_star93,js931001);
[x1_lahze94,x2_lahze94,x3_lahze94,x4_lahze94]= function4(xk, dr, A, x1_lahze93,x2_lahze93,x3_lahze93 ,x4_lahze93,x1_next_chosen_lahze94,x2_next_chosen_lahze94,x3_next_chosen_lahze94,x4_next_chosen_lahze94,u_star94,js941001);
[x1_lahze95,x2_lahze95,x3_lahze95,x4_lahze95]= function4(xk, dr, A, x1_lahze94,x2_lahze94,x3_lahze94 ,x4_lahze94,x1_next_chosen_lahze95,x2_next_chosen_lahze95,x3_next_chosen_lahze95,x4_next_chosen_lahze95,u_star95,js951001);
[x1_lahze96,x2_lahze96,x3_lahze96,x4_lahze96]= function4(xk, dr, A, x1_lahze95,x2_lahze95,x3_lahze95 ,x4_lahze95,x1_next_chosen_lahze96,x2_next_chosen_lahze96,x3_next_chosen_lahze96,x4_next_chosen_lahze96,u_star96,js961001);
[x1_lahze97,x2_lahze97,x3_lahze97,x4_lahze97]= function4(xk, dr, A, x1_lahze96,x2_lahze96,x3_lahze96 ,x4_lahze96,x1_next_chosen_lahze97,x2_next_chosen_lahze97,x3_next_chosen_lahze97,x4_next_chosen_lahze97,u_star97,js971001);
[x1_lahze98,x2_lahze98,x3_lahze98,x4_lahze98]= function4(xk, dr, A, x1_lahze97,x2_lahze97,x3_lahze97 ,x4_lahze97,x1_next_chosen_lahze98,x2_next_chosen_lahze98,x3_next_chosen_lahze98,x4_next_chosen_lahze98,u_star98,js981001);
[x1_lahze99,x2_lahze99,x3_lahze99,x4_lahze99]= function4(xk, dr, A, x1_lahze98,x2_lahze98,x3_lahze98 ,x4_lahze98,x1_next_chosen_lahze99,x2_next_chosen_lahze99,x3_next_chosen_lahze99,x4_next_chosen_lahze99,u_star99,js991001);
[x1_lahze100,x2_lahze100,x3_lahze100,x4_lahze100]= function4(xk, dr, A, x1_lahze99,x2_lahze99,x3_lahze99 ,x4_lahze99,x1_next_chosen_lahze100,x2_next_chosen_lahze100,x3_next_chosen_lahze100,x4_next_chosen_lahze100,u_star100,js1001001);
[x1_lahze101,x2_lahze101,x3_lahze101,x4_lahze101]= function4(xk, dr, A, x1_lahze100,x2_lahze100,x3_lahze100 ,x4_lahze100,x1_next_chosen_lahze101,x2_next_chosen_lahze101,x3_next_chosen_lahze101,x4_next_chosen_lahze101,u_star101,js1011001);
[x1_lahze102,x2_lahze102,x3_lahze102,x4_lahze102]= function4(xk, dr, A, x1_lahze101,x2_lahze101,x3_lahze101 ,x4_lahze101,x1_next_chosen_lahze102,x2_next_chosen_lahze102,x3_next_chosen_lahze102,x4_next_chosen_lahze102,u_star102,js1021001);
[x1_lahze103,x2_lahze103,x3_lahze103,x4_lahze103]= function4(xk, dr, A, x1_lahze102,x2_lahze102,x3_lahze102 ,x4_lahze102,x1_next_chosen_lahze103,x2_next_chosen_lahze103,x3_next_chosen_lahze103,x4_next_chosen_lahze103,u_star103,js1031001);
[x1_lahze104,x2_lahze104,x3_lahze104,x4_lahze104]= function4(xk, dr, A, x1_lahze103,x2_lahze103,x3_lahze103 ,x4_lahze103,x1_next_chosen_lahze104,x2_next_chosen_lahze104,x3_next_chosen_lahze104,x4_next_chosen_lahze104,u_star104,js1041001);
[x1_lahze105,x2_lahze105,x3_lahze105,x4_lahze105]= function4(xk, dr, A, x1_lahze104,x2_lahze104,x3_lahze104 ,x4_lahze104,x1_next_chosen_lahze105,x2_next_chosen_lahze105,x3_next_chosen_lahze105,x4_next_chosen_lahze105,u_star105,js1051001);
[x1_lahze106,x2_lahze106,x3_lahze106,x4_lahze106]= function4(xk, dr, A, x1_lahze105,x2_lahze105,x3_lahze105 ,x4_lahze105,x1_next_chosen_lahze106,x2_next_chosen_lahze106,x3_next_chosen_lahze106,x4_next_chosen_lahze106,u_star106,js1061001);
[x1_lahze107,x2_lahze107,x3_lahze107,x4_lahze107]= function4(xk, dr, A, x1_lahze106,x2_lahze106,x3_lahze106 ,x4_lahze106,x1_next_chosen_lahze107,x2_next_chosen_lahze107,x3_next_chosen_lahze107,x4_next_chosen_lahze107,u_star107,js1071001);
[x1_lahze108,x2_lahze108,x3_lahze108,x4_lahze108]= function4(xk, dr, A, x1_lahze107,x2_lahze107,x3_lahze107 ,x4_lahze107,x1_next_chosen_lahze108,x2_next_chosen_lahze108,x3_next_chosen_lahze108,x4_next_chosen_lahze108,u_star108,js1081001);
[x1_lahze109,x2_lahze109,x3_lahze109,x4_lahze109]= function4(xk, dr, A, x1_lahze108,x2_lahze108,x3_lahze108 ,x4_lahze108,x1_next_chosen_lahze109,x2_next_chosen_lahze109,x3_next_chosen_lahze109,x4_next_chosen_lahze109,u_star109,js1091001);
[x1_lahze110,x2_lahze110,x3_lahze110,x4_lahze110]= function4(xk, dr, A, x1_lahze109,x2_lahze109,x3_lahze109 ,x4_lahze109,x1_next_chosen_lahze110,x2_next_chosen_lahze110,x3_next_chosen_lahze110,x4_next_chosen_lahze110,u_star110,js1101001);
[x1_lahze111,x2_lahze111,x3_lahze111,x4_lahze111]= function4(xk, dr, A, x1_lahze110,x2_lahze110,x3_lahze110 ,x4_lahze110,x1_next_chosen_lahze111,x2_next_chosen_lahze111,x3_next_chosen_lahze111,x4_next_chosen_lahze111,u_star111,js1111001);
[x1_lahze112,x2_lahze112,x3_lahze112,x4_lahze112]= function4(xk, dr, A, x1_lahze111,x2_lahze111,x3_lahze111 ,x4_lahze111,x1_next_chosen_lahze112,x2_next_chosen_lahze112,x3_next_chosen_lahze112,x4_next_chosen_lahze112,u_star112,js1121001);
[x1_lahze113,x2_lahze113,x3_lahze113,x4_lahze113]= function4(xk, dr, A, x1_lahze112,x2_lahze112,x3_lahze112 ,x4_lahze112,x1_next_chosen_lahze113,x2_next_chosen_lahze113,x3_next_chosen_lahze113,x4_next_chosen_lahze113,u_star113,js1131001);
[x1_lahze114,x2_lahze114,x3_lahze114,x4_lahze114]= function4(xk, dr, A, x1_lahze113,x2_lahze113,x3_lahze113 ,x4_lahze113,x1_next_chosen_lahze114,x2_next_chosen_lahze114,x3_next_chosen_lahze114,x4_next_chosen_lahze114,u_star114,js1141001);
[x1_lahze115,x2_lahze115,x3_lahze115,x4_lahze115]= function4(xk, dr, A, x1_lahze114,x2_lahze114,x3_lahze114 ,x4_lahze114,x1_next_chosen_lahze115,x2_next_chosen_lahze115,x3_next_chosen_lahze115,x4_next_chosen_lahze115,u_star115,js1151001);
[x1_lahze116,x2_lahze116,x3_lahze116,x4_lahze116]= function4(xk, dr, A, x1_lahze115,x2_lahze115,x3_lahze115 ,x4_lahze115,x1_next_chosen_lahze116,x2_next_chosen_lahze116,x3_next_chosen_lahze116,x4_next_chosen_lahze116,u_star116,js1161001);
[x1_lahze117,x2_lahze117,x3_lahze117,x4_lahze117]= function4(xk, dr, A, x1_lahze116,x2_lahze116,x3_lahze116 ,x4_lahze116,x1_next_chosen_lahze117,x2_next_chosen_lahze117,x3_next_chosen_lahze117,x4_next_chosen_lahze117,u_star117,js1171001);
[x1_lahze118,x2_lahze118,x3_lahze118,x4_lahze118]= function4(xk, dr, A, x1_lahze117,x2_lahze117,x3_lahze117 ,x4_lahze117,x1_next_chosen_lahze118,x2_next_chosen_lahze118,x3_next_chosen_lahze118,x4_next_chosen_lahze118,u_star118,js1181001);
[x1_lahze119,x2_lahze119,x3_lahze119,x4_lahze119]= function4(xk, dr, A, x1_lahze118,x2_lahze118,x3_lahze118 ,x4_lahze118,x1_next_chosen_lahze119,x2_next_chosen_lahze119,x3_next_chosen_lahze119,x4_next_chosen_lahze119,u_star119,js1191001);
[x1_lahze120,x2_lahze120,x3_lahze120,x4_lahze120]= function4(xk, dr, A, x1_lahze119,x2_lahze119,x3_lahze119 ,x4_lahze119,x1_next_chosen_lahze120,x2_next_chosen_lahze120,x3_next_chosen_lahze120,x4_next_chosen_lahze120,u_star120,js1201001);
[x1_lahze121,x2_lahze121,x3_lahze121,x4_lahze121]= function4(xk, dr, A, x1_lahze120,x2_lahze120,x3_lahze120 ,x4_lahze120,x1_next_chosen_lahze121,x2_next_chosen_lahze121,x3_next_chosen_lahze121,x4_next_chosen_lahze121,u_star121,js1211001);
[x1_lahze122,x2_lahze122,x3_lahze122,x4_lahze122]= function4(xk, dr, A, x1_lahze121,x2_lahze121,x3_lahze121 ,x4_lahze121,x1_next_chosen_lahze122,x2_next_chosen_lahze122,x3_next_chosen_lahze122,x4_next_chosen_lahze122,u_star122,js1221001);
[x1_lahze123,x2_lahze123,x3_lahze123,x4_lahze123]= function4(xk, dr, A, x1_lahze122,x2_lahze122,x3_lahze122 ,x4_lahze122,x1_next_chosen_lahze123,x2_next_chosen_lahze123,x3_next_chosen_lahze123,x4_next_chosen_lahze123,u_star123,js1231001);
[x1_lahze124,x2_lahze124,x3_lahze124,x4_lahze124]= function4(xk, dr, A, x1_lahze123,x2_lahze123,x3_lahze123 ,x4_lahze123,x1_next_chosen_lahze124,x2_next_chosen_lahze124,x3_next_chosen_lahze124,x4_next_chosen_lahze124,u_star124,js1241001);
[x1_lahze125,x2_lahze125,x3_lahze125,x4_lahze125]= function4(xk, dr, A, x1_lahze124,x2_lahze124,x3_lahze124 ,x4_lahze124,x1_next_chosen_lahze125,x2_next_chosen_lahze125,x3_next_chosen_lahze125,x4_next_chosen_lahze125,u_star125,js1251001);
[x1_lahze126,x2_lahze126,x3_lahze126,x4_lahze126]= function4(xk, dr, A, x1_lahze125,x2_lahze125,x3_lahze125 ,x4_lahze125,x1_next_chosen_lahze126,x2_next_chosen_lahze126,x3_next_chosen_lahze126,x4_next_chosen_lahze126,u_star126,js1261001);
[x1_lahze127,x2_lahze127,x3_lahze127,x4_lahze127]= function4(xk, dr, A, x1_lahze126,x2_lahze126,x3_lahze126 ,x4_lahze126,x1_next_chosen_lahze127,x2_next_chosen_lahze127,x3_next_chosen_lahze127,x4_next_chosen_lahze127,u_star127,js1271001);
[x1_lahze128,x2_lahze128,x3_lahze128,x4_lahze128]= function4(xk, dr, A, x1_lahze127,x2_lahze127,x3_lahze127 ,x4_lahze127,x1_next_chosen_lahze128,x2_next_chosen_lahze128,x3_next_chosen_lahze128,x4_next_chosen_lahze128,u_star128,js1281001);
[x1_lahze129,x2_lahze129,x3_lahze129,x4_lahze129]= function4(xk, dr, A, x1_lahze128,x2_lahze128,x3_lahze128 ,x4_lahze128,x1_next_chosen_lahze129,x2_next_chosen_lahze129,x3_next_chosen_lahze129,x4_next_chosen_lahze129,u_star129,js1291001);
[x1_lahze130,x2_lahze130,x3_lahze130,x4_lahze130]= function4(xk, dr, A, x1_lahze129,x2_lahze129,x3_lahze129 ,x4_lahze129,x1_next_chosen_lahze130,x2_next_chosen_lahze130,x3_next_chosen_lahze130,x4_next_chosen_lahze130,u_star130,js1301001);
[x1_lahze131,x2_lahze131,x3_lahze131,x4_lahze131]= function4(xk, dr, A, x1_lahze130,x2_lahze130,x3_lahze130 ,x4_lahze130,x1_next_chosen_lahze131,x2_next_chosen_lahze131,x3_next_chosen_lahze131,x4_next_chosen_lahze131,u_star131,js1311001);
[x1_lahze132,x2_lahze132,x3_lahze132,x4_lahze132]= function4(xk, dr, A, x1_lahze131,x2_lahze131,x3_lahze131 ,x4_lahze131,x1_next_chosen_lahze132,x2_next_chosen_lahze132,x3_next_chosen_lahze132,x4_next_chosen_lahze132,u_star132,js1321001);
[x1_lahze133,x2_lahze133,x3_lahze133,x4_lahze133]= function4(xk, dr, A, x1_lahze132,x2_lahze132,x3_lahze132 ,x4_lahze132,x1_next_chosen_lahze133,x2_next_chosen_lahze133,x3_next_chosen_lahze133,x4_next_chosen_lahze133,u_star133,js1331001);
[x1_lahze134,x2_lahze134,x3_lahze134,x4_lahze134]= function4(xk, dr, A, x1_lahze133,x2_lahze133,x3_lahze133 ,x4_lahze133,x1_next_chosen_lahze134,x2_next_chosen_lahze134,x3_next_chosen_lahze134,x4_next_chosen_lahze134,u_star134,js1341001);
[x1_lahze135,x2_lahze135,x3_lahze135,x4_lahze135]= function4(xk, dr, A, x1_lahze134,x2_lahze134,x3_lahze134 ,x4_lahze134,x1_next_chosen_lahze135,x2_next_chosen_lahze135,x3_next_chosen_lahze135,x4_next_chosen_lahze135,u_star135,js1351001);
[x1_lahze136,x2_lahze136,x3_lahze136,x4_lahze136]= function4(xk, dr, A, x1_lahze135,x2_lahze135,x3_lahze135 ,x4_lahze135,x1_next_chosen_lahze136,x2_next_chosen_lahze136,x3_next_chosen_lahze136,x4_next_chosen_lahze136,u_star136,js1361001);
[x1_lahze137,x2_lahze137,x3_lahze137,x4_lahze137]= function4(xk, dr, A, x1_lahze136,x2_lahze136,x3_lahze136 ,x4_lahze136,x1_next_chosen_lahze137,x2_next_chosen_lahze137,x3_next_chosen_lahze137,x4_next_chosen_lahze137,u_star137,js1371001);
[x1_lahze138,x2_lahze138,x3_lahze138,x4_lahze138]= function4(xk, dr, A, x1_lahze137,x2_lahze137,x3_lahze137 ,x4_lahze137,x1_next_chosen_lahze138,x2_next_chosen_lahze138,x3_next_chosen_lahze138,x4_next_chosen_lahze138,u_star138,js1381001);
[x1_lahze139,x2_lahze139,x3_lahze139,x4_lahze139]= function4(xk, dr, A, x1_lahze138,x2_lahze138,x3_lahze138 ,x4_lahze138,x1_next_chosen_lahze139,x2_next_chosen_lahze139,x3_next_chosen_lahze139,x4_next_chosen_lahze139,u_star139,js1391001);
[x1_lahze140,x2_lahze140,x3_lahze140,x4_lahze140]= function4(xk, dr, A, x1_lahze139,x2_lahze139,x3_lahze139 ,x4_lahze139,x1_next_chosen_lahze140,x2_next_chosen_lahze140,x3_next_chosen_lahze140,x4_next_chosen_lahze140,u_star140,js1401001);
[x1_lahze141,x2_lahze141,x3_lahze141,x4_lahze141]= function4(xk, dr, A, x1_lahze140,x2_lahze140,x3_lahze140 ,x4_lahze140,x1_next_chosen_lahze141,x2_next_chosen_lahze141,x3_next_chosen_lahze141,x4_next_chosen_lahze141,u_star141,js1411001);
[x1_lahze142,x2_lahze142,x3_lahze142,x4_lahze142]= function4(xk, dr, A, x1_lahze141,x2_lahze141,x3_lahze141 ,x4_lahze141,x1_next_chosen_lahze142,x2_next_chosen_lahze142,x3_next_chosen_lahze142,x4_next_chosen_lahze142,u_star142,js1421001);
[x1_lahze143,x2_lahze143,x3_lahze143,x4_lahze143]= function4(xk, dr, A, x1_lahze142,x2_lahze142,x3_lahze142 ,x4_lahze142,x1_next_chosen_lahze143,x2_next_chosen_lahze143,x3_next_chosen_lahze143,x4_next_chosen_lahze143,u_star143,js1431001);
[x1_lahze144,x2_lahze144,x3_lahze144,x4_lahze144]= function4(xk, dr, A, x1_lahze143,x2_lahze143,x3_lahze143 ,x4_lahze143,x1_next_chosen_lahze144,x2_next_chosen_lahze144,x3_next_chosen_lahze144,x4_next_chosen_lahze144,u_star144,js1441001);
[x1_lahze145,x2_lahze145,x3_lahze145,x4_lahze145]= function4(xk, dr, A, x1_lahze144,x2_lahze144,x3_lahze144 ,x4_lahze144,x1_next_chosen_lahze145,x2_next_chosen_lahze145,x3_next_chosen_lahze145,x4_next_chosen_lahze145,u_star145,js1451001);
[x1_lahze146,x2_lahze146,x3_lahze146,x4_lahze146]= function4(xk, dr, A, x1_lahze145,x2_lahze145,x3_lahze145 ,x4_lahze145,x1_next_chosen_lahze146,x2_next_chosen_lahze146,x3_next_chosen_lahze146,x4_next_chosen_lahze146,u_star146,js1461001);
[x1_lahze147,x2_lahze147,x3_lahze147,x4_lahze147]= function4(xk, dr, A, x1_lahze146,x2_lahze146,x3_lahze146 ,x4_lahze146,x1_next_chosen_lahze147,x2_next_chosen_lahze147,x3_next_chosen_lahze147,x4_next_chosen_lahze147,u_star147,js1471001);
[x1_lahze148,x2_lahze148,x3_lahze148,x4_lahze148]= function4(xk, dr, A, x1_lahze147,x2_lahze147,x3_lahze147 ,x4_lahze147,x1_next_chosen_lahze148,x2_next_chosen_lahze148,x3_next_chosen_lahze148,x4_next_chosen_lahze148,u_star148,js1481001);
[x1_lahze149,x2_lahze149,x3_lahze149,x4_lahze149]= function4(xk, dr, A, x1_lahze148,x2_lahze148,x3_lahze148 ,x4_lahze148,x1_next_chosen_lahze149,x2_next_chosen_lahze149,x3_next_chosen_lahze149,x4_next_chosen_lahze149,u_star149,js1491001);
[x1_lahze150,x2_lahze150,x3_lahze150,x4_lahze150]= function4(xk, dr, A, x1_lahze149,x2_lahze149,x3_lahze149 ,x4_lahze149,x1_next_chosen_lahze150,x2_next_chosen_lahze150,x3_next_chosen_lahze150,x4_next_chosen_lahze150,u_star150,js1501001);
[x1_lahze151,x2_lahze151,x3_lahze151,x4_lahze151]= function4(xk, dr, A, x1_lahze150,x2_lahze150,x3_lahze150 ,x4_lahze150,x1_next_chosen_lahze151,x2_next_chosen_lahze151,x3_next_chosen_lahze151,x4_next_chosen_lahze151,u_star151,js1511001);
[x1_lahze152,x2_lahze152,x3_lahze152,x4_lahze152]= function4(xk, dr, A, x1_lahze151,x2_lahze151,x3_lahze151 ,x4_lahze151,x1_next_chosen_lahze152,x2_next_chosen_lahze152,x3_next_chosen_lahze152,x4_next_chosen_lahze152,u_star152,js1521001);
[x1_lahze153,x2_lahze153,x3_lahze153,x4_lahze153]= function4(xk, dr, A, x1_lahze152,x2_lahze152,x3_lahze152 ,x4_lahze152,x1_next_chosen_lahze153,x2_next_chosen_lahze153,x3_next_chosen_lahze153,x4_next_chosen_lahze153,u_star153,js1531001);
[x1_lahze154,x2_lahze154,x3_lahze154,x4_lahze154]= function4(xk, dr, A, x1_lahze153,x2_lahze153,x3_lahze153 ,x4_lahze153,x1_next_chosen_lahze154,x2_next_chosen_lahze154,x3_next_chosen_lahze154,x4_next_chosen_lahze154,u_star154,js1541001);
[x1_lahze155,x2_lahze155,x3_lahze155,x4_lahze155]= function4(xk, dr, A, x1_lahze154,x2_lahze154,x3_lahze154 ,x4_lahze154,x1_next_chosen_lahze155,x2_next_chosen_lahze155,x3_next_chosen_lahze155,x4_next_chosen_lahze155,u_star155,js1551001);
[x1_lahze156,x2_lahze156,x3_lahze156,x4_lahze156]= function4(xk, dr, A, x1_lahze155,x2_lahze155,x3_lahze155 ,x4_lahze155,x1_next_chosen_lahze156,x2_next_chosen_lahze156,x3_next_chosen_lahze156,x4_next_chosen_lahze156,u_star156,js1561001);
[x1_lahze157,x2_lahze157,x3_lahze157,x4_lahze157]= function4(xk, dr, A, x1_lahze156,x2_lahze156,x3_lahze156 ,x4_lahze156,x1_next_chosen_lahze157,x2_next_chosen_lahze157,x3_next_chosen_lahze157,x4_next_chosen_lahze157,u_star157,js1571001);
[x1_lahze158,x2_lahze158,x3_lahze158,x4_lahze158]= function4(xk, dr, A, x1_lahze157,x2_lahze157,x3_lahze157 ,x4_lahze157,x1_next_chosen_lahze158,x2_next_chosen_lahze158,x3_next_chosen_lahze158,x4_next_chosen_lahze158,u_star158,js1581001);
[x1_lahze159,x2_lahze159,x3_lahze159,x4_lahze159]= function4(xk, dr, A, x1_lahze158,x2_lahze158,x3_lahze158 ,x4_lahze158,x1_next_chosen_lahze159,x2_next_chosen_lahze159,x3_next_chosen_lahze159,x4_next_chosen_lahze159,u_star159,js1591001);
[x1_lahze160,x2_lahze160,x3_lahze160,x4_lahze160]= function4(xk, dr, A, x1_lahze159,x2_lahze159,x3_lahze159 ,x4_lahze159,x1_next_chosen_lahze160,x2_next_chosen_lahze160,x3_next_chosen_lahze160,x4_next_chosen_lahze160,u_star160,js1601001);
[x1_lahze161,x2_lahze161,x3_lahze161,x4_lahze161]= function4(xk, dr, A, x1_lahze160,x2_lahze160,x3_lahze160 ,x4_lahze160,x1_next_chosen_lahze161,x2_next_chosen_lahze161,x3_next_chosen_lahze161,x4_next_chosen_lahze161,u_star161,js1611001);
[x1_lahze162,x2_lahze162,x3_lahze162,x4_lahze162]= function4(xk, dr, A, x1_lahze161,x2_lahze161,x3_lahze161 ,x4_lahze161,x1_next_chosen_lahze162,x2_next_chosen_lahze162,x3_next_chosen_lahze162,x4_next_chosen_lahze162,u_star162,js1621001);
[x1_lahze163,x2_lahze163,x3_lahze163,x4_lahze163]= function4(xk, dr, A, x1_lahze162,x2_lahze162,x3_lahze162 ,x4_lahze162,x1_next_chosen_lahze163,x2_next_chosen_lahze163,x3_next_chosen_lahze163,x4_next_chosen_lahze163,u_star163,js1631001);
[x1_lahze164,x2_lahze164,x3_lahze164,x4_lahze164]= function4(xk, dr, A, x1_lahze163,x2_lahze163,x3_lahze163 ,x4_lahze163,x1_next_chosen_lahze164,x2_next_chosen_lahze164,x3_next_chosen_lahze164,x4_next_chosen_lahze164,u_star164,js1641001);
[x1_lahze165,x2_lahze165,x3_lahze165,x4_lahze165]= function4(xk, dr, A, x1_lahze164,x2_lahze164,x3_lahze164 ,x4_lahze164,x1_next_chosen_lahze165,x2_next_chosen_lahze165,x3_next_chosen_lahze165,x4_next_chosen_lahze165,u_star165,js1651001);
[x1_lahze166,x2_lahze166,x3_lahze166,x4_lahze166]= function4(xk, dr, A, x1_lahze165,x2_lahze165,x3_lahze165 ,x4_lahze165,x1_next_chosen_lahze166,x2_next_chosen_lahze166,x3_next_chosen_lahze166,x4_next_chosen_lahze166,u_star166,js1661001);
[x1_lahze167,x2_lahze167,x3_lahze167,x4_lahze167]= function4(xk, dr, A, x1_lahze166,x2_lahze166,x3_lahze166 ,x4_lahze166,x1_next_chosen_lahze167,x2_next_chosen_lahze167,x3_next_chosen_lahze167,x4_next_chosen_lahze167,u_star167,js1671001);
[x1_lahze168,x2_lahze168,x3_lahze168,x4_lahze168]= function4(xk, dr, A, x1_lahze167,x2_lahze167,x3_lahze167 ,x4_lahze167,x1_next_chosen_lahze168,x2_next_chosen_lahze168,x3_next_chosen_lahze168,x4_next_chosen_lahze168,u_star168,js1681001);
[x1_lahze169,x2_lahze169,x3_lahze169,x4_lahze169]= function4(xk, dr, A, x1_lahze168,x2_lahze168,x3_lahze168 ,x4_lahze168,x1_next_chosen_lahze169,x2_next_chosen_lahze169,x3_next_chosen_lahze169,x4_next_chosen_lahze169,u_star169,js1691001);
[x1_lahze170,x2_lahze170,x3_lahze170,x4_lahze170]= function4(xk, dr, A, x1_lahze169,x2_lahze169,x3_lahze169 ,x4_lahze169,x1_next_chosen_lahze170,x2_next_chosen_lahze170,x3_next_chosen_lahze170,x4_next_chosen_lahze170,u_star170,js1701001);
[x1_lahze171,x2_lahze171,x3_lahze171,x4_lahze171]= function4(xk, dr, A, x1_lahze170,x2_lahze170,x3_lahze170 ,x4_lahze170,x1_next_chosen_lahze171,x2_next_chosen_lahze171,x3_next_chosen_lahze171,x4_next_chosen_lahze171,u_star171,js1711001);
[x1_lahze172,x2_lahze172,x3_lahze172,x4_lahze172]= function4(xk, dr, A, x1_lahze171,x2_lahze171,x3_lahze171 ,x4_lahze171,x1_next_chosen_lahze172,x2_next_chosen_lahze172,x3_next_chosen_lahze172,x4_next_chosen_lahze172,u_star172,js1721001);
[x1_lahze173,x2_lahze173,x3_lahze173,x4_lahze173]= function4(xk, dr, A, x1_lahze172,x2_lahze172,x3_lahze172 ,x4_lahze172,x1_next_chosen_lahze173,x2_next_chosen_lahze173,x3_next_chosen_lahze173,x4_next_chosen_lahze173,u_star173,js1731001);
[x1_lahze174,x2_lahze174,x3_lahze174,x4_lahze174]= function4(xk, dr, A, x1_lahze173,x2_lahze173,x3_lahze173 ,x4_lahze173,x1_next_chosen_lahze174,x2_next_chosen_lahze174,x3_next_chosen_lahze174,x4_next_chosen_lahze174,u_star174,js1741001);
[x1_lahze175,x2_lahze175,x3_lahze175,x4_lahze175]= function4(xk, dr, A, x1_lahze174,x2_lahze174,x3_lahze174 ,x4_lahze174,x1_next_chosen_lahze175,x2_next_chosen_lahze175,x3_next_chosen_lahze175,x4_next_chosen_lahze175,u_star175,js1751001);
[x1_lahze176,x2_lahze176,x3_lahze176,x4_lahze176]= function4(xk, dr, A, x1_lahze175,x2_lahze175,x3_lahze175 ,x4_lahze175,x1_next_chosen_lahze176,x2_next_chosen_lahze176,x3_next_chosen_lahze176,x4_next_chosen_lahze176,u_star176,js1761001);
[x1_lahze177,x2_lahze177,x3_lahze177,x4_lahze177]= function4(xk, dr, A, x1_lahze176,x2_lahze176,x3_lahze176 ,x4_lahze176,x1_next_chosen_lahze177,x2_next_chosen_lahze177,x3_next_chosen_lahze177,x4_next_chosen_lahze177,u_star177,js1771001);
[x1_lahze178,x2_lahze178,x3_lahze178,x4_lahze178]= function4(xk, dr, A, x1_lahze177,x2_lahze177,x3_lahze177 ,x4_lahze177,x1_next_chosen_lahze178,x2_next_chosen_lahze178,x3_next_chosen_lahze178,x4_next_chosen_lahze178,u_star178,js1781001);
[x1_lahze179,x2_lahze179,x3_lahze179,x4_lahze179]= function4(xk, dr, A, x1_lahze178,x2_lahze178,x3_lahze178 ,x4_lahze178,x1_next_chosen_lahze179,x2_next_chosen_lahze179,x3_next_chosen_lahze179,x4_next_chosen_lahze179,u_star179,js1791001);
[x1_lahze180,x2_lahze180,x3_lahze180,x4_lahze180]= function4(xk, dr, A, x1_lahze179,x2_lahze179,x3_lahze179 ,x4_lahze179,x1_next_chosen_lahze180,x2_next_chosen_lahze180,x3_next_chosen_lahze180,x4_next_chosen_lahze180,u_star180,js1801001);
[x1_lahze181,x2_lahze181,x3_lahze181,x4_lahze181]= function4(xk, dr, A, x1_lahze180,x2_lahze180,x3_lahze180 ,x4_lahze180,x1_next_chosen_lahze181,x2_next_chosen_lahze181,x3_next_chosen_lahze181,x4_next_chosen_lahze181,u_star181,js1811001);
[x1_lahze182,x2_lahze182,x3_lahze182,x4_lahze182]= function4(xk, dr, A, x1_lahze181,x2_lahze181,x3_lahze181 ,x4_lahze181,x1_next_chosen_lahze182,x2_next_chosen_lahze182,x3_next_chosen_lahze182,x4_next_chosen_lahze182,u_star182,js1821001);
[x1_lahze183,x2_lahze183,x3_lahze183,x4_lahze183]= function4(xk, dr, A, x1_lahze182,x2_lahze182,x3_lahze182 ,x4_lahze182,x1_next_chosen_lahze183,x2_next_chosen_lahze183,x3_next_chosen_lahze183,x4_next_chosen_lahze183,u_star183,js1831001);
[x1_lahze184,x2_lahze184,x3_lahze184,x4_lahze184]= function4(xk, dr, A, x1_lahze183,x2_lahze183,x3_lahze183 ,x4_lahze183,x1_next_chosen_lahze184,x2_next_chosen_lahze184,x3_next_chosen_lahze184,x4_next_chosen_lahze184,u_star184,js1841001);
[x1_lahze185,x2_lahze185,x3_lahze185,x4_lahze185]= function4(xk, dr, A, x1_lahze184,x2_lahze184,x3_lahze184 ,x4_lahze184,x1_next_chosen_lahze185,x2_next_chosen_lahze185,x3_next_chosen_lahze185,x4_next_chosen_lahze185,u_star185,js1851001);
[x1_lahze186,x2_lahze186,x3_lahze186,x4_lahze186]= function4(xk, dr, A, x1_lahze185,x2_lahze185,x3_lahze185 ,x4_lahze185,x1_next_chosen_lahze186,x2_next_chosen_lahze186,x3_next_chosen_lahze186,x4_next_chosen_lahze186,u_star186,js1861001);
[x1_lahze187,x2_lahze187,x3_lahze187,x4_lahze187]= function4(xk, dr, A, x1_lahze186,x2_lahze186,x3_lahze186 ,x4_lahze186,x1_next_chosen_lahze187,x2_next_chosen_lahze187,x3_next_chosen_lahze187,x4_next_chosen_lahze187,u_star187,js1871001);
[x1_lahze188,x2_lahze188,x3_lahze188,x4_lahze188]= function4(xk, dr, A, x1_lahze187,x2_lahze187,x3_lahze187 ,x4_lahze187,x1_next_chosen_lahze188,x2_next_chosen_lahze188,x3_next_chosen_lahze188,x4_next_chosen_lahze188,u_star188,js1881001);
[x1_lahze189,x2_lahze189,x3_lahze189,x4_lahze189]= function4(xk, dr, A, x1_lahze188,x2_lahze188,x3_lahze188 ,x4_lahze188,x1_next_chosen_lahze189,x2_next_chosen_lahze189,x3_next_chosen_lahze189,x4_next_chosen_lahze189,u_star189,js1891001);
[x1_lahze190,x2_lahze190,x3_lahze190,x4_lahze190]= function4(xk, dr, A, x1_lahze189,x2_lahze189,x3_lahze189 ,x4_lahze189,x1_next_chosen_lahze190,x2_next_chosen_lahze190,x3_next_chosen_lahze190,x4_next_chosen_lahze190,u_star190,js1901001);
[x1_lahze191,x2_lahze191,x3_lahze191,x4_lahze191]= function4(xk, dr, A, x1_lahze190,x2_lahze190,x3_lahze190 ,x4_lahze190,x1_next_chosen_lahze191,x2_next_chosen_lahze191,x3_next_chosen_lahze191,x4_next_chosen_lahze191,u_star191,js1911001);
[x1_lahze192,x2_lahze192,x3_lahze192,x4_lahze192]= function4(xk, dr, A, x1_lahze191,x2_lahze191,x3_lahze191 ,x4_lahze191,x1_next_chosen_lahze192,x2_next_chosen_lahze192,x3_next_chosen_lahze192,x4_next_chosen_lahze192,u_star192,js1921001);
[x1_lahze193,x2_lahze193,x3_lahze193,x4_lahze193]= function4(xk, dr, A, x1_lahze192,x2_lahze192,x3_lahze192 ,x4_lahze192,x1_next_chosen_lahze193,x2_next_chosen_lahze193,x3_next_chosen_lahze193,x4_next_chosen_lahze193,u_star193,js1931001);
[x1_lahze194,x2_lahze194,x3_lahze194,x4_lahze194]= function4(xk, dr, A, x1_lahze193,x2_lahze193,x3_lahze193 ,x4_lahze193,x1_next_chosen_lahze194,x2_next_chosen_lahze194,x3_next_chosen_lahze194,x4_next_chosen_lahze194,u_star194,js1941001);
[x1_lahze195,x2_lahze195,x3_lahze195,x4_lahze195]= function4(xk, dr, A, x1_lahze194,x2_lahze194,x3_lahze194 ,x4_lahze194,x1_next_chosen_lahze195,x2_next_chosen_lahze195,x3_next_chosen_lahze195,x4_next_chosen_lahze195,u_star195,js1951001);
[x1_lahze196,x2_lahze196,x3_lahze196,x4_lahze196]= function4(xk, dr, A, x1_lahze195,x2_lahze195,x3_lahze195 ,x4_lahze195,x1_next_chosen_lahze196,x2_next_chosen_lahze196,x3_next_chosen_lahze196,x4_next_chosen_lahze196,u_star196,js1961001);
[x1_lahze197,x2_lahze197,x3_lahze197,x4_lahze197]= function4(xk, dr, A, x1_lahze196,x2_lahze196,x3_lahze196 ,x4_lahze196,x1_next_chosen_lahze197,x2_next_chosen_lahze197,x3_next_chosen_lahze197,x4_next_chosen_lahze197,u_star197,js1971001);
[x1_lahze198,x2_lahze198,x3_lahze198,x4_lahze198]= function4(xk, dr, A, x1_lahze197,x2_lahze197,x3_lahze197 ,x4_lahze197,x1_next_chosen_lahze198,x2_next_chosen_lahze198,x3_next_chosen_lahze198,x4_next_chosen_lahze198,u_star198,js1981001);
[x1_lahze199,x2_lahze199,x3_lahze199,x4_lahze199]= function4(xk, dr, A, x1_lahze198,x2_lahze198,x3_lahze198 ,x4_lahze198,x1_next_chosen_lahze199,x2_next_chosen_lahze199,x3_next_chosen_lahze199,x4_next_chosen_lahze199,u_star199,js1991001);
[x1_lahze200,x2_lahze200,x3_lahze200,x4_lahze200]= function4(xk, dr, A, x1_lahze199,x2_lahze199,x3_lahze199 ,x4_lahze199,x1_next_chosen_lahze200,x2_next_chosen_lahze200,x3_next_chosen_lahze200,x4_next_chosen_lahze200,u_star200,js2001001);
[x1_lahze201,x2_lahze201,x3_lahze201,x4_lahze201]= function4(xk, dr, A, x1_lahze200,x2_lahze200,x3_lahze200 ,x4_lahze200,x1_next_chosen_lahze201,x2_next_chosen_lahze201,x3_next_chosen_lahze201,x4_next_chosen_lahze201,u_star201,js2011001);
[x1_lahze202,x2_lahze202,x3_lahze202,x4_lahze202]= function4(xk, dr, A, x1_lahze201,x2_lahze201,x3_lahze201 ,x4_lahze201,x1_next_chosen_lahze202,x2_next_chosen_lahze202,x3_next_chosen_lahze202,x4_next_chosen_lahze202,u_star202,js2021001);
[x1_lahze203,x2_lahze203,x3_lahze203,x4_lahze203]= function4(xk, dr, A, x1_lahze202,x2_lahze202,x3_lahze202 ,x4_lahze202,x1_next_chosen_lahze203,x2_next_chosen_lahze203,x3_next_chosen_lahze203,x4_next_chosen_lahze203,u_star203,js2031001);
[x1_lahze204,x2_lahze204,x3_lahze204,x4_lahze204]= function4(xk, dr, A, x1_lahze203,x2_lahze203,x3_lahze203 ,x4_lahze203,x1_next_chosen_lahze204,x2_next_chosen_lahze204,x3_next_chosen_lahze204,x4_next_chosen_lahze204,u_star204,js2041001);
[x1_lahze205,x2_lahze205,x3_lahze205,x4_lahze205]= function4(xk, dr, A, x1_lahze204,x2_lahze204,x3_lahze204 ,x4_lahze204,x1_next_chosen_lahze205,x2_next_chosen_lahze205,x3_next_chosen_lahze205,x4_next_chosen_lahze205,u_star205,js2051001);
[x1_lahze206,x2_lahze206,x3_lahze206,x4_lahze206]= function4(xk, dr, A, x1_lahze205,x2_lahze205,x3_lahze205 ,x4_lahze205,x1_next_chosen_lahze206,x2_next_chosen_lahze206,x3_next_chosen_lahze206,x4_next_chosen_lahze206,u_star206,js2061001);
[x1_lahze207,x2_lahze207,x3_lahze207,x4_lahze207]= function4(xk, dr, A, x1_lahze206,x2_lahze206,x3_lahze206 ,x4_lahze206,x1_next_chosen_lahze207,x2_next_chosen_lahze207,x3_next_chosen_lahze207,x4_next_chosen_lahze207,u_star207,js2071001);
[x1_lahze208,x2_lahze208,x3_lahze208,x4_lahze208]= function4(xk, dr, A, x1_lahze207,x2_lahze207,x3_lahze207 ,x4_lahze207,x1_next_chosen_lahze208,x2_next_chosen_lahze208,x3_next_chosen_lahze208,x4_next_chosen_lahze208,u_star208,js2081001);
[x1_lahze209,x2_lahze209,x3_lahze209,x4_lahze209]= function4(xk, dr, A, x1_lahze208,x2_lahze208,x3_lahze208 ,x4_lahze208,x1_next_chosen_lahze209,x2_next_chosen_lahze209,x3_next_chosen_lahze209,x4_next_chosen_lahze209,u_star209,js2091001);
[x1_lahze210,x2_lahze210,x3_lahze210,x4_lahze210]= function4(xk, dr, A, x1_lahze209,x2_lahze209,x3_lahze209 ,x4_lahze209,x1_next_chosen_lahze210,x2_next_chosen_lahze210,x3_next_chosen_lahze210,x4_next_chosen_lahze210,u_star210,js2101001);
[x1_lahze211,x2_lahze211,x3_lahze211,x4_lahze211]= function4(xk, dr, A, x1_lahze210,x2_lahze210,x3_lahze210 ,x4_lahze210,x1_next_chosen_lahze211,x2_next_chosen_lahze211,x3_next_chosen_lahze211,x4_next_chosen_lahze211,u_star211,js2111001);
[x1_lahze212,x2_lahze212,x3_lahze212,x4_lahze212]= function4(xk, dr, A, x1_lahze211,x2_lahze211,x3_lahze211 ,x4_lahze211,x1_next_chosen_lahze212,x2_next_chosen_lahze212,x3_next_chosen_lahze212,x4_next_chosen_lahze212,u_star212,js2121001);
[x1_lahze213,x2_lahze213,x3_lahze213,x4_lahze213]= function4(xk, dr, A, x1_lahze212,x2_lahze212,x3_lahze212 ,x4_lahze212,x1_next_chosen_lahze213,x2_next_chosen_lahze213,x3_next_chosen_lahze213,x4_next_chosen_lahze213,u_star213,js2131001);
[x1_lahze214,x2_lahze214,x3_lahze214,x4_lahze214]= function4(xk, dr, A, x1_lahze213,x2_lahze213,x3_lahze213 ,x4_lahze213,x1_next_chosen_lahze214,x2_next_chosen_lahze214,x3_next_chosen_lahze214,x4_next_chosen_lahze214,u_star214,js2141001);
[x1_lahze215,x2_lahze215,x3_lahze215,x4_lahze215]= function4(xk, dr, A, x1_lahze214,x2_lahze214,x3_lahze214 ,x4_lahze214,x1_next_chosen_lahze215,x2_next_chosen_lahze215,x3_next_chosen_lahze215,x4_next_chosen_lahze215,u_star215,js2151001);
[x1_lahze216,x2_lahze216,x3_lahze216,x4_lahze216]= function4(xk, dr, A, x1_lahze215,x2_lahze215,x3_lahze215 ,x4_lahze215,x1_next_chosen_lahze216,x2_next_chosen_lahze216,x3_next_chosen_lahze216,x4_next_chosen_lahze216,u_star216,js2161001);
[x1_lahze217,x2_lahze217,x3_lahze217,x4_lahze217]= function4(xk, dr, A, x1_lahze216,x2_lahze216,x3_lahze216 ,x4_lahze216,x1_next_chosen_lahze217,x2_next_chosen_lahze217,x3_next_chosen_lahze217,x4_next_chosen_lahze217,u_star217,js2171001);
[x1_lahze218,x2_lahze218,x3_lahze218,x4_lahze218]= function4(xk, dr, A, x1_lahze217,x2_lahze217,x3_lahze217 ,x4_lahze217,x1_next_chosen_lahze218,x2_next_chosen_lahze218,x3_next_chosen_lahze218,x4_next_chosen_lahze218,u_star218,js2181001);
[x1_lahze219,x2_lahze219,x3_lahze219,x4_lahze219]= function4(xk, dr, A, x1_lahze218,x2_lahze218,x3_lahze218 ,x4_lahze218,x1_next_chosen_lahze219,x2_next_chosen_lahze219,x3_next_chosen_lahze219,x4_next_chosen_lahze219,u_star219,js2191001);
[x1_lahze220,x2_lahze220,x3_lahze220,x4_lahze220]= function4(xk, dr, A, x1_lahze219,x2_lahze219,x3_lahze219 ,x4_lahze219,x1_next_chosen_lahze220,x2_next_chosen_lahze220,x3_next_chosen_lahze220,x4_next_chosen_lahze220,u_star220,js2201001);
[x1_lahze221,x2_lahze221,x3_lahze221,x4_lahze221]= function4(xk, dr, A, x1_lahze220,x2_lahze220,x3_lahze220 ,x4_lahze220,x1_next_chosen_lahze221,x2_next_chosen_lahze221,x3_next_chosen_lahze221,x4_next_chosen_lahze221,u_star221,js2211001);
[x1_lahze222,x2_lahze222,x3_lahze222,x4_lahze222]= function4(xk, dr, A, x1_lahze221,x2_lahze221,x3_lahze221 ,x4_lahze221,x1_next_chosen_lahze222,x2_next_chosen_lahze222,x3_next_chosen_lahze222,x4_next_chosen_lahze222,u_star222,js2221001);
[x1_lahze223,x2_lahze223,x3_lahze223,x4_lahze223]= function4(xk, dr, A, x1_lahze222,x2_lahze222,x3_lahze222 ,x4_lahze222,x1_next_chosen_lahze223,x2_next_chosen_lahze223,x3_next_chosen_lahze223,x4_next_chosen_lahze223,u_star223,js2231001);
[x1_lahze224,x2_lahze224,x3_lahze224,x4_lahze224]= function4(xk, dr, A, x1_lahze223,x2_lahze223,x3_lahze223 ,x4_lahze223,x1_next_chosen_lahze224,x2_next_chosen_lahze224,x3_next_chosen_lahze224,x4_next_chosen_lahze224,u_star224,js2241001);
[x1_lahze225,x2_lahze225,x3_lahze225,x4_lahze225]= function4(xk, dr, A, x1_lahze224,x2_lahze224,x3_lahze224 ,x4_lahze224,x1_next_chosen_lahze225,x2_next_chosen_lahze225,x3_next_chosen_lahze225,x4_next_chosen_lahze225,u_star225,js2251001);
[x1_lahze226,x2_lahze226,x3_lahze226,x4_lahze226]= function4(xk, dr, A, x1_lahze225,x2_lahze225,x3_lahze225 ,x4_lahze225,x1_next_chosen_lahze226,x2_next_chosen_lahze226,x3_next_chosen_lahze226,x4_next_chosen_lahze226,u_star226,js2261001);
[x1_lahze227,x2_lahze227,x3_lahze227,x4_lahze227]= function4(xk, dr, A, x1_lahze226,x2_lahze226,x3_lahze226 ,x4_lahze226,x1_next_chosen_lahze227,x2_next_chosen_lahze227,x3_next_chosen_lahze227,x4_next_chosen_lahze227,u_star227,js2271001);
[x1_lahze228,x2_lahze228,x3_lahze228,x4_lahze228]= function4(xk, dr, A, x1_lahze227,x2_lahze227,x3_lahze227 ,x4_lahze227,x1_next_chosen_lahze228,x2_next_chosen_lahze228,x3_next_chosen_lahze228,x4_next_chosen_lahze228,u_star228,js2281001);
[x1_lahze229,x2_lahze229,x3_lahze229,x4_lahze229]= function4(xk, dr, A, x1_lahze228,x2_lahze228,x3_lahze228 ,x4_lahze228,x1_next_chosen_lahze229,x2_next_chosen_lahze229,x3_next_chosen_lahze229,x4_next_chosen_lahze229,u_star229,js2291001);
[x1_lahze230,x2_lahze230,x3_lahze230,x4_lahze230]= function4(xk, dr, A, x1_lahze229,x2_lahze229,x3_lahze229 ,x4_lahze229,x1_next_chosen_lahze230,x2_next_chosen_lahze230,x3_next_chosen_lahze230,x4_next_chosen_lahze230,u_star230,js2301001);
[x1_lahze231,x2_lahze231,x3_lahze231,x4_lahze231]= function4(xk, dr, A, x1_lahze230,x2_lahze230,x3_lahze230 ,x4_lahze230,x1_next_chosen_lahze231,x2_next_chosen_lahze231,x3_next_chosen_lahze231,x4_next_chosen_lahze231,u_star231,js2311001);
[x1_lahze232,x2_lahze232,x3_lahze232,x4_lahze232]= function4(xk, dr, A, x1_lahze231,x2_lahze231,x3_lahze231 ,x4_lahze231,x1_next_chosen_lahze232,x2_next_chosen_lahze232,x3_next_chosen_lahze232,x4_next_chosen_lahze232,u_star232,js2321001);
[x1_lahze233,x2_lahze233,x3_lahze233,x4_lahze233]= function4(xk, dr, A, x1_lahze232,x2_lahze232,x3_lahze232 ,x4_lahze232,x1_next_chosen_lahze233,x2_next_chosen_lahze233,x3_next_chosen_lahze233,x4_next_chosen_lahze233,u_star233,js2331001);
[x1_lahze234,x2_lahze234,x3_lahze234,x4_lahze234]= function4(xk, dr, A, x1_lahze233,x2_lahze233,x3_lahze233 ,x4_lahze233,x1_next_chosen_lahze234,x2_next_chosen_lahze234,x3_next_chosen_lahze234,x4_next_chosen_lahze234,u_star234,js2341001);
[x1_lahze235,x2_lahze235,x3_lahze235,x4_lahze235]= function4(xk, dr, A, x1_lahze234,x2_lahze234,x3_lahze234 ,x4_lahze234,x1_next_chosen_lahze235,x2_next_chosen_lahze235,x3_next_chosen_lahze235,x4_next_chosen_lahze235,u_star235,js2351001);
[x1_lahze236,x2_lahze236,x3_lahze236,x4_lahze236]= function4(xk, dr, A, x1_lahze235,x2_lahze235,x3_lahze235 ,x4_lahze235,x1_next_chosen_lahze236,x2_next_chosen_lahze236,x3_next_chosen_lahze236,x4_next_chosen_lahze236,u_star236,js2361001);
[x1_lahze237,x2_lahze237,x3_lahze237,x4_lahze237]= function4(xk, dr, A, x1_lahze236,x2_lahze236,x3_lahze236 ,x4_lahze236,x1_next_chosen_lahze237,x2_next_chosen_lahze237,x3_next_chosen_lahze237,x4_next_chosen_lahze237,u_star237,js2371001);
[x1_lahze238,x2_lahze238,x3_lahze238,x4_lahze238]= function4(xk, dr, A, x1_lahze237,x2_lahze237,x3_lahze237 ,x4_lahze237,x1_next_chosen_lahze238,x2_next_chosen_lahze238,x3_next_chosen_lahze238,x4_next_chosen_lahze238,u_star238,js2381001);
[x1_lahze239,x2_lahze239,x3_lahze239,x4_lahze239]= function4(xk, dr, A, x1_lahze238,x2_lahze238,x3_lahze238 ,x4_lahze238,x1_next_chosen_lahze239,x2_next_chosen_lahze239,x3_next_chosen_lahze239,x4_next_chosen_lahze239,u_star239,js2391001);
[x1_lahze240,x2_lahze240,x3_lahze240,x4_lahze240]= function4(xk, dr, A, x1_lahze239,x2_lahze239,x3_lahze239 ,x4_lahze239,x1_next_chosen_lahze240,x2_next_chosen_lahze240,x3_next_chosen_lahze240,x4_next_chosen_lahze240,u_star240,js2401001);
[x1_lahze241,x2_lahze241,x3_lahze241,x4_lahze241]= function4(xk, dr, A, x1_lahze240,x2_lahze240,x3_lahze240 ,x4_lahze240,x1_next_chosen_lahze241,x2_next_chosen_lahze241,x3_next_chosen_lahze241,x4_next_chosen_lahze241,u_star241,js2411001);
[x1_lahze242,x2_lahze242,x3_lahze242,x4_lahze242]= function4(xk, dr, A, x1_lahze241,x2_lahze241,x3_lahze241 ,x4_lahze241,x1_next_chosen_lahze242,x2_next_chosen_lahze242,x3_next_chosen_lahze242,x4_next_chosen_lahze242,u_star242,js2421001);
[x1_lahze243,x2_lahze243,x3_lahze243,x4_lahze243]= function4(xk, dr, A, x1_lahze242,x2_lahze242,x3_lahze242 ,x4_lahze242,x1_next_chosen_lahze243,x2_next_chosen_lahze243,x3_next_chosen_lahze243,x4_next_chosen_lahze243,u_star243,js2431001);
[x1_lahze244,x2_lahze244,x3_lahze244,x4_lahze244]= function4(xk, dr, A, x1_lahze243,x2_lahze243,x3_lahze243 ,x4_lahze243,x1_next_chosen_lahze244,x2_next_chosen_lahze244,x3_next_chosen_lahze244,x4_next_chosen_lahze244,u_star244,js2441001);
[x1_lahze245,x2_lahze245,x3_lahze245,x4_lahze245]= function4(xk, dr, A, x1_lahze244,x2_lahze244,x3_lahze244 ,x4_lahze244,x1_next_chosen_lahze245,x2_next_chosen_lahze245,x3_next_chosen_lahze245,x4_next_chosen_lahze245,u_star245,js2451001);
[x1_lahze246,x2_lahze246,x3_lahze246,x4_lahze246]= function4(xk, dr, A, x1_lahze245,x2_lahze245,x3_lahze245 ,x4_lahze245,x1_next_chosen_lahze246,x2_next_chosen_lahze246,x3_next_chosen_lahze246,x4_next_chosen_lahze246,u_star246,js2461001);
[x1_lahze247,x2_lahze247,x3_lahze247,x4_lahze247]= function4(xk, dr, A, x1_lahze246,x2_lahze246,x3_lahze246 ,x4_lahze246,x1_next_chosen_lahze247,x2_next_chosen_lahze247,x3_next_chosen_lahze247,x4_next_chosen_lahze247,u_star247,js2471001);
[x1_lahze248,x2_lahze248,x3_lahze248,x4_lahze248]= function4(xk, dr, A, x1_lahze247,x2_lahze247,x3_lahze247 ,x4_lahze247,x1_next_chosen_lahze248,x2_next_chosen_lahze248,x3_next_chosen_lahze248,x4_next_chosen_lahze248,u_star248,js2481001);
[x1_lahze249,x2_lahze249,x3_lahze249,x4_lahze249]= function4(xk, dr, A, x1_lahze248,x2_lahze248,x3_lahze248 ,x4_lahze248,x1_next_chosen_lahze249,x2_next_chosen_lahze249,x3_next_chosen_lahze249,x4_next_chosen_lahze249,u_star249,js2491001);
[x1_lahze250,x2_lahze250,x3_lahze250,x4_lahze250]= function4(xk, dr, A, x1_lahze249,x2_lahze249,x3_lahze249 ,x4_lahze249,x1_next_chosen_lahze250,x2_next_chosen_lahze250,x3_next_chosen_lahze250,x4_next_chosen_lahze250,u_star250,js2501001);
[x1_lahze251,x2_lahze251,x3_lahze251,x4_lahze251]= function4(xk, dr, A, x1_lahze250,x2_lahze250,x3_lahze250 ,x4_lahze250,x1_next_chosen_lahze251,x2_next_chosen_lahze251,x3_next_chosen_lahze251,x4_next_chosen_lahze251,u_star251,js2511001);
[x1_lahze252,x2_lahze252,x3_lahze252,x4_lahze252]= function4(xk, dr, A, x1_lahze251,x2_lahze251,x3_lahze251 ,x4_lahze251,x1_next_chosen_lahze252,x2_next_chosen_lahze252,x3_next_chosen_lahze252,x4_next_chosen_lahze252,u_star252,js2521001);
[x1_lahze253,x2_lahze253,x3_lahze253,x4_lahze253]= function4(xk, dr, A, x1_lahze252,x2_lahze252,x3_lahze252 ,x4_lahze252,x1_next_chosen_lahze253,x2_next_chosen_lahze253,x3_next_chosen_lahze253,x4_next_chosen_lahze253,u_star253,js2531001);
[x1_lahze254,x2_lahze254,x3_lahze254,x4_lahze254]= function4(xk, dr, A, x1_lahze253,x2_lahze253,x3_lahze253 ,x4_lahze253,x1_next_chosen_lahze254,x2_next_chosen_lahze254,x3_next_chosen_lahze254,x4_next_chosen_lahze254,u_star254,js2541001);
[x1_lahze255,x2_lahze255,x3_lahze255,x4_lahze255]= function4(xk, dr, A, x1_lahze254,x2_lahze254,x3_lahze254 ,x4_lahze254,x1_next_chosen_lahze255,x2_next_chosen_lahze255,x3_next_chosen_lahze255,x4_next_chosen_lahze255,u_star255,js2551001);
[x1_lahze256,x2_lahze256,x3_lahze256,x4_lahze256]= function4(xk, dr, A, x1_lahze255,x2_lahze255,x3_lahze255 ,x4_lahze255,x1_next_chosen_lahze256,x2_next_chosen_lahze256,x3_next_chosen_lahze256,x4_next_chosen_lahze256,u_star256,js2561001);
[x1_lahze257,x2_lahze257,x3_lahze257,x4_lahze257]= function4(xk, dr, A, x1_lahze256,x2_lahze256,x3_lahze256 ,x4_lahze256,x1_next_chosen_lahze257,x2_next_chosen_lahze257,x3_next_chosen_lahze257,x4_next_chosen_lahze257,u_star257,js2571001);
[x1_lahze258,x2_lahze258,x3_lahze258,x4_lahze258]= function4(xk, dr, A, x1_lahze257,x2_lahze257,x3_lahze257 ,x4_lahze257,x1_next_chosen_lahze258,x2_next_chosen_lahze258,x3_next_chosen_lahze258,x4_next_chosen_lahze258,u_star258,js2581001);
[x1_lahze259,x2_lahze259,x3_lahze259,x4_lahze259]= function4(xk, dr, A, x1_lahze258,x2_lahze258,x3_lahze258 ,x4_lahze258,x1_next_chosen_lahze259,x2_next_chosen_lahze259,x3_next_chosen_lahze259,x4_next_chosen_lahze259,u_star259,js2591001);
[x1_lahze260,x2_lahze260,x3_lahze260,x4_lahze260]= function4(xk, dr, A, x1_lahze259,x2_lahze259,x3_lahze259 ,x4_lahze259,x1_next_chosen_lahze260,x2_next_chosen_lahze260,x3_next_chosen_lahze260,x4_next_chosen_lahze260,u_star260,js2601001);
[x1_lahze261,x2_lahze261,x3_lahze261,x4_lahze261]= function4(xk, dr, A, x1_lahze260,x2_lahze260,x3_lahze260 ,x4_lahze260,x1_next_chosen_lahze261,x2_next_chosen_lahze261,x3_next_chosen_lahze261,x4_next_chosen_lahze261,u_star261,js2611001);
[x1_lahze262,x2_lahze262,x3_lahze262,x4_lahze262]= function4(xk, dr, A, x1_lahze261,x2_lahze261,x3_lahze261 ,x4_lahze261,x1_next_chosen_lahze262,x2_next_chosen_lahze262,x3_next_chosen_lahze262,x4_next_chosen_lahze262,u_star262,js2621001);
[x1_lahze263,x2_lahze263,x3_lahze263,x4_lahze263]= function4(xk, dr, A, x1_lahze262,x2_lahze262,x3_lahze262 ,x4_lahze262,x1_next_chosen_lahze263,x2_next_chosen_lahze263,x3_next_chosen_lahze263,x4_next_chosen_lahze263,u_star263,js2631001);
[x1_lahze264,x2_lahze264,x3_lahze264,x4_lahze264]= function4(xk, dr, A, x1_lahze263,x2_lahze263,x3_lahze263 ,x4_lahze263,x1_next_chosen_lahze264,x2_next_chosen_lahze264,x3_next_chosen_lahze264,x4_next_chosen_lahze264,u_star264,js2641001);
[x1_lahze265,x2_lahze265,x3_lahze265,x4_lahze265]= function4(xk, dr, A, x1_lahze264,x2_lahze264,x3_lahze264 ,x4_lahze264,x1_next_chosen_lahze265,x2_next_chosen_lahze265,x3_next_chosen_lahze265,x4_next_chosen_lahze265,u_star265,js2651001);
[x1_lahze266,x2_lahze266,x3_lahze266,x4_lahze266]= function4(xk, dr, A, x1_lahze265,x2_lahze265,x3_lahze265 ,x4_lahze265,x1_next_chosen_lahze266,x2_next_chosen_lahze266,x3_next_chosen_lahze266,x4_next_chosen_lahze266,u_star266,js2661001);
[x1_lahze267,x2_lahze267,x3_lahze267,x4_lahze267]= function4(xk, dr, A, x1_lahze266,x2_lahze266,x3_lahze266 ,x4_lahze266,x1_next_chosen_lahze267,x2_next_chosen_lahze267,x3_next_chosen_lahze267,x4_next_chosen_lahze267,u_star267,js2671001);
[x1_lahze268,x2_lahze268,x3_lahze268,x4_lahze268]= function4(xk, dr, A, x1_lahze267,x2_lahze267,x3_lahze267 ,x4_lahze267,x1_next_chosen_lahze268,x2_next_chosen_lahze268,x3_next_chosen_lahze268,x4_next_chosen_lahze268,u_star268,js2681001);
[x1_lahze269,x2_lahze269,x3_lahze269,x4_lahze269]= function4(xk, dr, A, x1_lahze268,x2_lahze268,x3_lahze268 ,x4_lahze268,x1_next_chosen_lahze269,x2_next_chosen_lahze269,x3_next_chosen_lahze269,x4_next_chosen_lahze269,u_star269,js2691001);
[x1_lahze270,x2_lahze270,x3_lahze270,x4_lahze270]= function4(xk, dr, A, x1_lahze269,x2_lahze269,x3_lahze269 ,x4_lahze269,x1_next_chosen_lahze270,x2_next_chosen_lahze270,x3_next_chosen_lahze270,x4_next_chosen_lahze270,u_star270,js2701001);
[x1_lahze271,x2_lahze271,x3_lahze271,x4_lahze271]= function4(xk, dr, A, x1_lahze270,x2_lahze270,x3_lahze270 ,x4_lahze270,x1_next_chosen_lahze271,x2_next_chosen_lahze271,x3_next_chosen_lahze271,x4_next_chosen_lahze271,u_star271,js2711001);
[x1_lahze272,x2_lahze272,x3_lahze272,x4_lahze272]= function4(xk, dr, A, x1_lahze271,x2_lahze271,x3_lahze271 ,x4_lahze271,x1_next_chosen_lahze272,x2_next_chosen_lahze272,x3_next_chosen_lahze272,x4_next_chosen_lahze272,u_star272,js2721001);
[x1_lahze273,x2_lahze273,x3_lahze273,x4_lahze273]= function4(xk, dr, A, x1_lahze272,x2_lahze272,x3_lahze272 ,x4_lahze272,x1_next_chosen_lahze273,x2_next_chosen_lahze273,x3_next_chosen_lahze273,x4_next_chosen_lahze273,u_star273,js2731001);
[x1_lahze274,x2_lahze274,x3_lahze274,x4_lahze274]= function4(xk, dr, A, x1_lahze273,x2_lahze273,x3_lahze273 ,x4_lahze273,x1_next_chosen_lahze274,x2_next_chosen_lahze274,x3_next_chosen_lahze274,x4_next_chosen_lahze274,u_star274,js2741001);
[x1_lahze275,x2_lahze275,x3_lahze275,x4_lahze275]= function4(xk, dr, A, x1_lahze274,x2_lahze274,x3_lahze274 ,x4_lahze274,x1_next_chosen_lahze275,x2_next_chosen_lahze275,x3_next_chosen_lahze275,x4_next_chosen_lahze275,u_star275,js2751001);
[x1_lahze276,x2_lahze276,x3_lahze276,x4_lahze276]= function4(xk, dr, A, x1_lahze275,x2_lahze275,x3_lahze275 ,x4_lahze275,x1_next_chosen_lahze276,x2_next_chosen_lahze276,x3_next_chosen_lahze276,x4_next_chosen_lahze276,u_star276,js2761001);
[x1_lahze277,x2_lahze277,x3_lahze277,x4_lahze277]= function4(xk, dr, A, x1_lahze276,x2_lahze276,x3_lahze276 ,x4_lahze276,x1_next_chosen_lahze277,x2_next_chosen_lahze277,x3_next_chosen_lahze277,x4_next_chosen_lahze277,u_star277,js2771001);
[x1_lahze278,x2_lahze278,x3_lahze278,x4_lahze278]= function4(xk, dr, A, x1_lahze277,x2_lahze277,x3_lahze277 ,x4_lahze277,x1_next_chosen_lahze278,x2_next_chosen_lahze278,x3_next_chosen_lahze278,x4_next_chosen_lahze278,u_star278,js2781001);
[x1_lahze279,x2_lahze279,x3_lahze279,x4_lahze279]= function4(xk, dr, A, x1_lahze278,x2_lahze278,x3_lahze278 ,x4_lahze278,x1_next_chosen_lahze279,x2_next_chosen_lahze279,x3_next_chosen_lahze279,x4_next_chosen_lahze279,u_star279,js2791001);
[x1_lahze280,x2_lahze280,x3_lahze280,x4_lahze280]= function4(xk, dr, A, x1_lahze279,x2_lahze279,x3_lahze279 ,x4_lahze279,x1_next_chosen_lahze280,x2_next_chosen_lahze280,x3_next_chosen_lahze280,x4_next_chosen_lahze280,u_star280,js2801001);
[x1_lahze281,x2_lahze281,x3_lahze281,x4_lahze281]= function4(xk, dr, A, x1_lahze280,x2_lahze280,x3_lahze280 ,x4_lahze280,x1_next_chosen_lahze281,x2_next_chosen_lahze281,x3_next_chosen_lahze281,x4_next_chosen_lahze281,u_star281,js2811001);
[x1_lahze282,x2_lahze282,x3_lahze282,x4_lahze282]= function4(xk, dr, A, x1_lahze281,x2_lahze281,x3_lahze281 ,x4_lahze281,x1_next_chosen_lahze282,x2_next_chosen_lahze282,x3_next_chosen_lahze282,x4_next_chosen_lahze282,u_star282,js2821001);
[x1_lahze283,x2_lahze283,x3_lahze283,x4_lahze283]= function4(xk, dr, A, x1_lahze282,x2_lahze282,x3_lahze282 ,x4_lahze282,x1_next_chosen_lahze283,x2_next_chosen_lahze283,x3_next_chosen_lahze283,x4_next_chosen_lahze283,u_star283,js2831001);
[x1_lahze284,x2_lahze284,x3_lahze284,x4_lahze284]= function4(xk, dr, A, x1_lahze283,x2_lahze283,x3_lahze283 ,x4_lahze283,x1_next_chosen_lahze284,x2_next_chosen_lahze284,x3_next_chosen_lahze284,x4_next_chosen_lahze284,u_star284,js2841001);
[x1_lahze285,x2_lahze285,x3_lahze285,x4_lahze285]= function4(xk, dr, A, x1_lahze284,x2_lahze284,x3_lahze284 ,x4_lahze284,x1_next_chosen_lahze285,x2_next_chosen_lahze285,x3_next_chosen_lahze285,x4_next_chosen_lahze285,u_star285,js2851001);
[x1_lahze286,x2_lahze286,x3_lahze286,x4_lahze286]= function4(xk, dr, A, x1_lahze285,x2_lahze285,x3_lahze285 ,x4_lahze285,x1_next_chosen_lahze286,x2_next_chosen_lahze286,x3_next_chosen_lahze286,x4_next_chosen_lahze286,u_star286,js2861001);
[x1_lahze287,x2_lahze287,x3_lahze287,x4_lahze287]= function4(xk, dr, A, x1_lahze286,x2_lahze286,x3_lahze286 ,x4_lahze286,x1_next_chosen_lahze287,x2_next_chosen_lahze287,x3_next_chosen_lahze287,x4_next_chosen_lahze287,u_star287,js2871001);
[x1_lahze288,x2_lahze288,x3_lahze288,x4_lahze288]= function4(xk, dr, A, x1_lahze287,x2_lahze287,x3_lahze287 ,x4_lahze287,x1_next_chosen_lahze288,x2_next_chosen_lahze288,x3_next_chosen_lahze288,x4_next_chosen_lahze288,u_star288,js2881001);
[x1_lahze289,x2_lahze289,x3_lahze289,x4_lahze289]= function4(xk, dr, A, x1_lahze288,x2_lahze288,x3_lahze288 ,x4_lahze288,x1_next_chosen_lahze289,x2_next_chosen_lahze289,x3_next_chosen_lahze289,x4_next_chosen_lahze289,u_star289,js2891001);
[x1_lahze290,x2_lahze290,x3_lahze290,x4_lahze290]= function4(xk, dr, A, x1_lahze289,x2_lahze289,x3_lahze289 ,x4_lahze289,x1_next_chosen_lahze290,x2_next_chosen_lahze290,x3_next_chosen_lahze290,x4_next_chosen_lahze290,u_star290,js2901001);
[x1_lahze291,x2_lahze291,x3_lahze291,x4_lahze291]= function4(xk, dr, A, x1_lahze290,x2_lahze290,x3_lahze290 ,x4_lahze290,x1_next_chosen_lahze291,x2_next_chosen_lahze291,x3_next_chosen_lahze291,x4_next_chosen_lahze291,u_star291,js2911001);
[x1_lahze292,x2_lahze292,x3_lahze292,x4_lahze292]= function4(xk, dr, A, x1_lahze291,x2_lahze291,x3_lahze291 ,x4_lahze291,x1_next_chosen_lahze292,x2_next_chosen_lahze292,x3_next_chosen_lahze292,x4_next_chosen_lahze292,u_star292,js2921001);
[x1_lahze293,x2_lahze293,x3_lahze293,x4_lahze293]= function4(xk, dr, A, x1_lahze292,x2_lahze292,x3_lahze292 ,x4_lahze292,x1_next_chosen_lahze293,x2_next_chosen_lahze293,x3_next_chosen_lahze293,x4_next_chosen_lahze293,u_star293,js2931001);
[x1_lahze294,x2_lahze294,x3_lahze294,x4_lahze294]= function4(xk, dr, A, x1_lahze293,x2_lahze293,x3_lahze293 ,x4_lahze293,x1_next_chosen_lahze294,x2_next_chosen_lahze294,x3_next_chosen_lahze294,x4_next_chosen_lahze294,u_star294,js2941001);
[x1_lahze295,x2_lahze295,x3_lahze295,x4_lahze295]= function4(xk, dr, A, x1_lahze294,x2_lahze294,x3_lahze294 ,x4_lahze294,x1_next_chosen_lahze295,x2_next_chosen_lahze295,x3_next_chosen_lahze295,x4_next_chosen_lahze295,u_star295,js2951001);
[x1_lahze296,x2_lahze296,x3_lahze296,x4_lahze296]= function4(xk, dr, A, x1_lahze295,x2_lahze295,x3_lahze295 ,x4_lahze295,x1_next_chosen_lahze296,x2_next_chosen_lahze296,x3_next_chosen_lahze296,x4_next_chosen_lahze296,u_star296,js2961001);
[x1_lahze297,x2_lahze297,x3_lahze297,x4_lahze297]= function4(xk, dr, A, x1_lahze296,x2_lahze296,x3_lahze296 ,x4_lahze296,x1_next_chosen_lahze297,x2_next_chosen_lahze297,x3_next_chosen_lahze297,x4_next_chosen_lahze297,u_star297,js2971001);
[x1_lahze298,x2_lahze298,x3_lahze298,x4_lahze298]= function4(xk, dr, A, x1_lahze297,x2_lahze297,x3_lahze297 ,x4_lahze297,x1_next_chosen_lahze298,x2_next_chosen_lahze298,x3_next_chosen_lahze298,x4_next_chosen_lahze298,u_star298,js2981001);
[x1_lahze299,x2_lahze299,x3_lahze299,x4_lahze299]= function4(xk, dr, A, x1_lahze298,x2_lahze298,x3_lahze298 ,x4_lahze298,x1_next_chosen_lahze299,x2_next_chosen_lahze299,x3_next_chosen_lahze299,x4_next_chosen_lahze299,u_star299,js2991001);
[x1_lahze300,x2_lahze300,x3_lahze300,x4_lahze300]= function4(xk, dr, A, x1_lahze299,x2_lahze299,x3_lahze299 ,x4_lahze299,x1_next_chosen_lahze300,x2_next_chosen_lahze300,x3_next_chosen_lahze300,x4_next_chosen_lahze300,u_star300,js3001001);
[x1_lahze301,x2_lahze301,x3_lahze301,x4_lahze301]= function4(xk, dr, A, x1_lahze300,x2_lahze300,x3_lahze300 ,x4_lahze300,x1_next_chosen_lahze301,x2_next_chosen_lahze301,x3_next_chosen_lahze301,x4_next_chosen_lahze301,u_star301,js3011001);
[x1_lahze302,x2_lahze302,x3_lahze302,x4_lahze302]= function4(xk, dr, A, x1_lahze301,x2_lahze301,x3_lahze301 ,x4_lahze301,x1_next_chosen_lahze302,x2_next_chosen_lahze302,x3_next_chosen_lahze302,x4_next_chosen_lahze302,u_star302,js3021001);
[x1_lahze303,x2_lahze303,x3_lahze303,x4_lahze303]= function4(xk, dr, A, x1_lahze302,x2_lahze302,x3_lahze302 ,x4_lahze302,x1_next_chosen_lahze303,x2_next_chosen_lahze303,x3_next_chosen_lahze303,x4_next_chosen_lahze303,u_star303,js3031001);
[x1_lahze304,x2_lahze304,x3_lahze304,x4_lahze304]= function4(xk, dr, A, x1_lahze303,x2_lahze303,x3_lahze303 ,x4_lahze303,x1_next_chosen_lahze304,x2_next_chosen_lahze304,x3_next_chosen_lahze304,x4_next_chosen_lahze304,u_star304,js3041001);
[x1_lahze305,x2_lahze305,x3_lahze305,x4_lahze305]= function4(xk, dr, A, x1_lahze304,x2_lahze304,x3_lahze304 ,x4_lahze304,x1_next_chosen_lahze305,x2_next_chosen_lahze305,x3_next_chosen_lahze305,x4_next_chosen_lahze305,u_star305,js3051001);
[x1_lahze306,x2_lahze306,x3_lahze306,x4_lahze306]= function4(xk, dr, A, x1_lahze305,x2_lahze305,x3_lahze305 ,x4_lahze305,x1_next_chosen_lahze306,x2_next_chosen_lahze306,x3_next_chosen_lahze306,x4_next_chosen_lahze306,u_star306,js3061001);
[x1_lahze307,x2_lahze307,x3_lahze307,x4_lahze307]= function4(xk, dr, A, x1_lahze306,x2_lahze306,x3_lahze306 ,x4_lahze306,x1_next_chosen_lahze307,x2_next_chosen_lahze307,x3_next_chosen_lahze307,x4_next_chosen_lahze307,u_star307,js3071001);
[x1_lahze308,x2_lahze308,x3_lahze308,x4_lahze308]= function4(xk, dr, A, x1_lahze307,x2_lahze307,x3_lahze307 ,x4_lahze307,x1_next_chosen_lahze308,x2_next_chosen_lahze308,x3_next_chosen_lahze308,x4_next_chosen_lahze308,u_star308,js3081001);
[x1_lahze309,x2_lahze309,x3_lahze309,x4_lahze309]= function4(xk, dr, A, x1_lahze308,x2_lahze308,x3_lahze308 ,x4_lahze308,x1_next_chosen_lahze309,x2_next_chosen_lahze309,x3_next_chosen_lahze309,x4_next_chosen_lahze309,u_star309,js3091001);
[x1_lahze310,x2_lahze310,x3_lahze310,x4_lahze310]= function4(xk, dr, A, x1_lahze309,x2_lahze309,x3_lahze309 ,x4_lahze309,x1_next_chosen_lahze310,x2_next_chosen_lahze310,x3_next_chosen_lahze310,x4_next_chosen_lahze310,u_star310,js3101001);
[x1_lahze311,x2_lahze311,x3_lahze311,x4_lahze311]= function4(xk, dr, A, x1_lahze310,x2_lahze310,x3_lahze310 ,x4_lahze310,x1_next_chosen_lahze311,x2_next_chosen_lahze311,x3_next_chosen_lahze311,x4_next_chosen_lahze311,u_star311,js3111001);
[x1_lahze312,x2_lahze312,x3_lahze312,x4_lahze312]= function4(xk, dr, A, x1_lahze311,x2_lahze311,x3_lahze311 ,x4_lahze311,x1_next_chosen_lahze312,x2_next_chosen_lahze312,x3_next_chosen_lahze312,x4_next_chosen_lahze312,u_star312,js3121001);
[x1_lahze313,x2_lahze313,x3_lahze313,x4_lahze313]= function4(xk, dr, A, x1_lahze312,x2_lahze312,x3_lahze312 ,x4_lahze312,x1_next_chosen_lahze313,x2_next_chosen_lahze313,x3_next_chosen_lahze313,x4_next_chosen_lahze313,u_star313,js3131001);
[x1_lahze314,x2_lahze314,x3_lahze314,x4_lahze314]= function4(xk, dr, A, x1_lahze313,x2_lahze313,x3_lahze313 ,x4_lahze313,x1_next_chosen_lahze314,x2_next_chosen_lahze314,x3_next_chosen_lahze314,x4_next_chosen_lahze314,u_star314,js3141001);
[x1_lahze315,x2_lahze315,x3_lahze315,x4_lahze315]= function4(xk, dr, A, x1_lahze314,x2_lahze314,x3_lahze314 ,x4_lahze314,x1_next_chosen_lahze315,x2_next_chosen_lahze315,x3_next_chosen_lahze315,x4_next_chosen_lahze315,u_star315,js3151001);
[x1_lahze316,x2_lahze316,x3_lahze316,x4_lahze316]= function4(xk, dr, A, x1_lahze315,x2_lahze315,x3_lahze315 ,x4_lahze315,x1_next_chosen_lahze316,x2_next_chosen_lahze316,x3_next_chosen_lahze316,x4_next_chosen_lahze316,u_star316,js3161001);
[x1_lahze317,x2_lahze317,x3_lahze317,x4_lahze317]= function4(xk, dr, A, x1_lahze316,x2_lahze316,x3_lahze316 ,x4_lahze316,x1_next_chosen_lahze317,x2_next_chosen_lahze317,x3_next_chosen_lahze317,x4_next_chosen_lahze317,u_star317,js3171001);
[x1_lahze318,x2_lahze318,x3_lahze318,x4_lahze318]= function4(xk, dr, A, x1_lahze317,x2_lahze317,x3_lahze317 ,x4_lahze317,x1_next_chosen_lahze318,x2_next_chosen_lahze318,x3_next_chosen_lahze318,x4_next_chosen_lahze318,u_star318,js3181001);
[x1_lahze319,x2_lahze319,x3_lahze319,x4_lahze319]= function4(xk, dr, A, x1_lahze318,x2_lahze318,x3_lahze318 ,x4_lahze318,x1_next_chosen_lahze319,x2_next_chosen_lahze319,x3_next_chosen_lahze319,x4_next_chosen_lahze319,u_star319,js3191001);
[x1_lahze320,x2_lahze320,x3_lahze320,x4_lahze320]= function4(xk, dr, A, x1_lahze319,x2_lahze319,x3_lahze319 ,x4_lahze319,x1_next_chosen_lahze320,x2_next_chosen_lahze320,x3_next_chosen_lahze320,x4_next_chosen_lahze320,u_star320,js3201001);
[x1_lahze321,x2_lahze321,x3_lahze321,x4_lahze321]= function4(xk, dr, A, x1_lahze320,x2_lahze320,x3_lahze320 ,x4_lahze320,x1_next_chosen_lahze321,x2_next_chosen_lahze321,x3_next_chosen_lahze321,x4_next_chosen_lahze321,u_star321,js3211001);
[x1_lahze322,x2_lahze322,x3_lahze322,x4_lahze322]= function4(xk, dr, A, x1_lahze321,x2_lahze321,x3_lahze321 ,x4_lahze321,x1_next_chosen_lahze322,x2_next_chosen_lahze322,x3_next_chosen_lahze322,x4_next_chosen_lahze322,u_star322,js3221001);
[x1_lahze323,x2_lahze323,x3_lahze323,x4_lahze323]= function4(xk, dr, A, x1_lahze322,x2_lahze322,x3_lahze322 ,x4_lahze322,x1_next_chosen_lahze323,x2_next_chosen_lahze323,x3_next_chosen_lahze323,x4_next_chosen_lahze323,u_star323,js3231001);
[x1_lahze324,x2_lahze324,x3_lahze324,x4_lahze324]= function4(xk, dr, A, x1_lahze323,x2_lahze323,x3_lahze323 ,x4_lahze323,x1_next_chosen_lahze324,x2_next_chosen_lahze324,x3_next_chosen_lahze324,x4_next_chosen_lahze324,u_star324,js3241001);
[x1_lahze325,x2_lahze325,x3_lahze325,x4_lahze325]= function4(xk, dr, A, x1_lahze324,x2_lahze324,x3_lahze324 ,x4_lahze324,x1_next_chosen_lahze325,x2_next_chosen_lahze325,x3_next_chosen_lahze325,x4_next_chosen_lahze325,u_star325,js3251001);
[x1_lahze326,x2_lahze326,x3_lahze326,x4_lahze326]= function4(xk, dr, A, x1_lahze325,x2_lahze325,x3_lahze325 ,x4_lahze325,x1_next_chosen_lahze326,x2_next_chosen_lahze326,x3_next_chosen_lahze326,x4_next_chosen_lahze326,u_star326,js3261001);
[x1_lahze327,x2_lahze327,x3_lahze327,x4_lahze327]= function4(xk, dr, A, x1_lahze326,x2_lahze326,x3_lahze326 ,x4_lahze326,x1_next_chosen_lahze327,x2_next_chosen_lahze327,x3_next_chosen_lahze327,x4_next_chosen_lahze327,u_star327,js3271001);
[x1_lahze328,x2_lahze328,x3_lahze328,x4_lahze328]= function4(xk, dr, A, x1_lahze327,x2_lahze327,x3_lahze327 ,x4_lahze327,x1_next_chosen_lahze328,x2_next_chosen_lahze328,x3_next_chosen_lahze328,x4_next_chosen_lahze328,u_star328,js3281001);
[x1_lahze329,x2_lahze329,x3_lahze329,x4_lahze329]= function4(xk, dr, A, x1_lahze328,x2_lahze328,x3_lahze328 ,x4_lahze328,x1_next_chosen_lahze329,x2_next_chosen_lahze329,x3_next_chosen_lahze329,x4_next_chosen_lahze329,u_star329,js3291001);
[x1_lahze330,x2_lahze330,x3_lahze330,x4_lahze330]= function4(xk, dr, A, x1_lahze329,x2_lahze329,x3_lahze329 ,x4_lahze329,x1_next_chosen_lahze330,x2_next_chosen_lahze330,x3_next_chosen_lahze330,x4_next_chosen_lahze330,u_star330,js3301001);
[x1_lahze331,x2_lahze331,x3_lahze331,x4_lahze331]= function4(xk, dr, A, x1_lahze330,x2_lahze330,x3_lahze330 ,x4_lahze330,x1_next_chosen_lahze331,x2_next_chosen_lahze331,x3_next_chosen_lahze331,x4_next_chosen_lahze331,u_star331,js3311001);
[x1_lahze332,x2_lahze332,x3_lahze332,x4_lahze332]= function4(xk, dr, A, x1_lahze331,x2_lahze331,x3_lahze331 ,x4_lahze331,x1_next_chosen_lahze332,x2_next_chosen_lahze332,x3_next_chosen_lahze332,x4_next_chosen_lahze332,u_star332,js3321001);
[x1_lahze333,x2_lahze333,x3_lahze333,x4_lahze333]= function4(xk, dr, A, x1_lahze332,x2_lahze332,x3_lahze332 ,x4_lahze332,x1_next_chosen_lahze333,x2_next_chosen_lahze333,x3_next_chosen_lahze333,x4_next_chosen_lahze333,u_star333,js3331001);
[x1_lahze334,x2_lahze334,x3_lahze334,x4_lahze334]= function4(xk, dr, A, x1_lahze333,x2_lahze333,x3_lahze333 ,x4_lahze333,x1_next_chosen_lahze334,x2_next_chosen_lahze334,x3_next_chosen_lahze334,x4_next_chosen_lahze334,u_star334,js3341001);
[x1_lahze335,x2_lahze335,x3_lahze335,x4_lahze335]= function4(xk, dr, A, x1_lahze334,x2_lahze334,x3_lahze334 ,x4_lahze334,x1_next_chosen_lahze335,x2_next_chosen_lahze335,x3_next_chosen_lahze335,x4_next_chosen_lahze335,u_star335,js3351001);
[x1_lahze336,x2_lahze336,x3_lahze336,x4_lahze336]= function4(xk, dr, A, x1_lahze335,x2_lahze335,x3_lahze335 ,x4_lahze335,x1_next_chosen_lahze336,x2_next_chosen_lahze336,x3_next_chosen_lahze336,x4_next_chosen_lahze336,u_star336,js3361001);
[x1_lahze337,x2_lahze337,x3_lahze337,x4_lahze337]= function4(xk, dr, A, x1_lahze336,x2_lahze336,x3_lahze336 ,x4_lahze336,x1_next_chosen_lahze337,x2_next_chosen_lahze337,x3_next_chosen_lahze337,x4_next_chosen_lahze337,u_star337,js3371001);
[x1_lahze338,x2_lahze338,x3_lahze338,x4_lahze338]= function4(xk, dr, A, x1_lahze337,x2_lahze337,x3_lahze337 ,x4_lahze337,x1_next_chosen_lahze338,x2_next_chosen_lahze338,x3_next_chosen_lahze338,x4_next_chosen_lahze338,u_star338,js3381001);
[x1_lahze339,x2_lahze339,x3_lahze339,x4_lahze339]= function4(xk, dr, A, x1_lahze338,x2_lahze338,x3_lahze338 ,x4_lahze338,x1_next_chosen_lahze339,x2_next_chosen_lahze339,x3_next_chosen_lahze339,x4_next_chosen_lahze339,u_star339,js3391001);
[x1_lahze340,x2_lahze340,x3_lahze340,x4_lahze340]= function4(xk, dr, A, x1_lahze339,x2_lahze339,x3_lahze339 ,x4_lahze339,x1_next_chosen_lahze340,x2_next_chosen_lahze340,x3_next_chosen_lahze340,x4_next_chosen_lahze340,u_star340,js3401001);
[x1_lahze341,x2_lahze341,x3_lahze341,x4_lahze341]= function4(xk, dr, A, x1_lahze340,x2_lahze340,x3_lahze340 ,x4_lahze340,x1_next_chosen_lahze341,x2_next_chosen_lahze341,x3_next_chosen_lahze341,x4_next_chosen_lahze341,u_star341,js3411001);
[x1_lahze342,x2_lahze342,x3_lahze342,x4_lahze342]= function4(xk, dr, A, x1_lahze341,x2_lahze341,x3_lahze341 ,x4_lahze341,x1_next_chosen_lahze342,x2_next_chosen_lahze342,x3_next_chosen_lahze342,x4_next_chosen_lahze342,u_star342,js3421001);
[x1_lahze343,x2_lahze343,x3_lahze343,x4_lahze343]= function4(xk, dr, A, x1_lahze342,x2_lahze342,x3_lahze342 ,x4_lahze342,x1_next_chosen_lahze343,x2_next_chosen_lahze343,x3_next_chosen_lahze343,x4_next_chosen_lahze343,u_star343,js3431001);
[x1_lahze344,x2_lahze344,x3_lahze344,x4_lahze344]= function4(xk, dr, A, x1_lahze343,x2_lahze343,x3_lahze343 ,x4_lahze343,x1_next_chosen_lahze344,x2_next_chosen_lahze344,x3_next_chosen_lahze344,x4_next_chosen_lahze344,u_star344,js3441001);
[x1_lahze345,x2_lahze345,x3_lahze345,x4_lahze345]= function4(xk, dr, A, x1_lahze344,x2_lahze344,x3_lahze344 ,x4_lahze344,x1_next_chosen_lahze345,x2_next_chosen_lahze345,x3_next_chosen_lahze345,x4_next_chosen_lahze345,u_star345,js3451001);
[x1_lahze346,x2_lahze346,x3_lahze346,x4_lahze346]= function4(xk, dr, A, x1_lahze345,x2_lahze345,x3_lahze345 ,x4_lahze345,x1_next_chosen_lahze346,x2_next_chosen_lahze346,x3_next_chosen_lahze346,x4_next_chosen_lahze346,u_star346,js3461001);
[x1_lahze347,x2_lahze347,x3_lahze347,x4_lahze347]= function4(xk, dr, A, x1_lahze346,x2_lahze346,x3_lahze346 ,x4_lahze346,x1_next_chosen_lahze347,x2_next_chosen_lahze347,x3_next_chosen_lahze347,x4_next_chosen_lahze347,u_star347,js3471001);
[x1_lahze348,x2_lahze348,x3_lahze348,x4_lahze348]= function4(xk, dr, A, x1_lahze347,x2_lahze347,x3_lahze347 ,x4_lahze347,x1_next_chosen_lahze348,x2_next_chosen_lahze348,x3_next_chosen_lahze348,x4_next_chosen_lahze348,u_star348,js3481001);
[x1_lahze349,x2_lahze349,x3_lahze349,x4_lahze349]= function4(xk, dr, A, x1_lahze348,x2_lahze348,x3_lahze348 ,x4_lahze348,x1_next_chosen_lahze349,x2_next_chosen_lahze349,x3_next_chosen_lahze349,x4_next_chosen_lahze349,u_star349,js3491001);
[x1_lahze350,x2_lahze350,x3_lahze350,x4_lahze350]= function4(xk, dr, A, x1_lahze349,x2_lahze349,x3_lahze349 ,x4_lahze349,x1_next_chosen_lahze350,x2_next_chosen_lahze350,x3_next_chosen_lahze350,x4_next_chosen_lahze350,u_star350,js3501001);
[x1_lahze351,x2_lahze351,x3_lahze351,x4_lahze351]= function4(xk, dr, A, x1_lahze350,x2_lahze350,x3_lahze350 ,x4_lahze350,x1_next_chosen_lahze351,x2_next_chosen_lahze351,x3_next_chosen_lahze351,x4_next_chosen_lahze351,u_star351,js3511001);
[x1_lahze352,x2_lahze352,x3_lahze352,x4_lahze352]= function4(xk, dr, A, x1_lahze351,x2_lahze351,x3_lahze351 ,x4_lahze351,x1_next_chosen_lahze352,x2_next_chosen_lahze352,x3_next_chosen_lahze352,x4_next_chosen_lahze352,u_star352,js3521001);
[x1_lahze353,x2_lahze353,x3_lahze353,x4_lahze353]= function4(xk, dr, A, x1_lahze352,x2_lahze352,x3_lahze352 ,x4_lahze352,x1_next_chosen_lahze353,x2_next_chosen_lahze353,x3_next_chosen_lahze353,x4_next_chosen_lahze353,u_star353,js3531001);
[x1_lahze354,x2_lahze354,x3_lahze354,x4_lahze354]= function4(xk, dr, A, x1_lahze353,x2_lahze353,x3_lahze353 ,x4_lahze353,x1_next_chosen_lahze354,x2_next_chosen_lahze354,x3_next_chosen_lahze354,x4_next_chosen_lahze354,u_star354,js3541001);
[x1_lahze355,x2_lahze355,x3_lahze355,x4_lahze355]= function4(xk, dr, A, x1_lahze354,x2_lahze354,x3_lahze354 ,x4_lahze354,x1_next_chosen_lahze355,x2_next_chosen_lahze355,x3_next_chosen_lahze355,x4_next_chosen_lahze355,u_star355,js3551001);
[x1_lahze356,x2_lahze356,x3_lahze356,x4_lahze356]= function4(xk, dr, A, x1_lahze355,x2_lahze355,x3_lahze355 ,x4_lahze355,x1_next_chosen_lahze356,x2_next_chosen_lahze356,x3_next_chosen_lahze356,x4_next_chosen_lahze356,u_star356,js3561001);
[x1_lahze357,x2_lahze357,x3_lahze357,x4_lahze357]= function4(xk, dr, A, x1_lahze356,x2_lahze356,x3_lahze356 ,x4_lahze356,x1_next_chosen_lahze357,x2_next_chosen_lahze357,x3_next_chosen_lahze357,x4_next_chosen_lahze357,u_star357,js3571001);
[x1_lahze358,x2_lahze358,x3_lahze358,x4_lahze358]= function4(xk, dr, A, x1_lahze357,x2_lahze357,x3_lahze357 ,x4_lahze357,x1_next_chosen_lahze358,x2_next_chosen_lahze358,x3_next_chosen_lahze358,x4_next_chosen_lahze358,u_star358,js3581001);
[x1_lahze359,x2_lahze359,x3_lahze359,x4_lahze359]= function4(xk, dr, A, x1_lahze358,x2_lahze358,x3_lahze358 ,x4_lahze358,x1_next_chosen_lahze359,x2_next_chosen_lahze359,x3_next_chosen_lahze359,x4_next_chosen_lahze359,u_star359,js3591001);
[x1_lahze360,x2_lahze360,x3_lahze360,x4_lahze360]= function4(xk, dr, A, x1_lahze359,x2_lahze359,x3_lahze359 ,x4_lahze359,x1_next_chosen_lahze360,x2_next_chosen_lahze360,x3_next_chosen_lahze360,x4_next_chosen_lahze360,u_star360,js3601001);
[x1_lahze361,x2_lahze361,x3_lahze361,x4_lahze361]= function4(xk, dr, A, x1_lahze360,x2_lahze360,x3_lahze360 ,x4_lahze360,x1_next_chosen_lahze361,x2_next_chosen_lahze361,x3_next_chosen_lahze361,x4_next_chosen_lahze361,u_star361,js3611001);
[x1_lahze362,x2_lahze362,x3_lahze362,x4_lahze362]= function4(xk, dr, A, x1_lahze361,x2_lahze361,x3_lahze361 ,x4_lahze361,x1_next_chosen_lahze362,x2_next_chosen_lahze362,x3_next_chosen_lahze362,x4_next_chosen_lahze362,u_star362,js3621001);
[x1_lahze363,x2_lahze363,x3_lahze363,x4_lahze363]= function4(xk, dr, A, x1_lahze362,x2_lahze362,x3_lahze362 ,x4_lahze362,x1_next_chosen_lahze363,x2_next_chosen_lahze363,x3_next_chosen_lahze363,x4_next_chosen_lahze363,u_star363,js3631001);
[x1_lahze364,x2_lahze364,x3_lahze364,x4_lahze364]= function4(xk, dr, A, x1_lahze363,x2_lahze363,x3_lahze363 ,x4_lahze363,x1_next_chosen_lahze364,x2_next_chosen_lahze364,x3_next_chosen_lahze364,x4_next_chosen_lahze364,u_star364,js3641001);
[x1_lahze365,x2_lahze365,x3_lahze365,x4_lahze365]= function4(xk, dr, A, x1_lahze364,x2_lahze364,x3_lahze364 ,x4_lahze364,x1_next_chosen_lahze365,x2_next_chosen_lahze365,x3_next_chosen_lahze365,x4_next_chosen_lahze365,u_star365,js3651001);
[x1_lahze366,x2_lahze366,x3_lahze366,x4_lahze366]= function4(xk, dr, A, x1_lahze365,x2_lahze365,x3_lahze365 ,x4_lahze365,x1_next_chosen_lahze366,x2_next_chosen_lahze366,x3_next_chosen_lahze366,x4_next_chosen_lahze366,u_star366,js3661001);
[x1_lahze367,x2_lahze367,x3_lahze367,x4_lahze367]= function4(xk, dr, A, x1_lahze366,x2_lahze366,x3_lahze366 ,x4_lahze366,x1_next_chosen_lahze367,x2_next_chosen_lahze367,x3_next_chosen_lahze367,x4_next_chosen_lahze367,u_star367,js3671001);
[x1_lahze368,x2_lahze368,x3_lahze368,x4_lahze368]= function4(xk, dr, A, x1_lahze367,x2_lahze367,x3_lahze367 ,x4_lahze367,x1_next_chosen_lahze368,x2_next_chosen_lahze368,x3_next_chosen_lahze368,x4_next_chosen_lahze368,u_star368,js3681001);
[x1_lahze369,x2_lahze369,x3_lahze369,x4_lahze369]= function4(xk, dr, A, x1_lahze368,x2_lahze368,x3_lahze368 ,x4_lahze368,x1_next_chosen_lahze369,x2_next_chosen_lahze369,x3_next_chosen_lahze369,x4_next_chosen_lahze369,u_star369,js3691001);
[x1_lahze370,x2_lahze370,x3_lahze370,x4_lahze370]= function4(xk, dr, A, x1_lahze369,x2_lahze369,x3_lahze369 ,x4_lahze369,x1_next_chosen_lahze370,x2_next_chosen_lahze370,x3_next_chosen_lahze370,x4_next_chosen_lahze370,u_star370,js3701001);
[x1_lahze371,x2_lahze371,x3_lahze371,x4_lahze371]= function4(xk, dr, A, x1_lahze370,x2_lahze370,x3_lahze370 ,x4_lahze370,x1_next_chosen_lahze371,x2_next_chosen_lahze371,x3_next_chosen_lahze371,x4_next_chosen_lahze371,u_star371,js3711001);
[x1_lahze372,x2_lahze372,x3_lahze372,x4_lahze372]= function4(xk, dr, A, x1_lahze371,x2_lahze371,x3_lahze371 ,x4_lahze371,x1_next_chosen_lahze372,x2_next_chosen_lahze372,x3_next_chosen_lahze372,x4_next_chosen_lahze372,u_star372,js3721001);
[x1_lahze373,x2_lahze373,x3_lahze373,x4_lahze373]= function4(xk, dr, A, x1_lahze372,x2_lahze372,x3_lahze372 ,x4_lahze372,x1_next_chosen_lahze373,x2_next_chosen_lahze373,x3_next_chosen_lahze373,x4_next_chosen_lahze373,u_star373,js3731001);
[x1_lahze374,x2_lahze374,x3_lahze374,x4_lahze374]= function4(xk, dr, A, x1_lahze373,x2_lahze373,x3_lahze373 ,x4_lahze373,x1_next_chosen_lahze374,x2_next_chosen_lahze374,x3_next_chosen_lahze374,x4_next_chosen_lahze374,u_star374,js3741001);
[x1_lahze375,x2_lahze375,x3_lahze375,x4_lahze375]= function4(xk, dr, A, x1_lahze374,x2_lahze374,x3_lahze374 ,x4_lahze374,x1_next_chosen_lahze375,x2_next_chosen_lahze375,x3_next_chosen_lahze375,x4_next_chosen_lahze375,u_star375,js3751001);
[x1_lahze376,x2_lahze376,x3_lahze376,x4_lahze376]= function4(xk, dr, A, x1_lahze375,x2_lahze375,x3_lahze375 ,x4_lahze375,x1_next_chosen_lahze376,x2_next_chosen_lahze376,x3_next_chosen_lahze376,x4_next_chosen_lahze376,u_star376,js3761001);
[x1_lahze377,x2_lahze377,x3_lahze377,x4_lahze377]= function4(xk, dr, A, x1_lahze376,x2_lahze376,x3_lahze376 ,x4_lahze376,x1_next_chosen_lahze377,x2_next_chosen_lahze377,x3_next_chosen_lahze377,x4_next_chosen_lahze377,u_star377,js3771001);
[x1_lahze378,x2_lahze378,x3_lahze378,x4_lahze378]= function4(xk, dr, A, x1_lahze377,x2_lahze377,x3_lahze377 ,x4_lahze377,x1_next_chosen_lahze378,x2_next_chosen_lahze378,x3_next_chosen_lahze378,x4_next_chosen_lahze378,u_star378,js3781001);
[x1_lahze379,x2_lahze379,x3_lahze379,x4_lahze379]= function4(xk, dr, A, x1_lahze378,x2_lahze378,x3_lahze378 ,x4_lahze378,x1_next_chosen_lahze379,x2_next_chosen_lahze379,x3_next_chosen_lahze379,x4_next_chosen_lahze379,u_star379,js3791001);
[x1_lahze380,x2_lahze380,x3_lahze380,x4_lahze380]= function4(xk, dr, A, x1_lahze379,x2_lahze379,x3_lahze379 ,x4_lahze379,x1_next_chosen_lahze380,x2_next_chosen_lahze380,x3_next_chosen_lahze380,x4_next_chosen_lahze380,u_star380,js3801001);
[x1_lahze381,x2_lahze381,x3_lahze381,x4_lahze381]= function4(xk, dr, A, x1_lahze380,x2_lahze380,x3_lahze380 ,x4_lahze380,x1_next_chosen_lahze381,x2_next_chosen_lahze381,x3_next_chosen_lahze381,x4_next_chosen_lahze381,u_star381,js3811001);
[x1_lahze382,x2_lahze382,x3_lahze382,x4_lahze382]= function4(xk, dr, A, x1_lahze381,x2_lahze381,x3_lahze381 ,x4_lahze381,x1_next_chosen_lahze382,x2_next_chosen_lahze382,x3_next_chosen_lahze382,x4_next_chosen_lahze382,u_star382,js3821001);
[x1_lahze383,x2_lahze383,x3_lahze383,x4_lahze383]= function4(xk, dr, A, x1_lahze382,x2_lahze382,x3_lahze382 ,x4_lahze382,x1_next_chosen_lahze383,x2_next_chosen_lahze383,x3_next_chosen_lahze383,x4_next_chosen_lahze383,u_star383,js3831001);
[x1_lahze384,x2_lahze384,x3_lahze384,x4_lahze384]= function4(xk, dr, A, x1_lahze383,x2_lahze383,x3_lahze383 ,x4_lahze383,x1_next_chosen_lahze384,x2_next_chosen_lahze384,x3_next_chosen_lahze384,x4_next_chosen_lahze384,u_star384,js3841001);
[x1_lahze385,x2_lahze385,x3_lahze385,x4_lahze385]= function4(xk, dr, A, x1_lahze384,x2_lahze384,x3_lahze384 ,x4_lahze384,x1_next_chosen_lahze385,x2_next_chosen_lahze385,x3_next_chosen_lahze385,x4_next_chosen_lahze385,u_star385,js3851001);
[x1_lahze386,x2_lahze386,x3_lahze386,x4_lahze386]= function4(xk, dr, A, x1_lahze385,x2_lahze385,x3_lahze385 ,x4_lahze385,x1_next_chosen_lahze386,x2_next_chosen_lahze386,x3_next_chosen_lahze386,x4_next_chosen_lahze386,u_star386,js3861001);
[x1_lahze387,x2_lahze387,x3_lahze387,x4_lahze387]= function4(xk, dr, A, x1_lahze386,x2_lahze386,x3_lahze386 ,x4_lahze386,x1_next_chosen_lahze387,x2_next_chosen_lahze387,x3_next_chosen_lahze387,x4_next_chosen_lahze387,u_star387,js3871001);
[x1_lahze388,x2_lahze388,x3_lahze388,x4_lahze388]= function4(xk, dr, A, x1_lahze387,x2_lahze387,x3_lahze387 ,x4_lahze387,x1_next_chosen_lahze388,x2_next_chosen_lahze388,x3_next_chosen_lahze388,x4_next_chosen_lahze388,u_star388,js3881001);
[x1_lahze389,x2_lahze389,x3_lahze389,x4_lahze389]= function4(xk, dr, A, x1_lahze388,x2_lahze388,x3_lahze388 ,x4_lahze388,x1_next_chosen_lahze389,x2_next_chosen_lahze389,x3_next_chosen_lahze389,x4_next_chosen_lahze389,u_star389,js3891001);
[x1_lahze390,x2_lahze390,x3_lahze390,x4_lahze390]= function4(xk, dr, A, x1_lahze389,x2_lahze389,x3_lahze389 ,x4_lahze389,x1_next_chosen_lahze390,x2_next_chosen_lahze390,x3_next_chosen_lahze390,x4_next_chosen_lahze390,u_star390,js3901001);
[x1_lahze391,x2_lahze391,x3_lahze391,x4_lahze391]= function4(xk, dr, A, x1_lahze390,x2_lahze390,x3_lahze390 ,x4_lahze390,x1_next_chosen_lahze391,x2_next_chosen_lahze391,x3_next_chosen_lahze391,x4_next_chosen_lahze391,u_star391,js3911001);
[x1_lahze392,x2_lahze392,x3_lahze392,x4_lahze392]= function4(xk, dr, A, x1_lahze391,x2_lahze391,x3_lahze391 ,x4_lahze391,x1_next_chosen_lahze392,x2_next_chosen_lahze392,x3_next_chosen_lahze392,x4_next_chosen_lahze392,u_star392,js3921001);
[x1_lahze393,x2_lahze393,x3_lahze393,x4_lahze393]= function4(xk, dr, A, x1_lahze392,x2_lahze392,x3_lahze392 ,x4_lahze392,x1_next_chosen_lahze393,x2_next_chosen_lahze393,x3_next_chosen_lahze393,x4_next_chosen_lahze393,u_star393,js3931001);
[x1_lahze394,x2_lahze394,x3_lahze394,x4_lahze394]= function4(xk, dr, A, x1_lahze393,x2_lahze393,x3_lahze393 ,x4_lahze393,x1_next_chosen_lahze394,x2_next_chosen_lahze394,x3_next_chosen_lahze394,x4_next_chosen_lahze394,u_star394,js3941001);
[x1_lahze395,x2_lahze395,x3_lahze395,x4_lahze395]= function4(xk, dr, A, x1_lahze394,x2_lahze394,x3_lahze394 ,x4_lahze394,x1_next_chosen_lahze395,x2_next_chosen_lahze395,x3_next_chosen_lahze395,x4_next_chosen_lahze395,u_star395,js3951001);
[x1_lahze396,x2_lahze396,x3_lahze396,x4_lahze396]= function4(xk, dr, A, x1_lahze395,x2_lahze395,x3_lahze395 ,x4_lahze395,x1_next_chosen_lahze396,x2_next_chosen_lahze396,x3_next_chosen_lahze396,x4_next_chosen_lahze396,u_star396,js3961001);
[x1_lahze397,x2_lahze397,x3_lahze397,x4_lahze397]= function4(xk, dr, A, x1_lahze396,x2_lahze396,x3_lahze396 ,x4_lahze396,x1_next_chosen_lahze397,x2_next_chosen_lahze397,x3_next_chosen_lahze397,x4_next_chosen_lahze397,u_star397,js3971001);
[x1_lahze398,x2_lahze398,x3_lahze398,x4_lahze398]= function4(xk, dr, A, x1_lahze397,x2_lahze397,x3_lahze397 ,x4_lahze397,x1_next_chosen_lahze398,x2_next_chosen_lahze398,x3_next_chosen_lahze398,x4_next_chosen_lahze398,u_star398,js3981001);
[x1_lahze399,x2_lahze399,x3_lahze399,x4_lahze399]= function4(xk, dr, A, x1_lahze398,x2_lahze398,x3_lahze398 ,x4_lahze398,x1_next_chosen_lahze399,x2_next_chosen_lahze399,x3_next_chosen_lahze399,x4_next_chosen_lahze399,u_star399,js3991001);
[x1_lahze400,x2_lahze400,x3_lahze400,x4_lahze400]= function4(xk, dr, A, x1_lahze399,x2_lahze399,x3_lahze399 ,x4_lahze399,x1_next_chosen_lahze400,x2_next_chosen_lahze400,x3_next_chosen_lahze400,x4_next_chosen_lahze400,u_star400,js4001001);
[x1_lahze401,x2_lahze401,x3_lahze401,x4_lahze401]= function4(xk, dr, A, x1_lahze400,x2_lahze400,x3_lahze400 ,x4_lahze400,x1_next_chosen_lahze401,x2_next_chosen_lahze401,x3_next_chosen_lahze401,x4_next_chosen_lahze401,u_star401,js4011001);
[x1_lahze402,x2_lahze402,x3_lahze402,x4_lahze402]= function4(xk, dr, A, x1_lahze401,x2_lahze401,x3_lahze401 ,x4_lahze401,x1_next_chosen_lahze402,x2_next_chosen_lahze402,x3_next_chosen_lahze402,x4_next_chosen_lahze402,u_star402,js4021001);
[x1_lahze403,x2_lahze403,x3_lahze403,x4_lahze403]= function4(xk, dr, A, x1_lahze402,x2_lahze402,x3_lahze402 ,x4_lahze402,x1_next_chosen_lahze403,x2_next_chosen_lahze403,x3_next_chosen_lahze403,x4_next_chosen_lahze403,u_star403,js4031001);
[x1_lahze404,x2_lahze404,x3_lahze404,x4_lahze404]= function4(xk, dr, A, x1_lahze403,x2_lahze403,x3_lahze403 ,x4_lahze403,x1_next_chosen_lahze404,x2_next_chosen_lahze404,x3_next_chosen_lahze404,x4_next_chosen_lahze404,u_star404,js4041001);
[x1_lahze405,x2_lahze405,x3_lahze405,x4_lahze405]= function4(xk, dr, A, x1_lahze404,x2_lahze404,x3_lahze404 ,x4_lahze404,x1_next_chosen_lahze405,x2_next_chosen_lahze405,x3_next_chosen_lahze405,x4_next_chosen_lahze405,u_star405,js4051001);
[x1_lahze406,x2_lahze406,x3_lahze406,x4_lahze406]= function4(xk, dr, A, x1_lahze405,x2_lahze405,x3_lahze405 ,x4_lahze405,x1_next_chosen_lahze406,x2_next_chosen_lahze406,x3_next_chosen_lahze406,x4_next_chosen_lahze406,u_star406,js4061001);
[x1_lahze407,x2_lahze407,x3_lahze407,x4_lahze407]= function4(xk, dr, A, x1_lahze406,x2_lahze406,x3_lahze406 ,x4_lahze406,x1_next_chosen_lahze407,x2_next_chosen_lahze407,x3_next_chosen_lahze407,x4_next_chosen_lahze407,u_star407,js4071001);
[x1_lahze408,x2_lahze408,x3_lahze408,x4_lahze408]= function4(xk, dr, A, x1_lahze407,x2_lahze407,x3_lahze407 ,x4_lahze407,x1_next_chosen_lahze408,x2_next_chosen_lahze408,x3_next_chosen_lahze408,x4_next_chosen_lahze408,u_star408,js4081001);
[x1_lahze409,x2_lahze409,x3_lahze409,x4_lahze409]= function4(xk, dr, A, x1_lahze408,x2_lahze408,x3_lahze408 ,x4_lahze408,x1_next_chosen_lahze409,x2_next_chosen_lahze409,x3_next_chosen_lahze409,x4_next_chosen_lahze409,u_star409,js4091001);
[x1_lahze410,x2_lahze410,x3_lahze410,x4_lahze410]= function4(xk, dr, A, x1_lahze409,x2_lahze409,x3_lahze409 ,x4_lahze409,x1_next_chosen_lahze410,x2_next_chosen_lahze410,x3_next_chosen_lahze410,x4_next_chosen_lahze410,u_star410,js4101001);
[x1_lahze411,x2_lahze411,x3_lahze411,x4_lahze411]= function4(xk, dr, A, x1_lahze410,x2_lahze410,x3_lahze410 ,x4_lahze410,x1_next_chosen_lahze411,x2_next_chosen_lahze411,x3_next_chosen_lahze411,x4_next_chosen_lahze411,u_star411,js4111001);
[x1_lahze412,x2_lahze412,x3_lahze412,x4_lahze412]= function4(xk, dr, A, x1_lahze411,x2_lahze411,x3_lahze411 ,x4_lahze411,x1_next_chosen_lahze412,x2_next_chosen_lahze412,x3_next_chosen_lahze412,x4_next_chosen_lahze412,u_star412,js4121001);
[x1_lahze413,x2_lahze413,x3_lahze413,x4_lahze413]= function4(xk, dr, A, x1_lahze412,x2_lahze412,x3_lahze412 ,x4_lahze412,x1_next_chosen_lahze413,x2_next_chosen_lahze413,x3_next_chosen_lahze413,x4_next_chosen_lahze413,u_star413,js4131001);
[x1_lahze414,x2_lahze414,x3_lahze414,x4_lahze414]= function4(xk, dr, A, x1_lahze413,x2_lahze413,x3_lahze413 ,x4_lahze413,x1_next_chosen_lahze414,x2_next_chosen_lahze414,x3_next_chosen_lahze414,x4_next_chosen_lahze414,u_star414,js4141001);
[x1_lahze415,x2_lahze415,x3_lahze415,x4_lahze415]= function4(xk, dr, A, x1_lahze414,x2_lahze414,x3_lahze414 ,x4_lahze414,x1_next_chosen_lahze415,x2_next_chosen_lahze415,x3_next_chosen_lahze415,x4_next_chosen_lahze415,u_star415,js4151001);
[x1_lahze416,x2_lahze416,x3_lahze416,x4_lahze416]= function4(xk, dr, A, x1_lahze415,x2_lahze415,x3_lahze415 ,x4_lahze415,x1_next_chosen_lahze416,x2_next_chosen_lahze416,x3_next_chosen_lahze416,x4_next_chosen_lahze416,u_star416,js4161001);
[x1_lahze417,x2_lahze417,x3_lahze417,x4_lahze417]= function4(xk, dr, A, x1_lahze416,x2_lahze416,x3_lahze416 ,x4_lahze416,x1_next_chosen_lahze417,x2_next_chosen_lahze417,x3_next_chosen_lahze417,x4_next_chosen_lahze417,u_star417,js4171001);
[x1_lahze418,x2_lahze418,x3_lahze418,x4_lahze418]= function4(xk, dr, A, x1_lahze417,x2_lahze417,x3_lahze417 ,x4_lahze417,x1_next_chosen_lahze418,x2_next_chosen_lahze418,x3_next_chosen_lahze418,x4_next_chosen_lahze418,u_star418,js4181001);
[x1_lahze419,x2_lahze419,x3_lahze419,x4_lahze419]= function4(xk, dr, A, x1_lahze418,x2_lahze418,x3_lahze418 ,x4_lahze418,x1_next_chosen_lahze419,x2_next_chosen_lahze419,x3_next_chosen_lahze419,x4_next_chosen_lahze419,u_star419,js4191001);
[x1_lahze420,x2_lahze420,x3_lahze420,x4_lahze420]= function4(xk, dr, A, x1_lahze419,x2_lahze419,x3_lahze419 ,x4_lahze419,x1_next_chosen_lahze420,x2_next_chosen_lahze420,x3_next_chosen_lahze420,x4_next_chosen_lahze420,u_star420,js4201001);
[x1_lahze421,x2_lahze421,x3_lahze421,x4_lahze421]= function4(xk, dr, A, x1_lahze420,x2_lahze420,x3_lahze420 ,x4_lahze420,x1_next_chosen_lahze421,x2_next_chosen_lahze421,x3_next_chosen_lahze421,x4_next_chosen_lahze421,u_star421,js4211001);
[x1_lahze422,x2_lahze422,x3_lahze422,x4_lahze422]= function4(xk, dr, A, x1_lahze421,x2_lahze421,x3_lahze421 ,x4_lahze421,x1_next_chosen_lahze422,x2_next_chosen_lahze422,x3_next_chosen_lahze422,x4_next_chosen_lahze422,u_star422,js4221001);
[x1_lahze423,x2_lahze423,x3_lahze423,x4_lahze423]= function4(xk, dr, A, x1_lahze422,x2_lahze422,x3_lahze422 ,x4_lahze422,x1_next_chosen_lahze423,x2_next_chosen_lahze423,x3_next_chosen_lahze423,x4_next_chosen_lahze423,u_star423,js4231001);
[x1_lahze424,x2_lahze424,x3_lahze424,x4_lahze424]= function4(xk, dr, A, x1_lahze423,x2_lahze423,x3_lahze423 ,x4_lahze423,x1_next_chosen_lahze424,x2_next_chosen_lahze424,x3_next_chosen_lahze424,x4_next_chosen_lahze424,u_star424,js4241001);
[x1_lahze425,x2_lahze425,x3_lahze425,x4_lahze425]= function4(xk, dr, A, x1_lahze424,x2_lahze424,x3_lahze424 ,x4_lahze424,x1_next_chosen_lahze425,x2_next_chosen_lahze425,x3_next_chosen_lahze425,x4_next_chosen_lahze425,u_star425,js4251001);
[x1_lahze426,x2_lahze426,x3_lahze426,x4_lahze426]= function4(xk, dr, A, x1_lahze425,x2_lahze425,x3_lahze425 ,x4_lahze425,x1_next_chosen_lahze426,x2_next_chosen_lahze426,x3_next_chosen_lahze426,x4_next_chosen_lahze426,u_star426,js4261001);
[x1_lahze427,x2_lahze427,x3_lahze427,x4_lahze427]= function4(xk, dr, A, x1_lahze426,x2_lahze426,x3_lahze426 ,x4_lahze426,x1_next_chosen_lahze427,x2_next_chosen_lahze427,x3_next_chosen_lahze427,x4_next_chosen_lahze427,u_star427,js4271001);
[x1_lahze428,x2_lahze428,x3_lahze428,x4_lahze428]= function4(xk, dr, A, x1_lahze427,x2_lahze427,x3_lahze427 ,x4_lahze427,x1_next_chosen_lahze428,x2_next_chosen_lahze428,x3_next_chosen_lahze428,x4_next_chosen_lahze428,u_star428,js4281001);
[x1_lahze429,x2_lahze429,x3_lahze429,x4_lahze429]= function4(xk, dr, A, x1_lahze428,x2_lahze428,x3_lahze428 ,x4_lahze428,x1_next_chosen_lahze429,x2_next_chosen_lahze429,x3_next_chosen_lahze429,x4_next_chosen_lahze429,u_star429,js4291001);
[x1_lahze430,x2_lahze430,x3_lahze430,x4_lahze430]= function4(xk, dr, A, x1_lahze429,x2_lahze429,x3_lahze429 ,x4_lahze429,x1_next_chosen_lahze430,x2_next_chosen_lahze430,x3_next_chosen_lahze430,x4_next_chosen_lahze430,u_star430,js4301001);
[x1_lahze431,x2_lahze431,x3_lahze431,x4_lahze431]= function4(xk, dr, A, x1_lahze430,x2_lahze430,x3_lahze430 ,x4_lahze430,x1_next_chosen_lahze431,x2_next_chosen_lahze431,x3_next_chosen_lahze431,x4_next_chosen_lahze431,u_star431,js4311001);
[x1_lahze432,x2_lahze432,x3_lahze432,x4_lahze432]= function4(xk, dr, A, x1_lahze431,x2_lahze431,x3_lahze431 ,x4_lahze431,x1_next_chosen_lahze432,x2_next_chosen_lahze432,x3_next_chosen_lahze432,x4_next_chosen_lahze432,u_star432,js4321001);
[x1_lahze433,x2_lahze433,x3_lahze433,x4_lahze433]= function4(xk, dr, A, x1_lahze432,x2_lahze432,x3_lahze432 ,x4_lahze432,x1_next_chosen_lahze433,x2_next_chosen_lahze433,x3_next_chosen_lahze433,x4_next_chosen_lahze433,u_star433,js4331001);
[x1_lahze434,x2_lahze434,x3_lahze434,x4_lahze434]= function4(xk, dr, A, x1_lahze433,x2_lahze433,x3_lahze433 ,x4_lahze433,x1_next_chosen_lahze434,x2_next_chosen_lahze434,x3_next_chosen_lahze434,x4_next_chosen_lahze434,u_star434,js4341001);
[x1_lahze435,x2_lahze435,x3_lahze435,x4_lahze435]= function4(xk, dr, A, x1_lahze434,x2_lahze434,x3_lahze434 ,x4_lahze434,x1_next_chosen_lahze435,x2_next_chosen_lahze435,x3_next_chosen_lahze435,x4_next_chosen_lahze435,u_star435,js4351001);
[x1_lahze436,x2_lahze436,x3_lahze436,x4_lahze436]= function4(xk, dr, A, x1_lahze435,x2_lahze435,x3_lahze435 ,x4_lahze435,x1_next_chosen_lahze436,x2_next_chosen_lahze436,x3_next_chosen_lahze436,x4_next_chosen_lahze436,u_star436,js4361001);
[x1_lahze437,x2_lahze437,x3_lahze437,x4_lahze437]= function4(xk, dr, A, x1_lahze436,x2_lahze436,x3_lahze436 ,x4_lahze436,x1_next_chosen_lahze437,x2_next_chosen_lahze437,x3_next_chosen_lahze437,x4_next_chosen_lahze437,u_star437,js4371001);
[x1_lahze438,x2_lahze438,x3_lahze438,x4_lahze438]= function4(xk, dr, A, x1_lahze437,x2_lahze437,x3_lahze437 ,x4_lahze437,x1_next_chosen_lahze438,x2_next_chosen_lahze438,x3_next_chosen_lahze438,x4_next_chosen_lahze438,u_star438,js4381001);
[x1_lahze439,x2_lahze439,x3_lahze439,x4_lahze439]= function4(xk, dr, A, x1_lahze438,x2_lahze438,x3_lahze438 ,x4_lahze438,x1_next_chosen_lahze439,x2_next_chosen_lahze439,x3_next_chosen_lahze439,x4_next_chosen_lahze439,u_star439,js4391001);
[x1_lahze440,x2_lahze440,x3_lahze440,x4_lahze440]= function4(xk, dr, A, x1_lahze439,x2_lahze439,x3_lahze439 ,x4_lahze439,x1_next_chosen_lahze440,x2_next_chosen_lahze440,x3_next_chosen_lahze440,x4_next_chosen_lahze440,u_star440,js4401001);
[x1_lahze441,x2_lahze441,x3_lahze441,x4_lahze441]= function4(xk, dr, A, x1_lahze440,x2_lahze440,x3_lahze440 ,x4_lahze440,x1_next_chosen_lahze441,x2_next_chosen_lahze441,x3_next_chosen_lahze441,x4_next_chosen_lahze441,u_star441,js4411001);
[x1_lahze442,x2_lahze442,x3_lahze442,x4_lahze442]= function4(xk, dr, A, x1_lahze441,x2_lahze441,x3_lahze441 ,x4_lahze441,x1_next_chosen_lahze442,x2_next_chosen_lahze442,x3_next_chosen_lahze442,x4_next_chosen_lahze442,u_star442,js4421001);
[x1_lahze443,x2_lahze443,x3_lahze443,x4_lahze443]= function4(xk, dr, A, x1_lahze442,x2_lahze442,x3_lahze442 ,x4_lahze442,x1_next_chosen_lahze443,x2_next_chosen_lahze443,x3_next_chosen_lahze443,x4_next_chosen_lahze443,u_star443,js4431001);
[x1_lahze444,x2_lahze444,x3_lahze444,x4_lahze444]= function4(xk, dr, A, x1_lahze443,x2_lahze443,x3_lahze443 ,x4_lahze443,x1_next_chosen_lahze444,x2_next_chosen_lahze444,x3_next_chosen_lahze444,x4_next_chosen_lahze444,u_star444,js4441001);
[x1_lahze445,x2_lahze445,x3_lahze445,x4_lahze445]= function4(xk, dr, A, x1_lahze444,x2_lahze444,x3_lahze444 ,x4_lahze444,x1_next_chosen_lahze445,x2_next_chosen_lahze445,x3_next_chosen_lahze445,x4_next_chosen_lahze445,u_star445,js4451001);
[x1_lahze446,x2_lahze446,x3_lahze446,x4_lahze446]= function4(xk, dr, A, x1_lahze445,x2_lahze445,x3_lahze445 ,x4_lahze445,x1_next_chosen_lahze446,x2_next_chosen_lahze446,x3_next_chosen_lahze446,x4_next_chosen_lahze446,u_star446,js4461001);
[x1_lahze447,x2_lahze447,x3_lahze447,x4_lahze447]= function4(xk, dr, A, x1_lahze446,x2_lahze446,x3_lahze446 ,x4_lahze446,x1_next_chosen_lahze447,x2_next_chosen_lahze447,x3_next_chosen_lahze447,x4_next_chosen_lahze447,u_star447,js4471001);
[x1_lahze448,x2_lahze448,x3_lahze448,x4_lahze448]= function4(xk, dr, A, x1_lahze447,x2_lahze447,x3_lahze447 ,x4_lahze447,x1_next_chosen_lahze448,x2_next_chosen_lahze448,x3_next_chosen_lahze448,x4_next_chosen_lahze448,u_star448,js4481001);
[x1_lahze449,x2_lahze449,x3_lahze449,x4_lahze449]= function4(xk, dr, A, x1_lahze448,x2_lahze448,x3_lahze448 ,x4_lahze448,x1_next_chosen_lahze449,x2_next_chosen_lahze449,x3_next_chosen_lahze449,x4_next_chosen_lahze449,u_star449,js4491001);
[x1_lahze450,x2_lahze450,x3_lahze450,x4_lahze450]= function4(xk, dr, A, x1_lahze449,x2_lahze449,x3_lahze449 ,x4_lahze449,x1_next_chosen_lahze450,x2_next_chosen_lahze450,x3_next_chosen_lahze450,x4_next_chosen_lahze450,u_star450,js4501001);
[x1_lahze451,x2_lahze451,x3_lahze451,x4_lahze451]= function4(xk, dr, A, x1_lahze450,x2_lahze450,x3_lahze450 ,x4_lahze450,x1_next_chosen_lahze451,x2_next_chosen_lahze451,x3_next_chosen_lahze451,x4_next_chosen_lahze451,u_star451,js4511001);
[x1_lahze452,x2_lahze452,x3_lahze452,x4_lahze452]= function4(xk, dr, A, x1_lahze451,x2_lahze451,x3_lahze451 ,x4_lahze451,x1_next_chosen_lahze452,x2_next_chosen_lahze452,x3_next_chosen_lahze452,x4_next_chosen_lahze452,u_star452,js4521001);
[x1_lahze453,x2_lahze453,x3_lahze453,x4_lahze453]= function4(xk, dr, A, x1_lahze452,x2_lahze452,x3_lahze452 ,x4_lahze452,x1_next_chosen_lahze453,x2_next_chosen_lahze453,x3_next_chosen_lahze453,x4_next_chosen_lahze453,u_star453,js4531001);
[x1_lahze454,x2_lahze454,x3_lahze454,x4_lahze454]= function4(xk, dr, A, x1_lahze453,x2_lahze453,x3_lahze453 ,x4_lahze453,x1_next_chosen_lahze454,x2_next_chosen_lahze454,x3_next_chosen_lahze454,x4_next_chosen_lahze454,u_star454,js4541001);
[x1_lahze455,x2_lahze455,x3_lahze455,x4_lahze455]= function4(xk, dr, A, x1_lahze454,x2_lahze454,x3_lahze454 ,x4_lahze454,x1_next_chosen_lahze455,x2_next_chosen_lahze455,x3_next_chosen_lahze455,x4_next_chosen_lahze455,u_star455,js4551001);
[x1_lahze456,x2_lahze456,x3_lahze456,x4_lahze456]= function4(xk, dr, A, x1_lahze455,x2_lahze455,x3_lahze455 ,x4_lahze455,x1_next_chosen_lahze456,x2_next_chosen_lahze456,x3_next_chosen_lahze456,x4_next_chosen_lahze456,u_star456,js4561001);
[x1_lahze457,x2_lahze457,x3_lahze457,x4_lahze457]= function4(xk, dr, A, x1_lahze456,x2_lahze456,x3_lahze456 ,x4_lahze456,x1_next_chosen_lahze457,x2_next_chosen_lahze457,x3_next_chosen_lahze457,x4_next_chosen_lahze457,u_star457,js4571001);
[x1_lahze458,x2_lahze458,x3_lahze458,x4_lahze458]= function4(xk, dr, A, x1_lahze457,x2_lahze457,x3_lahze457 ,x4_lahze457,x1_next_chosen_lahze458,x2_next_chosen_lahze458,x3_next_chosen_lahze458,x4_next_chosen_lahze458,u_star458,js4581001);
[x1_lahze459,x2_lahze459,x3_lahze459,x4_lahze459]= function4(xk, dr, A, x1_lahze458,x2_lahze458,x3_lahze458 ,x4_lahze458,x1_next_chosen_lahze459,x2_next_chosen_lahze459,x3_next_chosen_lahze459,x4_next_chosen_lahze459,u_star459,js4591001);
[x1_lahze460,x2_lahze460,x3_lahze460,x4_lahze460]= function4(xk, dr, A, x1_lahze459,x2_lahze459,x3_lahze459 ,x4_lahze459,x1_next_chosen_lahze460,x2_next_chosen_lahze460,x3_next_chosen_lahze460,x4_next_chosen_lahze460,u_star460,js4601001);
[x1_lahze461,x2_lahze461,x3_lahze461,x4_lahze461]= function4(xk, dr, A, x1_lahze460,x2_lahze460,x3_lahze460 ,x4_lahze460,x1_next_chosen_lahze461,x2_next_chosen_lahze461,x3_next_chosen_lahze461,x4_next_chosen_lahze461,u_star461,js4611001);
[x1_lahze462,x2_lahze462,x3_lahze462,x4_lahze462]= function4(xk, dr, A, x1_lahze461,x2_lahze461,x3_lahze461 ,x4_lahze461,x1_next_chosen_lahze462,x2_next_chosen_lahze462,x3_next_chosen_lahze462,x4_next_chosen_lahze462,u_star462,js4621001);
[x1_lahze463,x2_lahze463,x3_lahze463,x4_lahze463]= function4(xk, dr, A, x1_lahze462,x2_lahze462,x3_lahze462 ,x4_lahze462,x1_next_chosen_lahze463,x2_next_chosen_lahze463,x3_next_chosen_lahze463,x4_next_chosen_lahze463,u_star463,js4631001);
[x1_lahze464,x2_lahze464,x3_lahze464,x4_lahze464]= function4(xk, dr, A, x1_lahze463,x2_lahze463,x3_lahze463 ,x4_lahze463,x1_next_chosen_lahze464,x2_next_chosen_lahze464,x3_next_chosen_lahze464,x4_next_chosen_lahze464,u_star464,js4641001);
[x1_lahze465,x2_lahze465,x3_lahze465,x4_lahze465]= function4(xk, dr, A, x1_lahze464,x2_lahze464,x3_lahze464 ,x4_lahze464,x1_next_chosen_lahze465,x2_next_chosen_lahze465,x3_next_chosen_lahze465,x4_next_chosen_lahze465,u_star465,js4651001);
[x1_lahze466,x2_lahze466,x3_lahze466,x4_lahze466]= function4(xk, dr, A, x1_lahze465,x2_lahze465,x3_lahze465 ,x4_lahze465,x1_next_chosen_lahze466,x2_next_chosen_lahze466,x3_next_chosen_lahze466,x4_next_chosen_lahze466,u_star466,js4661001);
[x1_lahze467,x2_lahze467,x3_lahze467,x4_lahze467]= function4(xk, dr, A, x1_lahze466,x2_lahze466,x3_lahze466 ,x4_lahze466,x1_next_chosen_lahze467,x2_next_chosen_lahze467,x3_next_chosen_lahze467,x4_next_chosen_lahze467,u_star467,js4671001);
[x1_lahze468,x2_lahze468,x3_lahze468,x4_lahze468]= function4(xk, dr, A, x1_lahze467,x2_lahze467,x3_lahze467 ,x4_lahze467,x1_next_chosen_lahze468,x2_next_chosen_lahze468,x3_next_chosen_lahze468,x4_next_chosen_lahze468,u_star468,js4681001);
[x1_lahze469,x2_lahze469,x3_lahze469,x4_lahze469]= function4(xk, dr, A, x1_lahze468,x2_lahze468,x3_lahze468 ,x4_lahze468,x1_next_chosen_lahze469,x2_next_chosen_lahze469,x3_next_chosen_lahze469,x4_next_chosen_lahze469,u_star469,js4691001);
[x1_lahze470,x2_lahze470,x3_lahze470,x4_lahze470]= function4(xk, dr, A, x1_lahze469,x2_lahze469,x3_lahze469 ,x4_lahze469,x1_next_chosen_lahze470,x2_next_chosen_lahze470,x3_next_chosen_lahze470,x4_next_chosen_lahze470,u_star470,js4701001);
[x1_lahze471,x2_lahze471,x3_lahze471,x4_lahze471]= function4(xk, dr, A, x1_lahze470,x2_lahze470,x3_lahze470 ,x4_lahze470,x1_next_chosen_lahze471,x2_next_chosen_lahze471,x3_next_chosen_lahze471,x4_next_chosen_lahze471,u_star471,js4711001);
[x1_lahze472,x2_lahze472,x3_lahze472,x4_lahze472]= function4(xk, dr, A, x1_lahze471,x2_lahze471,x3_lahze471 ,x4_lahze471,x1_next_chosen_lahze472,x2_next_chosen_lahze472,x3_next_chosen_lahze472,x4_next_chosen_lahze472,u_star472,js4721001);
[x1_lahze473,x2_lahze473,x3_lahze473,x4_lahze473]= function4(xk, dr, A, x1_lahze472,x2_lahze472,x3_lahze472 ,x4_lahze472,x1_next_chosen_lahze473,x2_next_chosen_lahze473,x3_next_chosen_lahze473,x4_next_chosen_lahze473,u_star473,js4731001);
[x1_lahze474,x2_lahze474,x3_lahze474,x4_lahze474]= function4(xk, dr, A, x1_lahze473,x2_lahze473,x3_lahze473 ,x4_lahze473,x1_next_chosen_lahze474,x2_next_chosen_lahze474,x3_next_chosen_lahze474,x4_next_chosen_lahze474,u_star474,js4741001);
[x1_lahze475,x2_lahze475,x3_lahze475,x4_lahze475]= function4(xk, dr, A, x1_lahze474,x2_lahze474,x3_lahze474 ,x4_lahze474,x1_next_chosen_lahze475,x2_next_chosen_lahze475,x3_next_chosen_lahze475,x4_next_chosen_lahze475,u_star475,js4751001);
[x1_lahze476,x2_lahze476,x3_lahze476,x4_lahze476]= function4(xk, dr, A, x1_lahze475,x2_lahze475,x3_lahze475 ,x4_lahze475,x1_next_chosen_lahze476,x2_next_chosen_lahze476,x3_next_chosen_lahze476,x4_next_chosen_lahze476,u_star476,js4761001);
[x1_lahze477,x2_lahze477,x3_lahze477,x4_lahze477]= function4(xk, dr, A, x1_lahze476,x2_lahze476,x3_lahze476 ,x4_lahze476,x1_next_chosen_lahze477,x2_next_chosen_lahze477,x3_next_chosen_lahze477,x4_next_chosen_lahze477,u_star477,js4771001);
[x1_lahze478,x2_lahze478,x3_lahze478,x4_lahze478]= function4(xk, dr, A, x1_lahze477,x2_lahze477,x3_lahze477 ,x4_lahze477,x1_next_chosen_lahze478,x2_next_chosen_lahze478,x3_next_chosen_lahze478,x4_next_chosen_lahze478,u_star478,js4781001);
[x1_lahze479,x2_lahze479,x3_lahze479,x4_lahze479]= function4(xk, dr, A, x1_lahze478,x2_lahze478,x3_lahze478 ,x4_lahze478,x1_next_chosen_lahze479,x2_next_chosen_lahze479,x3_next_chosen_lahze479,x4_next_chosen_lahze479,u_star479,js4791001);
[x1_lahze480,x2_lahze480,x3_lahze480,x4_lahze480]= function4(xk, dr, A, x1_lahze479,x2_lahze479,x3_lahze479 ,x4_lahze479,x1_next_chosen_lahze480,x2_next_chosen_lahze480,x3_next_chosen_lahze480,x4_next_chosen_lahze480,u_star480,js4801001);
[x1_lahze481,x2_lahze481,x3_lahze481,x4_lahze481]= function4(xk, dr, A, x1_lahze480,x2_lahze480,x3_lahze480 ,x4_lahze480,x1_next_chosen_lahze481,x2_next_chosen_lahze481,x3_next_chosen_lahze481,x4_next_chosen_lahze481,u_star481,js4811001);
[x1_lahze482,x2_lahze482,x3_lahze482,x4_lahze482]= function4(xk, dr, A, x1_lahze481,x2_lahze481,x3_lahze481 ,x4_lahze481,x1_next_chosen_lahze482,x2_next_chosen_lahze482,x3_next_chosen_lahze482,x4_next_chosen_lahze482,u_star482,js4821001);
[x1_lahze483,x2_lahze483,x3_lahze483,x4_lahze483]= function4(xk, dr, A, x1_lahze482,x2_lahze482,x3_lahze482 ,x4_lahze482,x1_next_chosen_lahze483,x2_next_chosen_lahze483,x3_next_chosen_lahze483,x4_next_chosen_lahze483,u_star483,js4831001);
[x1_lahze484,x2_lahze484,x3_lahze484,x4_lahze484]= function4(xk, dr, A, x1_lahze483,x2_lahze483,x3_lahze483 ,x4_lahze483,x1_next_chosen_lahze484,x2_next_chosen_lahze484,x3_next_chosen_lahze484,x4_next_chosen_lahze484,u_star484,js4841001);
[x1_lahze485,x2_lahze485,x3_lahze485,x4_lahze485]= function4(xk, dr, A, x1_lahze484,x2_lahze484,x3_lahze484 ,x4_lahze484,x1_next_chosen_lahze485,x2_next_chosen_lahze485,x3_next_chosen_lahze485,x4_next_chosen_lahze485,u_star485,js4851001);
[x1_lahze486,x2_lahze486,x3_lahze486,x4_lahze486]= function4(xk, dr, A, x1_lahze485,x2_lahze485,x3_lahze485 ,x4_lahze485,x1_next_chosen_lahze486,x2_next_chosen_lahze486,x3_next_chosen_lahze486,x4_next_chosen_lahze486,u_star486,js4861001);
[x1_lahze487,x2_lahze487,x3_lahze487,x4_lahze487]= function4(xk, dr, A, x1_lahze486,x2_lahze486,x3_lahze486 ,x4_lahze486,x1_next_chosen_lahze487,x2_next_chosen_lahze487,x3_next_chosen_lahze487,x4_next_chosen_lahze487,u_star487,js4871001);
[x1_lahze488,x2_lahze488,x3_lahze488,x4_lahze488]= function4(xk, dr, A, x1_lahze487,x2_lahze487,x3_lahze487 ,x4_lahze487,x1_next_chosen_lahze488,x2_next_chosen_lahze488,x3_next_chosen_lahze488,x4_next_chosen_lahze488,u_star488,js4881001);
[x1_lahze489,x2_lahze489,x3_lahze489,x4_lahze489]= function4(xk, dr, A, x1_lahze488,x2_lahze488,x3_lahze488 ,x4_lahze488,x1_next_chosen_lahze489,x2_next_chosen_lahze489,x3_next_chosen_lahze489,x4_next_chosen_lahze489,u_star489,js4891001);
[x1_lahze490,x2_lahze490,x3_lahze490,x4_lahze490]= function4(xk, dr, A, x1_lahze489,x2_lahze489,x3_lahze489 ,x4_lahze489,x1_next_chosen_lahze490,x2_next_chosen_lahze490,x3_next_chosen_lahze490,x4_next_chosen_lahze490,u_star490,js4901001);
[x1_lahze491,x2_lahze491,x3_lahze491,x4_lahze491]= function4(xk, dr, A, x1_lahze490,x2_lahze490,x3_lahze490 ,x4_lahze490,x1_next_chosen_lahze491,x2_next_chosen_lahze491,x3_next_chosen_lahze491,x4_next_chosen_lahze491,u_star491,js4911001);
[x1_lahze492,x2_lahze492,x3_lahze492,x4_lahze492]= function4(xk, dr, A, x1_lahze491,x2_lahze491,x3_lahze491 ,x4_lahze491,x1_next_chosen_lahze492,x2_next_chosen_lahze492,x3_next_chosen_lahze492,x4_next_chosen_lahze492,u_star492,js4921001);
[x1_lahze493,x2_lahze493,x3_lahze493,x4_lahze493]= function4(xk, dr, A, x1_lahze492,x2_lahze492,x3_lahze492 ,x4_lahze492,x1_next_chosen_lahze493,x2_next_chosen_lahze493,x3_next_chosen_lahze493,x4_next_chosen_lahze493,u_star493,js4931001);
[x1_lahze494,x2_lahze494,x3_lahze494,x4_lahze494]= function4(xk, dr, A, x1_lahze493,x2_lahze493,x3_lahze493 ,x4_lahze493,x1_next_chosen_lahze494,x2_next_chosen_lahze494,x3_next_chosen_lahze494,x4_next_chosen_lahze494,u_star494,js4941001);
[x1_lahze495,x2_lahze495,x3_lahze495,x4_lahze495]= function4(xk, dr, A, x1_lahze494,x2_lahze494,x3_lahze494 ,x4_lahze494,x1_next_chosen_lahze495,x2_next_chosen_lahze495,x3_next_chosen_lahze495,x4_next_chosen_lahze495,u_star495,js4951001);
[x1_lahze496,x2_lahze496,x3_lahze496,x4_lahze496]= function4(xk, dr, A, x1_lahze495,x2_lahze495,x3_lahze495 ,x4_lahze495,x1_next_chosen_lahze496,x2_next_chosen_lahze496,x3_next_chosen_lahze496,x4_next_chosen_lahze496,u_star496,js4961001);
[x1_lahze497,x2_lahze497,x3_lahze497,x4_lahze497]= function4(xk, dr, A, x1_lahze496,x2_lahze496,x3_lahze496 ,x4_lahze496,x1_next_chosen_lahze497,x2_next_chosen_lahze497,x3_next_chosen_lahze497,x4_next_chosen_lahze497,u_star497,js4971001);
[x1_lahze498,x2_lahze498,x3_lahze498,x4_lahze498]= function4(xk, dr, A, x1_lahze497,x2_lahze497,x3_lahze497 ,x4_lahze497,x1_next_chosen_lahze498,x2_next_chosen_lahze498,x3_next_chosen_lahze498,x4_next_chosen_lahze498,u_star498,js4981001);
[x1_lahze499,x2_lahze499,x3_lahze499,x4_lahze499]= function4(xk, dr, A, x1_lahze498,x2_lahze498,x3_lahze498 ,x4_lahze498,x1_next_chosen_lahze499,x2_next_chosen_lahze499,x3_next_chosen_lahze499,x4_next_chosen_lahze499,u_star499,js4991001);
[x1_lahze500,x2_lahze500,x3_lahze500,x4_lahze500]= function4(xk, dr, A, x1_lahze499,x2_lahze499,x3_lahze499 ,x4_lahze499,x1_next_chosen_lahze500,x2_next_chosen_lahze500,x3_next_chosen_lahze500,x4_next_chosen_lahze500,u_star500,js5001001);
[x1_lahze501,x2_lahze501,x3_lahze501,x4_lahze501]= function4(xk, dr, A, x1_lahze500,x2_lahze500,x3_lahze500 ,x4_lahze500,x1_next_chosen_lahze501,x2_next_chosen_lahze501,x3_next_chosen_lahze501,x4_next_chosen_lahze501,u_star501,js5011001);
[x1_lahze502,x2_lahze502,x3_lahze502,x4_lahze502]= function4(xk, dr, A, x1_lahze501,x2_lahze501,x3_lahze501 ,x4_lahze501,x1_next_chosen_lahze502,x2_next_chosen_lahze502,x3_next_chosen_lahze502,x4_next_chosen_lahze502,u_star502,js5021001);
[x1_lahze503,x2_lahze503,x3_lahze503,x4_lahze503]= function4(xk, dr, A, x1_lahze502,x2_lahze502,x3_lahze502 ,x4_lahze502,x1_next_chosen_lahze503,x2_next_chosen_lahze503,x3_next_chosen_lahze503,x4_next_chosen_lahze503,u_star503,js5031001);
[x1_lahze504,x2_lahze504,x3_lahze504,x4_lahze504]= function4(xk, dr, A, x1_lahze503,x2_lahze503,x3_lahze503 ,x4_lahze503,x1_next_chosen_lahze504,x2_next_chosen_lahze504,x3_next_chosen_lahze504,x4_next_chosen_lahze504,u_star504,js5041001);
[x1_lahze505,x2_lahze505,x3_lahze505,x4_lahze505]= function4(xk, dr, A, x1_lahze504,x2_lahze504,x3_lahze504 ,x4_lahze504,x1_next_chosen_lahze505,x2_next_chosen_lahze505,x3_next_chosen_lahze505,x4_next_chosen_lahze505,u_star505,js5051001);
[x1_lahze506,x2_lahze506,x3_lahze506,x4_lahze506]= function4(xk, dr, A, x1_lahze505,x2_lahze505,x3_lahze505 ,x4_lahze505,x1_next_chosen_lahze506,x2_next_chosen_lahze506,x3_next_chosen_lahze506,x4_next_chosen_lahze506,u_star506,js5061001);
[x1_lahze507,x2_lahze507,x3_lahze507,x4_lahze507]= function4(xk, dr, A, x1_lahze506,x2_lahze506,x3_lahze506 ,x4_lahze506,x1_next_chosen_lahze507,x2_next_chosen_lahze507,x3_next_chosen_lahze507,x4_next_chosen_lahze507,u_star507,js5071001);
[x1_lahze508,x2_lahze508,x3_lahze508,x4_lahze508]= function4(xk, dr, A, x1_lahze507,x2_lahze507,x3_lahze507 ,x4_lahze507,x1_next_chosen_lahze508,x2_next_chosen_lahze508,x3_next_chosen_lahze508,x4_next_chosen_lahze508,u_star508,js5081001);
[x1_lahze509,x2_lahze509,x3_lahze509,x4_lahze509]= function4(xk, dr, A, x1_lahze508,x2_lahze508,x3_lahze508 ,x4_lahze508,x1_next_chosen_lahze509,x2_next_chosen_lahze509,x3_next_chosen_lahze509,x4_next_chosen_lahze509,u_star509,js5091001);
[x1_lahze510,x2_lahze510,x3_lahze510,x4_lahze510]= function4(xk, dr, A, x1_lahze509,x2_lahze509,x3_lahze509 ,x4_lahze509,x1_next_chosen_lahze510,x2_next_chosen_lahze510,x3_next_chosen_lahze510,x4_next_chosen_lahze510,u_star510,js5101001);
[x1_lahze511,x2_lahze511,x3_lahze511,x4_lahze511]= function4(xk, dr, A, x1_lahze510,x2_lahze510,x3_lahze510 ,x4_lahze510,x1_next_chosen_lahze511,x2_next_chosen_lahze511,x3_next_chosen_lahze511,x4_next_chosen_lahze511,u_star511,js5111001);
[x1_lahze512,x2_lahze512,x3_lahze512,x4_lahze512]= function4(xk, dr, A, x1_lahze511,x2_lahze511,x3_lahze511 ,x4_lahze511,x1_next_chosen_lahze512,x2_next_chosen_lahze512,x3_next_chosen_lahze512,x4_next_chosen_lahze512,u_star512,js5121001);
[x1_lahze513,x2_lahze513,x3_lahze513,x4_lahze513]= function4(xk, dr, A, x1_lahze512,x2_lahze512,x3_lahze512 ,x4_lahze512,x1_next_chosen_lahze513,x2_next_chosen_lahze513,x3_next_chosen_lahze513,x4_next_chosen_lahze513,u_star513,js5131001);
[x1_lahze514,x2_lahze514,x3_lahze514,x4_lahze514]= function4(xk, dr, A, x1_lahze513,x2_lahze513,x3_lahze513 ,x4_lahze513,x1_next_chosen_lahze514,x2_next_chosen_lahze514,x3_next_chosen_lahze514,x4_next_chosen_lahze514,u_star514,js5141001);
[x1_lahze515,x2_lahze515,x3_lahze515,x4_lahze515]= function4(xk, dr, A, x1_lahze514,x2_lahze514,x3_lahze514 ,x4_lahze514,x1_next_chosen_lahze515,x2_next_chosen_lahze515,x3_next_chosen_lahze515,x4_next_chosen_lahze515,u_star515,js5151001);
[x1_lahze516,x2_lahze516,x3_lahze516,x4_lahze516]= function4(xk, dr, A, x1_lahze515,x2_lahze515,x3_lahze515 ,x4_lahze515,x1_next_chosen_lahze516,x2_next_chosen_lahze516,x3_next_chosen_lahze516,x4_next_chosen_lahze516,u_star516,js5161001);
[x1_lahze517,x2_lahze517,x3_lahze517,x4_lahze517]= function4(xk, dr, A, x1_lahze516,x2_lahze516,x3_lahze516 ,x4_lahze516,x1_next_chosen_lahze517,x2_next_chosen_lahze517,x3_next_chosen_lahze517,x4_next_chosen_lahze517,u_star517,js5171001);
[x1_lahze518,x2_lahze518,x3_lahze518,x4_lahze518]= function4(xk, dr, A, x1_lahze517,x2_lahze517,x3_lahze517 ,x4_lahze517,x1_next_chosen_lahze518,x2_next_chosen_lahze518,x3_next_chosen_lahze518,x4_next_chosen_lahze518,u_star518,js5181001);
[x1_lahze519,x2_lahze519,x3_lahze519,x4_lahze519]= function4(xk, dr, A, x1_lahze518,x2_lahze518,x3_lahze518 ,x4_lahze518,x1_next_chosen_lahze519,x2_next_chosen_lahze519,x3_next_chosen_lahze519,x4_next_chosen_lahze519,u_star519,js5191001);
[x1_lahze520,x2_lahze520,x3_lahze520,x4_lahze520]= function4(xk, dr, A, x1_lahze519,x2_lahze519,x3_lahze519 ,x4_lahze519,x1_next_chosen_lahze520,x2_next_chosen_lahze520,x3_next_chosen_lahze520,x4_next_chosen_lahze520,u_star520,js5201001);
[x1_lahze521,x2_lahze521,x3_lahze521,x4_lahze521]= function4(xk, dr, A, x1_lahze520,x2_lahze520,x3_lahze520 ,x4_lahze520,x1_next_chosen_lahze521,x2_next_chosen_lahze521,x3_next_chosen_lahze521,x4_next_chosen_lahze521,u_star521,js5211001);
[x1_lahze522,x2_lahze522,x3_lahze522,x4_lahze522]= function4(xk, dr, A, x1_lahze521,x2_lahze521,x3_lahze521 ,x4_lahze521,x1_next_chosen_lahze522,x2_next_chosen_lahze522,x3_next_chosen_lahze522,x4_next_chosen_lahze522,u_star522,js5221001);
[x1_lahze523,x2_lahze523,x3_lahze523,x4_lahze523]= function4(xk, dr, A, x1_lahze522,x2_lahze522,x3_lahze522 ,x4_lahze522,x1_next_chosen_lahze523,x2_next_chosen_lahze523,x3_next_chosen_lahze523,x4_next_chosen_lahze523,u_star523,js5231001);
[x1_lahze524,x2_lahze524,x3_lahze524,x4_lahze524]= function4(xk, dr, A, x1_lahze523,x2_lahze523,x3_lahze523 ,x4_lahze523,x1_next_chosen_lahze524,x2_next_chosen_lahze524,x3_next_chosen_lahze524,x4_next_chosen_lahze524,u_star524,js5241001);
[x1_lahze525,x2_lahze525,x3_lahze525,x4_lahze525]= function4(xk, dr, A, x1_lahze524,x2_lahze524,x3_lahze524 ,x4_lahze524,x1_next_chosen_lahze525,x2_next_chosen_lahze525,x3_next_chosen_lahze525,x4_next_chosen_lahze525,u_star525,js5251001);
[x1_lahze526,x2_lahze526,x3_lahze526,x4_lahze526]= function4(xk, dr, A, x1_lahze525,x2_lahze525,x3_lahze525 ,x4_lahze525,x1_next_chosen_lahze526,x2_next_chosen_lahze526,x3_next_chosen_lahze526,x4_next_chosen_lahze526,u_star526,js5261001);
[x1_lahze527,x2_lahze527,x3_lahze527,x4_lahze527]= function4(xk, dr, A, x1_lahze526,x2_lahze526,x3_lahze526 ,x4_lahze526,x1_next_chosen_lahze527,x2_next_chosen_lahze527,x3_next_chosen_lahze527,x4_next_chosen_lahze527,u_star527,js5271001);
[x1_lahze528,x2_lahze528,x3_lahze528,x4_lahze528]= function4(xk, dr, A, x1_lahze527,x2_lahze527,x3_lahze527 ,x4_lahze527,x1_next_chosen_lahze528,x2_next_chosen_lahze528,x3_next_chosen_lahze528,x4_next_chosen_lahze528,u_star528,js5281001);
[x1_lahze529,x2_lahze529,x3_lahze529,x4_lahze529]= function4(xk, dr, A, x1_lahze528,x2_lahze528,x3_lahze528 ,x4_lahze528,x1_next_chosen_lahze529,x2_next_chosen_lahze529,x3_next_chosen_lahze529,x4_next_chosen_lahze529,u_star529,js5291001);
[x1_lahze530,x2_lahze530,x3_lahze530,x4_lahze530]= function4(xk, dr, A, x1_lahze529,x2_lahze529,x3_lahze529 ,x4_lahze529,x1_next_chosen_lahze530,x2_next_chosen_lahze530,x3_next_chosen_lahze530,x4_next_chosen_lahze530,u_star530,js5301001);
[x1_lahze531,x2_lahze531,x3_lahze531,x4_lahze531]= function4(xk, dr, A, x1_lahze530,x2_lahze530,x3_lahze530 ,x4_lahze530,x1_next_chosen_lahze531,x2_next_chosen_lahze531,x3_next_chosen_lahze531,x4_next_chosen_lahze531,u_star531,js5311001);
[x1_lahze532,x2_lahze532,x3_lahze532,x4_lahze532]= function4(xk, dr, A, x1_lahze531,x2_lahze531,x3_lahze531 ,x4_lahze531,x1_next_chosen_lahze532,x2_next_chosen_lahze532,x3_next_chosen_lahze532,x4_next_chosen_lahze532,u_star532,js5321001);
[x1_lahze533,x2_lahze533,x3_lahze533,x4_lahze533]= function4(xk, dr, A, x1_lahze532,x2_lahze532,x3_lahze532 ,x4_lahze532,x1_next_chosen_lahze533,x2_next_chosen_lahze533,x3_next_chosen_lahze533,x4_next_chosen_lahze533,u_star533,js5331001);
[x1_lahze534,x2_lahze534,x3_lahze534,x4_lahze534]= function4(xk, dr, A, x1_lahze533,x2_lahze533,x3_lahze533 ,x4_lahze533,x1_next_chosen_lahze534,x2_next_chosen_lahze534,x3_next_chosen_lahze534,x4_next_chosen_lahze534,u_star534,js5341001);
[x1_lahze535,x2_lahze535,x3_lahze535,x4_lahze535]= function4(xk, dr, A, x1_lahze534,x2_lahze534,x3_lahze534 ,x4_lahze534,x1_next_chosen_lahze535,x2_next_chosen_lahze535,x3_next_chosen_lahze535,x4_next_chosen_lahze535,u_star535,js5351001);
[x1_lahze536,x2_lahze536,x3_lahze536,x4_lahze536]= function4(xk, dr, A, x1_lahze535,x2_lahze535,x3_lahze535 ,x4_lahze535,x1_next_chosen_lahze536,x2_next_chosen_lahze536,x3_next_chosen_lahze536,x4_next_chosen_lahze536,u_star536,js5361001);
[x1_lahze537,x2_lahze537,x3_lahze537,x4_lahze537]= function4(xk, dr, A, x1_lahze536,x2_lahze536,x3_lahze536 ,x4_lahze536,x1_next_chosen_lahze537,x2_next_chosen_lahze537,x3_next_chosen_lahze537,x4_next_chosen_lahze537,u_star537,js5371001);
[x1_lahze538,x2_lahze538,x3_lahze538,x4_lahze538]= function4(xk, dr, A, x1_lahze537,x2_lahze537,x3_lahze537 ,x4_lahze537,x1_next_chosen_lahze538,x2_next_chosen_lahze538,x3_next_chosen_lahze538,x4_next_chosen_lahze538,u_star538,js5381001);
[x1_lahze539,x2_lahze539,x3_lahze539,x4_lahze539]= function4(xk, dr, A, x1_lahze538,x2_lahze538,x3_lahze538 ,x4_lahze538,x1_next_chosen_lahze539,x2_next_chosen_lahze539,x3_next_chosen_lahze539,x4_next_chosen_lahze539,u_star539,js5391001);
[x1_lahze540,x2_lahze540,x3_lahze540,x4_lahze540]= function4(xk, dr, A, x1_lahze539,x2_lahze539,x3_lahze539 ,x4_lahze539,x1_next_chosen_lahze540,x2_next_chosen_lahze540,x3_next_chosen_lahze540,x4_next_chosen_lahze540,u_star540,js5401001);
[x1_lahze541,x2_lahze541,x3_lahze541,x4_lahze541]= function4(xk, dr, A, x1_lahze540,x2_lahze540,x3_lahze540 ,x4_lahze540,x1_next_chosen_lahze541,x2_next_chosen_lahze541,x3_next_chosen_lahze541,x4_next_chosen_lahze541,u_star541,js5411001);
[x1_lahze542,x2_lahze542,x3_lahze542,x4_lahze542]= function4(xk, dr, A, x1_lahze541,x2_lahze541,x3_lahze541 ,x4_lahze541,x1_next_chosen_lahze542,x2_next_chosen_lahze542,x3_next_chosen_lahze542,x4_next_chosen_lahze542,u_star542,js5421001);
[x1_lahze543,x2_lahze543,x3_lahze543,x4_lahze543]= function4(xk, dr, A, x1_lahze542,x2_lahze542,x3_lahze542 ,x4_lahze542,x1_next_chosen_lahze543,x2_next_chosen_lahze543,x3_next_chosen_lahze543,x4_next_chosen_lahze543,u_star543,js5431001);
[x1_lahze544,x2_lahze544,x3_lahze544,x4_lahze544]= function4(xk, dr, A, x1_lahze543,x2_lahze543,x3_lahze543 ,x4_lahze543,x1_next_chosen_lahze544,x2_next_chosen_lahze544,x3_next_chosen_lahze544,x4_next_chosen_lahze544,u_star544,js5441001);
[x1_lahze545,x2_lahze545,x3_lahze545,x4_lahze545]= function4(xk, dr, A, x1_lahze544,x2_lahze544,x3_lahze544 ,x4_lahze544,x1_next_chosen_lahze545,x2_next_chosen_lahze545,x3_next_chosen_lahze545,x4_next_chosen_lahze545,u_star545,js5451001);
[x1_lahze546,x2_lahze546,x3_lahze546,x4_lahze546]= function4(xk, dr, A, x1_lahze545,x2_lahze545,x3_lahze545 ,x4_lahze545,x1_next_chosen_lahze546,x2_next_chosen_lahze546,x3_next_chosen_lahze546,x4_next_chosen_lahze546,u_star546,js5461001);
[x1_lahze547,x2_lahze547,x3_lahze547,x4_lahze547]= function4(xk, dr, A, x1_lahze546,x2_lahze546,x3_lahze546 ,x4_lahze546,x1_next_chosen_lahze547,x2_next_chosen_lahze547,x3_next_chosen_lahze547,x4_next_chosen_lahze547,u_star547,js5471001);
[x1_lahze548,x2_lahze548,x3_lahze548,x4_lahze548]= function4(xk, dr, A, x1_lahze547,x2_lahze547,x3_lahze547 ,x4_lahze547,x1_next_chosen_lahze548,x2_next_chosen_lahze548,x3_next_chosen_lahze548,x4_next_chosen_lahze548,u_star548,js5481001);
[x1_lahze549,x2_lahze549,x3_lahze549,x4_lahze549]= function4(xk, dr, A, x1_lahze548,x2_lahze548,x3_lahze548 ,x4_lahze548,x1_next_chosen_lahze549,x2_next_chosen_lahze549,x3_next_chosen_lahze549,x4_next_chosen_lahze549,u_star549,js5491001);
[x1_lahze550,x2_lahze550,x3_lahze550,x4_lahze550]= function4(xk, dr, A, x1_lahze549,x2_lahze549,x3_lahze549 ,x4_lahze549,x1_next_chosen_lahze550,x2_next_chosen_lahze550,x3_next_chosen_lahze550,x4_next_chosen_lahze550,u_star550,js5501001);
[x1_lahze551,x2_lahze551,x3_lahze551,x4_lahze551]= function4(xk, dr, A, x1_lahze550,x2_lahze550,x3_lahze550 ,x4_lahze550,x1_next_chosen_lahze551,x2_next_chosen_lahze551,x3_next_chosen_lahze551,x4_next_chosen_lahze551,u_star551,js5511001);
[x1_lahze552,x2_lahze552,x3_lahze552,x4_lahze552]= function4(xk, dr, A, x1_lahze551,x2_lahze551,x3_lahze551 ,x4_lahze551,x1_next_chosen_lahze552,x2_next_chosen_lahze552,x3_next_chosen_lahze552,x4_next_chosen_lahze552,u_star552,js5521001);
[x1_lahze553,x2_lahze553,x3_lahze553,x4_lahze553]= function4(xk, dr, A, x1_lahze552,x2_lahze552,x3_lahze552 ,x4_lahze552,x1_next_chosen_lahze553,x2_next_chosen_lahze553,x3_next_chosen_lahze553,x4_next_chosen_lahze553,u_star553,js5531001);
[x1_lahze554,x2_lahze554,x3_lahze554,x4_lahze554]= function4(xk, dr, A, x1_lahze553,x2_lahze553,x3_lahze553 ,x4_lahze553,x1_next_chosen_lahze554,x2_next_chosen_lahze554,x3_next_chosen_lahze554,x4_next_chosen_lahze554,u_star554,js5541001);
[x1_lahze555,x2_lahze555,x3_lahze555,x4_lahze555]= function4(xk, dr, A, x1_lahze554,x2_lahze554,x3_lahze554 ,x4_lahze554,x1_next_chosen_lahze555,x2_next_chosen_lahze555,x3_next_chosen_lahze555,x4_next_chosen_lahze555,u_star555,js5551001);
[x1_lahze556,x2_lahze556,x3_lahze556,x4_lahze556]= function4(xk, dr, A, x1_lahze555,x2_lahze555,x3_lahze555 ,x4_lahze555,x1_next_chosen_lahze556,x2_next_chosen_lahze556,x3_next_chosen_lahze556,x4_next_chosen_lahze556,u_star556,js5561001);
[x1_lahze557,x2_lahze557,x3_lahze557,x4_lahze557]= function4(xk, dr, A, x1_lahze556,x2_lahze556,x3_lahze556 ,x4_lahze556,x1_next_chosen_lahze557,x2_next_chosen_lahze557,x3_next_chosen_lahze557,x4_next_chosen_lahze557,u_star557,js5571001);
[x1_lahze558,x2_lahze558,x3_lahze558,x4_lahze558]= function4(xk, dr, A, x1_lahze557,x2_lahze557,x3_lahze557 ,x4_lahze557,x1_next_chosen_lahze558,x2_next_chosen_lahze558,x3_next_chosen_lahze558,x4_next_chosen_lahze558,u_star558,js5581001);
[x1_lahze559,x2_lahze559,x3_lahze559,x4_lahze559]= function4(xk, dr, A, x1_lahze558,x2_lahze558,x3_lahze558 ,x4_lahze558,x1_next_chosen_lahze559,x2_next_chosen_lahze559,x3_next_chosen_lahze559,x4_next_chosen_lahze559,u_star559,js5591001);
[x1_lahze560,x2_lahze560,x3_lahze560,x4_lahze560]= function4(xk, dr, A, x1_lahze559,x2_lahze559,x3_lahze559 ,x4_lahze559,x1_next_chosen_lahze560,x2_next_chosen_lahze560,x3_next_chosen_lahze560,x4_next_chosen_lahze560,u_star560,js5601001);
[x1_lahze561,x2_lahze561,x3_lahze561,x4_lahze561]= function4(xk, dr, A, x1_lahze560,x2_lahze560,x3_lahze560 ,x4_lahze560,x1_next_chosen_lahze561,x2_next_chosen_lahze561,x3_next_chosen_lahze561,x4_next_chosen_lahze561,u_star561,js5611001);
[x1_lahze562,x2_lahze562,x3_lahze562,x4_lahze562]= function4(xk, dr, A, x1_lahze561,x2_lahze561,x3_lahze561 ,x4_lahze561,x1_next_chosen_lahze562,x2_next_chosen_lahze562,x3_next_chosen_lahze562,x4_next_chosen_lahze562,u_star562,js5621001);
[x1_lahze563,x2_lahze563,x3_lahze563,x4_lahze563]= function4(xk, dr, A, x1_lahze562,x2_lahze562,x3_lahze562 ,x4_lahze562,x1_next_chosen_lahze563,x2_next_chosen_lahze563,x3_next_chosen_lahze563,x4_next_chosen_lahze563,u_star563,js5631001);
[x1_lahze564,x2_lahze564,x3_lahze564,x4_lahze564]= function4(xk, dr, A, x1_lahze563,x2_lahze563,x3_lahze563 ,x4_lahze563,x1_next_chosen_lahze564,x2_next_chosen_lahze564,x3_next_chosen_lahze564,x4_next_chosen_lahze564,u_star564,js5641001);
[x1_lahze565,x2_lahze565,x3_lahze565,x4_lahze565]= function4(xk, dr, A, x1_lahze564,x2_lahze564,x3_lahze564 ,x4_lahze564,x1_next_chosen_lahze565,x2_next_chosen_lahze565,x3_next_chosen_lahze565,x4_next_chosen_lahze565,u_star565,js5651001);
[x1_lahze566,x2_lahze566,x3_lahze566,x4_lahze566]= function4(xk, dr, A, x1_lahze565,x2_lahze565,x3_lahze565 ,x4_lahze565,x1_next_chosen_lahze566,x2_next_chosen_lahze566,x3_next_chosen_lahze566,x4_next_chosen_lahze566,u_star566,js5661001);
[x1_lahze567,x2_lahze567,x3_lahze567,x4_lahze567]= function4(xk, dr, A, x1_lahze566,x2_lahze566,x3_lahze566 ,x4_lahze566,x1_next_chosen_lahze567,x2_next_chosen_lahze567,x3_next_chosen_lahze567,x4_next_chosen_lahze567,u_star567,js5671001);
[x1_lahze568,x2_lahze568,x3_lahze568,x4_lahze568]= function4(xk, dr, A, x1_lahze567,x2_lahze567,x3_lahze567 ,x4_lahze567,x1_next_chosen_lahze568,x2_next_chosen_lahze568,x3_next_chosen_lahze568,x4_next_chosen_lahze568,u_star568,js5681001);
[x1_lahze569,x2_lahze569,x3_lahze569,x4_lahze569]= function4(xk, dr, A, x1_lahze568,x2_lahze568,x3_lahze568 ,x4_lahze568,x1_next_chosen_lahze569,x2_next_chosen_lahze569,x3_next_chosen_lahze569,x4_next_chosen_lahze569,u_star569,js5691001);
[x1_lahze570,x2_lahze570,x3_lahze570,x4_lahze570]= function4(xk, dr, A, x1_lahze569,x2_lahze569,x3_lahze569 ,x4_lahze569,x1_next_chosen_lahze570,x2_next_chosen_lahze570,x3_next_chosen_lahze570,x4_next_chosen_lahze570,u_star570,js5701001);
[x1_lahze571,x2_lahze571,x3_lahze571,x4_lahze571]= function4(xk, dr, A, x1_lahze570,x2_lahze570,x3_lahze570 ,x4_lahze570,x1_next_chosen_lahze571,x2_next_chosen_lahze571,x3_next_chosen_lahze571,x4_next_chosen_lahze571,u_star571,js5711001);
[x1_lahze572,x2_lahze572,x3_lahze572,x4_lahze572]= function4(xk, dr, A, x1_lahze571,x2_lahze571,x3_lahze571 ,x4_lahze571,x1_next_chosen_lahze572,x2_next_chosen_lahze572,x3_next_chosen_lahze572,x4_next_chosen_lahze572,u_star572,js5721001);
[x1_lahze573,x2_lahze573,x3_lahze573,x4_lahze573]= function4(xk, dr, A, x1_lahze572,x2_lahze572,x3_lahze572 ,x4_lahze572,x1_next_chosen_lahze573,x2_next_chosen_lahze573,x3_next_chosen_lahze573,x4_next_chosen_lahze573,u_star573,js5731001);
[x1_lahze574,x2_lahze574,x3_lahze574,x4_lahze574]= function4(xk, dr, A, x1_lahze573,x2_lahze573,x3_lahze573 ,x4_lahze573,x1_next_chosen_lahze574,x2_next_chosen_lahze574,x3_next_chosen_lahze574,x4_next_chosen_lahze574,u_star574,js5741001);
[x1_lahze575,x2_lahze575,x3_lahze575,x4_lahze575]= function4(xk, dr, A, x1_lahze574,x2_lahze574,x3_lahze574 ,x4_lahze574,x1_next_chosen_lahze575,x2_next_chosen_lahze575,x3_next_chosen_lahze575,x4_next_chosen_lahze575,u_star575,js5751001);
[x1_lahze576,x2_lahze576,x3_lahze576,x4_lahze576]= function4(xk, dr, A, x1_lahze575,x2_lahze575,x3_lahze575 ,x4_lahze575,x1_next_chosen_lahze576,x2_next_chosen_lahze576,x3_next_chosen_lahze576,x4_next_chosen_lahze576,u_star576,js5761001);
[x1_lahze577,x2_lahze577,x3_lahze577,x4_lahze577]= function4(xk, dr, A, x1_lahze576,x2_lahze576,x3_lahze576 ,x4_lahze576,x1_next_chosen_lahze577,x2_next_chosen_lahze577,x3_next_chosen_lahze577,x4_next_chosen_lahze577,u_star577,js5771001);
[x1_lahze578,x2_lahze578,x3_lahze578,x4_lahze578]= function4(xk, dr, A, x1_lahze577,x2_lahze577,x3_lahze577 ,x4_lahze577,x1_next_chosen_lahze578,x2_next_chosen_lahze578,x3_next_chosen_lahze578,x4_next_chosen_lahze578,u_star578,js5781001);
[x1_lahze579,x2_lahze579,x3_lahze579,x4_lahze579]= function4(xk, dr, A, x1_lahze578,x2_lahze578,x3_lahze578 ,x4_lahze578,x1_next_chosen_lahze579,x2_next_chosen_lahze579,x3_next_chosen_lahze579,x4_next_chosen_lahze579,u_star579,js5791001);
[x1_lahze580,x2_lahze580,x3_lahze580,x4_lahze580]= function4(xk, dr, A, x1_lahze579,x2_lahze579,x3_lahze579 ,x4_lahze579,x1_next_chosen_lahze580,x2_next_chosen_lahze580,x3_next_chosen_lahze580,x4_next_chosen_lahze580,u_star580,js5801001);
[x1_lahze581,x2_lahze581,x3_lahze581,x4_lahze581]= function4(xk, dr, A, x1_lahze580,x2_lahze580,x3_lahze580 ,x4_lahze580,x1_next_chosen_lahze581,x2_next_chosen_lahze581,x3_next_chosen_lahze581,x4_next_chosen_lahze581,u_star581,js5811001);
[x1_lahze582,x2_lahze582,x3_lahze582,x4_lahze582]= function4(xk, dr, A, x1_lahze581,x2_lahze581,x3_lahze581 ,x4_lahze581,x1_next_chosen_lahze582,x2_next_chosen_lahze582,x3_next_chosen_lahze582,x4_next_chosen_lahze582,u_star582,js5821001);
[x1_lahze583,x2_lahze583,x3_lahze583,x4_lahze583]= function4(xk, dr, A, x1_lahze582,x2_lahze582,x3_lahze582 ,x4_lahze582,x1_next_chosen_lahze583,x2_next_chosen_lahze583,x3_next_chosen_lahze583,x4_next_chosen_lahze583,u_star583,js5831001);
[x1_lahze584,x2_lahze584,x3_lahze584,x4_lahze584]= function4(xk, dr, A, x1_lahze583,x2_lahze583,x3_lahze583 ,x4_lahze583,x1_next_chosen_lahze584,x2_next_chosen_lahze584,x3_next_chosen_lahze584,x4_next_chosen_lahze584,u_star584,js5841001);
[x1_lahze585,x2_lahze585,x3_lahze585,x4_lahze585]= function4(xk, dr, A, x1_lahze584,x2_lahze584,x3_lahze584 ,x4_lahze584,x1_next_chosen_lahze585,x2_next_chosen_lahze585,x3_next_chosen_lahze585,x4_next_chosen_lahze585,u_star585,js5851001);
[x1_lahze586,x2_lahze586,x3_lahze586,x4_lahze586]= function4(xk, dr, A, x1_lahze585,x2_lahze585,x3_lahze585 ,x4_lahze585,x1_next_chosen_lahze586,x2_next_chosen_lahze586,x3_next_chosen_lahze586,x4_next_chosen_lahze586,u_star586,js5861001);
[x1_lahze587,x2_lahze587,x3_lahze587,x4_lahze587]= function4(xk, dr, A, x1_lahze586,x2_lahze586,x3_lahze586 ,x4_lahze586,x1_next_chosen_lahze587,x2_next_chosen_lahze587,x3_next_chosen_lahze587,x4_next_chosen_lahze587,u_star587,js5871001);
[x1_lahze588,x2_lahze588,x3_lahze588,x4_lahze588]= function4(xk, dr, A, x1_lahze587,x2_lahze587,x3_lahze587 ,x4_lahze587,x1_next_chosen_lahze588,x2_next_chosen_lahze588,x3_next_chosen_lahze588,x4_next_chosen_lahze588,u_star588,js5881001);
[x1_lahze589,x2_lahze589,x3_lahze589,x4_lahze589]= function4(xk, dr, A, x1_lahze588,x2_lahze588,x3_lahze588 ,x4_lahze588,x1_next_chosen_lahze589,x2_next_chosen_lahze589,x3_next_chosen_lahze589,x4_next_chosen_lahze589,u_star589,js5891001);
[x1_lahze590,x2_lahze590,x3_lahze590,x4_lahze590]= function4(xk, dr, A, x1_lahze589,x2_lahze589,x3_lahze589 ,x4_lahze589,x1_next_chosen_lahze590,x2_next_chosen_lahze590,x3_next_chosen_lahze590,x4_next_chosen_lahze590,u_star590,js5901001);
[x1_lahze591,x2_lahze591,x3_lahze591,x4_lahze591]= function4(xk, dr, A, x1_lahze590,x2_lahze590,x3_lahze590 ,x4_lahze590,x1_next_chosen_lahze591,x2_next_chosen_lahze591,x3_next_chosen_lahze591,x4_next_chosen_lahze591,u_star591,js5911001);
[x1_lahze592,x2_lahze592,x3_lahze592,x4_lahze592]= function4(xk, dr, A, x1_lahze591,x2_lahze591,x3_lahze591 ,x4_lahze591,x1_next_chosen_lahze592,x2_next_chosen_lahze592,x3_next_chosen_lahze592,x4_next_chosen_lahze592,u_star592,js5921001);
[x1_lahze593,x2_lahze593,x3_lahze593,x4_lahze593]= function4(xk, dr, A, x1_lahze592,x2_lahze592,x3_lahze592 ,x4_lahze592,x1_next_chosen_lahze593,x2_next_chosen_lahze593,x3_next_chosen_lahze593,x4_next_chosen_lahze593,u_star593,js5931001);
[x1_lahze594,x2_lahze594,x3_lahze594,x4_lahze594]= function4(xk, dr, A, x1_lahze593,x2_lahze593,x3_lahze593 ,x4_lahze593,x1_next_chosen_lahze594,x2_next_chosen_lahze594,x3_next_chosen_lahze594,x4_next_chosen_lahze594,u_star594,js5941001);
[x1_lahze595,x2_lahze595,x3_lahze595,x4_lahze595]= function4(xk, dr, A, x1_lahze594,x2_lahze594,x3_lahze594 ,x4_lahze594,x1_next_chosen_lahze595,x2_next_chosen_lahze595,x3_next_chosen_lahze595,x4_next_chosen_lahze595,u_star595,js5951001);
[x1_lahze596,x2_lahze596,x3_lahze596,x4_lahze596]= function4(xk, dr, A, x1_lahze595,x2_lahze595,x3_lahze595 ,x4_lahze595,x1_next_chosen_lahze596,x2_next_chosen_lahze596,x3_next_chosen_lahze596,x4_next_chosen_lahze596,u_star596,js5961001);
[x1_lahze597,x2_lahze597,x3_lahze597,x4_lahze597]= function4(xk, dr, A, x1_lahze596,x2_lahze596,x3_lahze596 ,x4_lahze596,x1_next_chosen_lahze597,x2_next_chosen_lahze597,x3_next_chosen_lahze597,x4_next_chosen_lahze597,u_star597,js5971001);
[x1_lahze598,x2_lahze598,x3_lahze598,x4_lahze598]= function4(xk, dr, A, x1_lahze597,x2_lahze597,x3_lahze597 ,x4_lahze597,x1_next_chosen_lahze598,x2_next_chosen_lahze598,x3_next_chosen_lahze598,x4_next_chosen_lahze598,u_star598,js5981001);
[x1_lahze599,x2_lahze599,x3_lahze599,x4_lahze599]= function4(xk, dr, A, x1_lahze598,x2_lahze598,x3_lahze598 ,x4_lahze598,x1_next_chosen_lahze599,x2_next_chosen_lahze599,x3_next_chosen_lahze599,x4_next_chosen_lahze599,u_star599,js5991001);
[x1_lahze600,x2_lahze600,x3_lahze600,x4_lahze600]= function4(xk, dr, A, x1_lahze599,x2_lahze599,x3_lahze599 ,x4_lahze599,x1_next_chosen_lahze600,x2_next_chosen_lahze600,x3_next_chosen_lahze600,x4_next_chosen_lahze600,u_star600,js6001001);
[x1_lahze601,x2_lahze601,x3_lahze601,x4_lahze601]= function4(xk, dr, A, x1_lahze600,x2_lahze600,x3_lahze600 ,x4_lahze600,x1_next_chosen_lahze601,x2_next_chosen_lahze601,x3_next_chosen_lahze601,x4_next_chosen_lahze601,u_star601,js6011001);
[x1_lahze602,x2_lahze602,x3_lahze602,x4_lahze602]= function4(xk, dr, A, x1_lahze601,x2_lahze601,x3_lahze601 ,x4_lahze601,x1_next_chosen_lahze602,x2_next_chosen_lahze602,x3_next_chosen_lahze602,x4_next_chosen_lahze602,u_star602,js6021001);
[x1_lahze603,x2_lahze603,x3_lahze603,x4_lahze603]= function4(xk, dr, A, x1_lahze602,x2_lahze602,x3_lahze602 ,x4_lahze602,x1_next_chosen_lahze603,x2_next_chosen_lahze603,x3_next_chosen_lahze603,x4_next_chosen_lahze603,u_star603,js6031001);
[x1_lahze604,x2_lahze604,x3_lahze604,x4_lahze604]= function4(xk, dr, A, x1_lahze603,x2_lahze603,x3_lahze603 ,x4_lahze603,x1_next_chosen_lahze604,x2_next_chosen_lahze604,x3_next_chosen_lahze604,x4_next_chosen_lahze604,u_star604,js6041001);
[x1_lahze605,x2_lahze605,x3_lahze605,x4_lahze605]= function4(xk, dr, A, x1_lahze604,x2_lahze604,x3_lahze604 ,x4_lahze604,x1_next_chosen_lahze605,x2_next_chosen_lahze605,x3_next_chosen_lahze605,x4_next_chosen_lahze605,u_star605,js6051001);
[x1_lahze606,x2_lahze606,x3_lahze606,x4_lahze606]= function4(xk, dr, A, x1_lahze605,x2_lahze605,x3_lahze605 ,x4_lahze605,x1_next_chosen_lahze606,x2_next_chosen_lahze606,x3_next_chosen_lahze606,x4_next_chosen_lahze606,u_star606,js6061001);
[x1_lahze607,x2_lahze607,x3_lahze607,x4_lahze607]= function4(xk, dr, A, x1_lahze606,x2_lahze606,x3_lahze606 ,x4_lahze606,x1_next_chosen_lahze607,x2_next_chosen_lahze607,x3_next_chosen_lahze607,x4_next_chosen_lahze607,u_star607,js6071001);
[x1_lahze608,x2_lahze608,x3_lahze608,x4_lahze608]= function4(xk, dr, A, x1_lahze607,x2_lahze607,x3_lahze607 ,x4_lahze607,x1_next_chosen_lahze608,x2_next_chosen_lahze608,x3_next_chosen_lahze608,x4_next_chosen_lahze608,u_star608,js6081001);
[x1_lahze609,x2_lahze609,x3_lahze609,x4_lahze609]= function4(xk, dr, A, x1_lahze608,x2_lahze608,x3_lahze608 ,x4_lahze608,x1_next_chosen_lahze609,x2_next_chosen_lahze609,x3_next_chosen_lahze609,x4_next_chosen_lahze609,u_star609,js6091001);
[x1_lahze610,x2_lahze610,x3_lahze610,x4_lahze610]= function4(xk, dr, A, x1_lahze609,x2_lahze609,x3_lahze609 ,x4_lahze609,x1_next_chosen_lahze610,x2_next_chosen_lahze610,x3_next_chosen_lahze610,x4_next_chosen_lahze610,u_star610,js6101001);
[x1_lahze611,x2_lahze611,x3_lahze611,x4_lahze611]= function4(xk, dr, A, x1_lahze610,x2_lahze610,x3_lahze610 ,x4_lahze610,x1_next_chosen_lahze611,x2_next_chosen_lahze611,x3_next_chosen_lahze611,x4_next_chosen_lahze611,u_star611,js6111001);
[x1_lahze612,x2_lahze612,x3_lahze612,x4_lahze612]= function4(xk, dr, A, x1_lahze611,x2_lahze611,x3_lahze611 ,x4_lahze611,x1_next_chosen_lahze612,x2_next_chosen_lahze612,x3_next_chosen_lahze612,x4_next_chosen_lahze612,u_star612,js6121001);
[x1_lahze613,x2_lahze613,x3_lahze613,x4_lahze613]= function4(xk, dr, A, x1_lahze612,x2_lahze612,x3_lahze612 ,x4_lahze612,x1_next_chosen_lahze613,x2_next_chosen_lahze613,x3_next_chosen_lahze613,x4_next_chosen_lahze613,u_star613,js6131001);
[x1_lahze614,x2_lahze614,x3_lahze614,x4_lahze614]= function4(xk, dr, A, x1_lahze613,x2_lahze613,x3_lahze613 ,x4_lahze613,x1_next_chosen_lahze614,x2_next_chosen_lahze614,x3_next_chosen_lahze614,x4_next_chosen_lahze614,u_star614,js6141001);
[x1_lahze615,x2_lahze615,x3_lahze615,x4_lahze615]= function4(xk, dr, A, x1_lahze614,x2_lahze614,x3_lahze614 ,x4_lahze614,x1_next_chosen_lahze615,x2_next_chosen_lahze615,x3_next_chosen_lahze615,x4_next_chosen_lahze615,u_star615,js6151001);
[x1_lahze616,x2_lahze616,x3_lahze616,x4_lahze616]= function4(xk, dr, A, x1_lahze615,x2_lahze615,x3_lahze615 ,x4_lahze615,x1_next_chosen_lahze616,x2_next_chosen_lahze616,x3_next_chosen_lahze616,x4_next_chosen_lahze616,u_star616,js6161001);
[x1_lahze617,x2_lahze617,x3_lahze617,x4_lahze617]= function4(xk, dr, A, x1_lahze616,x2_lahze616,x3_lahze616 ,x4_lahze616,x1_next_chosen_lahze617,x2_next_chosen_lahze617,x3_next_chosen_lahze617,x4_next_chosen_lahze617,u_star617,js6171001);
[x1_lahze618,x2_lahze618,x3_lahze618,x4_lahze618]= function4(xk, dr, A, x1_lahze617,x2_lahze617,x3_lahze617 ,x4_lahze617,x1_next_chosen_lahze618,x2_next_chosen_lahze618,x3_next_chosen_lahze618,x4_next_chosen_lahze618,u_star618,js6181001);
[x1_lahze619,x2_lahze619,x3_lahze619,x4_lahze619]= function4(xk, dr, A, x1_lahze618,x2_lahze618,x3_lahze618 ,x4_lahze618,x1_next_chosen_lahze619,x2_next_chosen_lahze619,x3_next_chosen_lahze619,x4_next_chosen_lahze619,u_star619,js6191001);
[x1_lahze620,x2_lahze620,x3_lahze620,x4_lahze620]= function4(xk, dr, A, x1_lahze619,x2_lahze619,x3_lahze619 ,x4_lahze619,x1_next_chosen_lahze620,x2_next_chosen_lahze620,x3_next_chosen_lahze620,x4_next_chosen_lahze620,u_star620,js6201001);
[x1_lahze621,x2_lahze621,x3_lahze621,x4_lahze621]= function4(xk, dr, A, x1_lahze620,x2_lahze620,x3_lahze620 ,x4_lahze620,x1_next_chosen_lahze621,x2_next_chosen_lahze621,x3_next_chosen_lahze621,x4_next_chosen_lahze621,u_star621,js6211001);
[x1_lahze622,x2_lahze622,x3_lahze622,x4_lahze622]= function4(xk, dr, A, x1_lahze621,x2_lahze621,x3_lahze621 ,x4_lahze621,x1_next_chosen_lahze622,x2_next_chosen_lahze622,x3_next_chosen_lahze622,x4_next_chosen_lahze622,u_star622,js6221001);
[x1_lahze623,x2_lahze623,x3_lahze623,x4_lahze623]= function4(xk, dr, A, x1_lahze622,x2_lahze622,x3_lahze622 ,x4_lahze622,x1_next_chosen_lahze623,x2_next_chosen_lahze623,x3_next_chosen_lahze623,x4_next_chosen_lahze623,u_star623,js6231001);
[x1_lahze624,x2_lahze624,x3_lahze624,x4_lahze624]= function4(xk, dr, A, x1_lahze623,x2_lahze623,x3_lahze623 ,x4_lahze623,x1_next_chosen_lahze624,x2_next_chosen_lahze624,x3_next_chosen_lahze624,x4_next_chosen_lahze624,u_star624,js6241001);
[x1_lahze625,x2_lahze625,x3_lahze625,x4_lahze625]= function4(xk, dr, A, x1_lahze624,x2_lahze624,x3_lahze624 ,x4_lahze624,x1_next_chosen_lahze625,x2_next_chosen_lahze625,x3_next_chosen_lahze625,x4_next_chosen_lahze625,u_star625,js6251001);
[x1_lahze626,x2_lahze626,x3_lahze626,x4_lahze626]= function4(xk, dr, A, x1_lahze625,x2_lahze625,x3_lahze625 ,x4_lahze625,x1_next_chosen_lahze626,x2_next_chosen_lahze626,x3_next_chosen_lahze626,x4_next_chosen_lahze626,u_star626,js6261001);
[x1_lahze627,x2_lahze627,x3_lahze627,x4_lahze627]= function4(xk, dr, A, x1_lahze626,x2_lahze626,x3_lahze626 ,x4_lahze626,x1_next_chosen_lahze627,x2_next_chosen_lahze627,x3_next_chosen_lahze627,x4_next_chosen_lahze627,u_star627,js6271001);
[x1_lahze628,x2_lahze628,x3_lahze628,x4_lahze628]= function4(xk, dr, A, x1_lahze627,x2_lahze627,x3_lahze627 ,x4_lahze627,x1_next_chosen_lahze628,x2_next_chosen_lahze628,x3_next_chosen_lahze628,x4_next_chosen_lahze628,u_star628,js6281001);
[x1_lahze629,x2_lahze629,x3_lahze629,x4_lahze629]= function4(xk, dr, A, x1_lahze628,x2_lahze628,x3_lahze628 ,x4_lahze628,x1_next_chosen_lahze629,x2_next_chosen_lahze629,x3_next_chosen_lahze629,x4_next_chosen_lahze629,u_star629,js6291001);
[x1_lahze630,x2_lahze630,x3_lahze630,x4_lahze630]= function4(xk, dr, A, x1_lahze629,x2_lahze629,x3_lahze629 ,x4_lahze629,x1_next_chosen_lahze630,x2_next_chosen_lahze630,x3_next_chosen_lahze630,x4_next_chosen_lahze630,u_star630,js6301001);
[x1_lahze631,x2_lahze631,x3_lahze631,x4_lahze631]= function4(xk, dr, A, x1_lahze630,x2_lahze630,x3_lahze630 ,x4_lahze630,x1_next_chosen_lahze631,x2_next_chosen_lahze631,x3_next_chosen_lahze631,x4_next_chosen_lahze631,u_star631,js6311001);
[x1_lahze632,x2_lahze632,x3_lahze632,x4_lahze632]= function4(xk, dr, A, x1_lahze631,x2_lahze631,x3_lahze631 ,x4_lahze631,x1_next_chosen_lahze632,x2_next_chosen_lahze632,x3_next_chosen_lahze632,x4_next_chosen_lahze632,u_star632,js6321001);
[x1_lahze633,x2_lahze633,x3_lahze633,x4_lahze633]= function4(xk, dr, A, x1_lahze632,x2_lahze632,x3_lahze632 ,x4_lahze632,x1_next_chosen_lahze633,x2_next_chosen_lahze633,x3_next_chosen_lahze633,x4_next_chosen_lahze633,u_star633,js6331001);
[x1_lahze634,x2_lahze634,x3_lahze634,x4_lahze634]= function4(xk, dr, A, x1_lahze633,x2_lahze633,x3_lahze633 ,x4_lahze633,x1_next_chosen_lahze634,x2_next_chosen_lahze634,x3_next_chosen_lahze634,x4_next_chosen_lahze634,u_star634,js6341001);
[x1_lahze635,x2_lahze635,x3_lahze635,x4_lahze635]= function4(xk, dr, A, x1_lahze634,x2_lahze634,x3_lahze634 ,x4_lahze634,x1_next_chosen_lahze635,x2_next_chosen_lahze635,x3_next_chosen_lahze635,x4_next_chosen_lahze635,u_star635,js6351001);
[x1_lahze636,x2_lahze636,x3_lahze636,x4_lahze636]= function4(xk, dr, A, x1_lahze635,x2_lahze635,x3_lahze635 ,x4_lahze635,x1_next_chosen_lahze636,x2_next_chosen_lahze636,x3_next_chosen_lahze636,x4_next_chosen_lahze636,u_star636,js6361001);
[x1_lahze637,x2_lahze637,x3_lahze637,x4_lahze637]= function4(xk, dr, A, x1_lahze636,x2_lahze636,x3_lahze636 ,x4_lahze636,x1_next_chosen_lahze637,x2_next_chosen_lahze637,x3_next_chosen_lahze637,x4_next_chosen_lahze637,u_star637,js6371001);
[x1_lahze638,x2_lahze638,x3_lahze638,x4_lahze638]= function4(xk, dr, A, x1_lahze637,x2_lahze637,x3_lahze637 ,x4_lahze637,x1_next_chosen_lahze638,x2_next_chosen_lahze638,x3_next_chosen_lahze638,x4_next_chosen_lahze638,u_star638,js6381001);
[x1_lahze639,x2_lahze639,x3_lahze639,x4_lahze639]= function4(xk, dr, A, x1_lahze638,x2_lahze638,x3_lahze638 ,x4_lahze638,x1_next_chosen_lahze639,x2_next_chosen_lahze639,x3_next_chosen_lahze639,x4_next_chosen_lahze639,u_star639,js6391001);
[x1_lahze640,x2_lahze640,x3_lahze640,x4_lahze640]= function4(xk, dr, A, x1_lahze639,x2_lahze639,x3_lahze639 ,x4_lahze639,x1_next_chosen_lahze640,x2_next_chosen_lahze640,x3_next_chosen_lahze640,x4_next_chosen_lahze640,u_star640,js6401001);
[x1_lahze641,x2_lahze641,x3_lahze641,x4_lahze641]= function4(xk, dr, A, x1_lahze640,x2_lahze640,x3_lahze640 ,x4_lahze640,x1_next_chosen_lahze641,x2_next_chosen_lahze641,x3_next_chosen_lahze641,x4_next_chosen_lahze641,u_star641,js6411001);
[x1_lahze642,x2_lahze642,x3_lahze642,x4_lahze642]= function4(xk, dr, A, x1_lahze641,x2_lahze641,x3_lahze641 ,x4_lahze641,x1_next_chosen_lahze642,x2_next_chosen_lahze642,x3_next_chosen_lahze642,x4_next_chosen_lahze642,u_star642,js6421001);
[x1_lahze643,x2_lahze643,x3_lahze643,x4_lahze643]= function4(xk, dr, A, x1_lahze642,x2_lahze642,x3_lahze642 ,x4_lahze642,x1_next_chosen_lahze643,x2_next_chosen_lahze643,x3_next_chosen_lahze643,x4_next_chosen_lahze643,u_star643,js6431001);
[x1_lahze644,x2_lahze644,x3_lahze644,x4_lahze644]= function4(xk, dr, A, x1_lahze643,x2_lahze643,x3_lahze643 ,x4_lahze643,x1_next_chosen_lahze644,x2_next_chosen_lahze644,x3_next_chosen_lahze644,x4_next_chosen_lahze644,u_star644,js6441001);
[x1_lahze645,x2_lahze645,x3_lahze645,x4_lahze645]= function4(xk, dr, A, x1_lahze644,x2_lahze644,x3_lahze644 ,x4_lahze644,x1_next_chosen_lahze645,x2_next_chosen_lahze645,x3_next_chosen_lahze645,x4_next_chosen_lahze645,u_star645,js6451001);
[x1_lahze646,x2_lahze646,x3_lahze646,x4_lahze646]= function4(xk, dr, A, x1_lahze645,x2_lahze645,x3_lahze645 ,x4_lahze645,x1_next_chosen_lahze646,x2_next_chosen_lahze646,x3_next_chosen_lahze646,x4_next_chosen_lahze646,u_star646,js6461001);
[x1_lahze647,x2_lahze647,x3_lahze647,x4_lahze647]= function4(xk, dr, A, x1_lahze646,x2_lahze646,x3_lahze646 ,x4_lahze646,x1_next_chosen_lahze647,x2_next_chosen_lahze647,x3_next_chosen_lahze647,x4_next_chosen_lahze647,u_star647,js6471001);
[x1_lahze648,x2_lahze648,x3_lahze648,x4_lahze648]= function4(xk, dr, A, x1_lahze647,x2_lahze647,x3_lahze647 ,x4_lahze647,x1_next_chosen_lahze648,x2_next_chosen_lahze648,x3_next_chosen_lahze648,x4_next_chosen_lahze648,u_star648,js6481001);
[x1_lahze649,x2_lahze649,x3_lahze649,x4_lahze649]= function4(xk, dr, A, x1_lahze648,x2_lahze648,x3_lahze648 ,x4_lahze648,x1_next_chosen_lahze649,x2_next_chosen_lahze649,x3_next_chosen_lahze649,x4_next_chosen_lahze649,u_star649,js6491001);
[x1_lahze650,x2_lahze650,x3_lahze650,x4_lahze650]= function4(xk, dr, A, x1_lahze649,x2_lahze649,x3_lahze649 ,x4_lahze649,x1_next_chosen_lahze650,x2_next_chosen_lahze650,x3_next_chosen_lahze650,x4_next_chosen_lahze650,u_star650,js6501001);
[x1_lahze651,x2_lahze651,x3_lahze651,x4_lahze651]= function4(xk, dr, A, x1_lahze650,x2_lahze650,x3_lahze650 ,x4_lahze650,x1_next_chosen_lahze651,x2_next_chosen_lahze651,x3_next_chosen_lahze651,x4_next_chosen_lahze651,u_star651,js6511001);
[x1_lahze652,x2_lahze652,x3_lahze652,x4_lahze652]= function4(xk, dr, A, x1_lahze651,x2_lahze651,x3_lahze651 ,x4_lahze651,x1_next_chosen_lahze652,x2_next_chosen_lahze652,x3_next_chosen_lahze652,x4_next_chosen_lahze652,u_star652,js6521001);
[x1_lahze653,x2_lahze653,x3_lahze653,x4_lahze653]= function4(xk, dr, A, x1_lahze652,x2_lahze652,x3_lahze652 ,x4_lahze652,x1_next_chosen_lahze653,x2_next_chosen_lahze653,x3_next_chosen_lahze653,x4_next_chosen_lahze653,u_star653,js6531001);
[x1_lahze654,x2_lahze654,x3_lahze654,x4_lahze654]= function4(xk, dr, A, x1_lahze653,x2_lahze653,x3_lahze653 ,x4_lahze653,x1_next_chosen_lahze654,x2_next_chosen_lahze654,x3_next_chosen_lahze654,x4_next_chosen_lahze654,u_star654,js6541001);
[x1_lahze655,x2_lahze655,x3_lahze655,x4_lahze655]= function4(xk, dr, A, x1_lahze654,x2_lahze654,x3_lahze654 ,x4_lahze654,x1_next_chosen_lahze655,x2_next_chosen_lahze655,x3_next_chosen_lahze655,x4_next_chosen_lahze655,u_star655,js6551001);
[x1_lahze656,x2_lahze656,x3_lahze656,x4_lahze656]= function4(xk, dr, A, x1_lahze655,x2_lahze655,x3_lahze655 ,x4_lahze655,x1_next_chosen_lahze656,x2_next_chosen_lahze656,x3_next_chosen_lahze656,x4_next_chosen_lahze656,u_star656,js6561001);
[x1_lahze657,x2_lahze657,x3_lahze657,x4_lahze657]= function4(xk, dr, A, x1_lahze656,x2_lahze656,x3_lahze656 ,x4_lahze656,x1_next_chosen_lahze657,x2_next_chosen_lahze657,x3_next_chosen_lahze657,x4_next_chosen_lahze657,u_star657,js6571001);
[x1_lahze658,x2_lahze658,x3_lahze658,x4_lahze658]= function4(xk, dr, A, x1_lahze657,x2_lahze657,x3_lahze657 ,x4_lahze657,x1_next_chosen_lahze658,x2_next_chosen_lahze658,x3_next_chosen_lahze658,x4_next_chosen_lahze658,u_star658,js6581001);
[x1_lahze659,x2_lahze659,x3_lahze659,x4_lahze659]= function4(xk, dr, A, x1_lahze658,x2_lahze658,x3_lahze658 ,x4_lahze658,x1_next_chosen_lahze659,x2_next_chosen_lahze659,x3_next_chosen_lahze659,x4_next_chosen_lahze659,u_star659,js6591001);
[x1_lahze660,x2_lahze660,x3_lahze660,x4_lahze660]= function4(xk, dr, A, x1_lahze659,x2_lahze659,x3_lahze659 ,x4_lahze659,x1_next_chosen_lahze660,x2_next_chosen_lahze660,x3_next_chosen_lahze660,x4_next_chosen_lahze660,u_star660,js6601001);
[x1_lahze661,x2_lahze661,x3_lahze661,x4_lahze661]= function4(xk, dr, A, x1_lahze660,x2_lahze660,x3_lahze660 ,x4_lahze660,x1_next_chosen_lahze661,x2_next_chosen_lahze661,x3_next_chosen_lahze661,x4_next_chosen_lahze661,u_star661,js6611001);
[x1_lahze662,x2_lahze662,x3_lahze662,x4_lahze662]= function4(xk, dr, A, x1_lahze661,x2_lahze661,x3_lahze661 ,x4_lahze661,x1_next_chosen_lahze662,x2_next_chosen_lahze662,x3_next_chosen_lahze662,x4_next_chosen_lahze662,u_star662,js6621001);
[x1_lahze663,x2_lahze663,x3_lahze663,x4_lahze663]= function4(xk, dr, A, x1_lahze662,x2_lahze662,x3_lahze662 ,x4_lahze662,x1_next_chosen_lahze663,x2_next_chosen_lahze663,x3_next_chosen_lahze663,x4_next_chosen_lahze663,u_star663,js6631001);
[x1_lahze664,x2_lahze664,x3_lahze664,x4_lahze664]= function4(xk, dr, A, x1_lahze663,x2_lahze663,x3_lahze663 ,x4_lahze663,x1_next_chosen_lahze664,x2_next_chosen_lahze664,x3_next_chosen_lahze664,x4_next_chosen_lahze664,u_star664,js6641001);
[x1_lahze665,x2_lahze665,x3_lahze665,x4_lahze665]= function4(xk, dr, A, x1_lahze664,x2_lahze664,x3_lahze664 ,x4_lahze664,x1_next_chosen_lahze665,x2_next_chosen_lahze665,x3_next_chosen_lahze665,x4_next_chosen_lahze665,u_star665,js6651001);
[x1_lahze666,x2_lahze666,x3_lahze666,x4_lahze666]= function4(xk, dr, A, x1_lahze665,x2_lahze665,x3_lahze665 ,x4_lahze665,x1_next_chosen_lahze666,x2_next_chosen_lahze666,x3_next_chosen_lahze666,x4_next_chosen_lahze666,u_star666,js6661001);
[x1_lahze667,x2_lahze667,x3_lahze667,x4_lahze667]= function4(xk, dr, A, x1_lahze666,x2_lahze666,x3_lahze666 ,x4_lahze666,x1_next_chosen_lahze667,x2_next_chosen_lahze667,x3_next_chosen_lahze667,x4_next_chosen_lahze667,u_star667,js6671001);
[x1_lahze668,x2_lahze668,x3_lahze668,x4_lahze668]= function4(xk, dr, A, x1_lahze667,x2_lahze667,x3_lahze667 ,x4_lahze667,x1_next_chosen_lahze668,x2_next_chosen_lahze668,x3_next_chosen_lahze668,x4_next_chosen_lahze668,u_star668,js6681001);
[x1_lahze669,x2_lahze669,x3_lahze669,x4_lahze669]= function4(xk, dr, A, x1_lahze668,x2_lahze668,x3_lahze668 ,x4_lahze668,x1_next_chosen_lahze669,x2_next_chosen_lahze669,x3_next_chosen_lahze669,x4_next_chosen_lahze669,u_star669,js6691001);
[x1_lahze670,x2_lahze670,x3_lahze670,x4_lahze670]= function4(xk, dr, A, x1_lahze669,x2_lahze669,x3_lahze669 ,x4_lahze669,x1_next_chosen_lahze670,x2_next_chosen_lahze670,x3_next_chosen_lahze670,x4_next_chosen_lahze670,u_star670,js6701001);
[x1_lahze671,x2_lahze671,x3_lahze671,x4_lahze671]= function4(xk, dr, A, x1_lahze670,x2_lahze670,x3_lahze670 ,x4_lahze670,x1_next_chosen_lahze671,x2_next_chosen_lahze671,x3_next_chosen_lahze671,x4_next_chosen_lahze671,u_star671,js6711001);
[x1_lahze672,x2_lahze672,x3_lahze672,x4_lahze672]= function4(xk, dr, A, x1_lahze671,x2_lahze671,x3_lahze671 ,x4_lahze671,x1_next_chosen_lahze672,x2_next_chosen_lahze672,x3_next_chosen_lahze672,x4_next_chosen_lahze672,u_star672,js6721001);
[x1_lahze673,x2_lahze673,x3_lahze673,x4_lahze673]= function4(xk, dr, A, x1_lahze672,x2_lahze672,x3_lahze672 ,x4_lahze672,x1_next_chosen_lahze673,x2_next_chosen_lahze673,x3_next_chosen_lahze673,x4_next_chosen_lahze673,u_star673,js6731001);
[x1_lahze674,x2_lahze674,x3_lahze674,x4_lahze674]= function4(xk, dr, A, x1_lahze673,x2_lahze673,x3_lahze673 ,x4_lahze673,x1_next_chosen_lahze674,x2_next_chosen_lahze674,x3_next_chosen_lahze674,x4_next_chosen_lahze674,u_star674,js6741001);
[x1_lahze675,x2_lahze675,x3_lahze675,x4_lahze675]= function4(xk, dr, A, x1_lahze674,x2_lahze674,x3_lahze674 ,x4_lahze674,x1_next_chosen_lahze675,x2_next_chosen_lahze675,x3_next_chosen_lahze675,x4_next_chosen_lahze675,u_star675,js6751001);
[x1_lahze676,x2_lahze676,x3_lahze676,x4_lahze676]= function4(xk, dr, A, x1_lahze675,x2_lahze675,x3_lahze675 ,x4_lahze675,x1_next_chosen_lahze676,x2_next_chosen_lahze676,x3_next_chosen_lahze676,x4_next_chosen_lahze676,u_star676,js6761001);
[x1_lahze677,x2_lahze677,x3_lahze677,x4_lahze677]= function4(xk, dr, A, x1_lahze676,x2_lahze676,x3_lahze676 ,x4_lahze676,x1_next_chosen_lahze677,x2_next_chosen_lahze677,x3_next_chosen_lahze677,x4_next_chosen_lahze677,u_star677,js6771001);
[x1_lahze678,x2_lahze678,x3_lahze678,x4_lahze678]= function4(xk, dr, A, x1_lahze677,x2_lahze677,x3_lahze677 ,x4_lahze677,x1_next_chosen_lahze678,x2_next_chosen_lahze678,x3_next_chosen_lahze678,x4_next_chosen_lahze678,u_star678,js6781001);
[x1_lahze679,x2_lahze679,x3_lahze679,x4_lahze679]= function4(xk, dr, A, x1_lahze678,x2_lahze678,x3_lahze678 ,x4_lahze678,x1_next_chosen_lahze679,x2_next_chosen_lahze679,x3_next_chosen_lahze679,x4_next_chosen_lahze679,u_star679,js6791001);
[x1_lahze680,x2_lahze680,x3_lahze680,x4_lahze680]= function4(xk, dr, A, x1_lahze679,x2_lahze679,x3_lahze679 ,x4_lahze679,x1_next_chosen_lahze680,x2_next_chosen_lahze680,x3_next_chosen_lahze680,x4_next_chosen_lahze680,u_star680,js6801001);
[x1_lahze681,x2_lahze681,x3_lahze681,x4_lahze681]= function4(xk, dr, A, x1_lahze680,x2_lahze680,x3_lahze680 ,x4_lahze680,x1_next_chosen_lahze681,x2_next_chosen_lahze681,x3_next_chosen_lahze681,x4_next_chosen_lahze681,u_star681,js6811001);
[x1_lahze682,x2_lahze682,x3_lahze682,x4_lahze682]= function4(xk, dr, A, x1_lahze681,x2_lahze681,x3_lahze681 ,x4_lahze681,x1_next_chosen_lahze682,x2_next_chosen_lahze682,x3_next_chosen_lahze682,x4_next_chosen_lahze682,u_star682,js6821001);
[x1_lahze683,x2_lahze683,x3_lahze683,x4_lahze683]= function4(xk, dr, A, x1_lahze682,x2_lahze682,x3_lahze682 ,x4_lahze682,x1_next_chosen_lahze683,x2_next_chosen_lahze683,x3_next_chosen_lahze683,x4_next_chosen_lahze683,u_star683,js6831001);
[x1_lahze684,x2_lahze684,x3_lahze684,x4_lahze684]= function4(xk, dr, A, x1_lahze683,x2_lahze683,x3_lahze683 ,x4_lahze683,x1_next_chosen_lahze684,x2_next_chosen_lahze684,x3_next_chosen_lahze684,x4_next_chosen_lahze684,u_star684,js6841001);
[x1_lahze685,x2_lahze685,x3_lahze685,x4_lahze685]= function4(xk, dr, A, x1_lahze684,x2_lahze684,x3_lahze684 ,x4_lahze684,x1_next_chosen_lahze685,x2_next_chosen_lahze685,x3_next_chosen_lahze685,x4_next_chosen_lahze685,u_star685,js6851001);
[x1_lahze686,x2_lahze686,x3_lahze686,x4_lahze686]= function4(xk, dr, A, x1_lahze685,x2_lahze685,x3_lahze685 ,x4_lahze685,x1_next_chosen_lahze686,x2_next_chosen_lahze686,x3_next_chosen_lahze686,x4_next_chosen_lahze686,u_star686,js6861001);
[x1_lahze687,x2_lahze687,x3_lahze687,x4_lahze687]= function4(xk, dr, A, x1_lahze686,x2_lahze686,x3_lahze686 ,x4_lahze686,x1_next_chosen_lahze687,x2_next_chosen_lahze687,x3_next_chosen_lahze687,x4_next_chosen_lahze687,u_star687,js6871001);
[x1_lahze688,x2_lahze688,x3_lahze688,x4_lahze688]= function4(xk, dr, A, x1_lahze687,x2_lahze687,x3_lahze687 ,x4_lahze687,x1_next_chosen_lahze688,x2_next_chosen_lahze688,x3_next_chosen_lahze688,x4_next_chosen_lahze688,u_star688,js6881001);
[x1_lahze689,x2_lahze689,x3_lahze689,x4_lahze689]= function4(xk, dr, A, x1_lahze688,x2_lahze688,x3_lahze688 ,x4_lahze688,x1_next_chosen_lahze689,x2_next_chosen_lahze689,x3_next_chosen_lahze689,x4_next_chosen_lahze689,u_star689,js6891001);
[x1_lahze690,x2_lahze690,x3_lahze690,x4_lahze690]= function4(xk, dr, A, x1_lahze689,x2_lahze689,x3_lahze689 ,x4_lahze689,x1_next_chosen_lahze690,x2_next_chosen_lahze690,x3_next_chosen_lahze690,x4_next_chosen_lahze690,u_star690,js6901001);
[x1_lahze691,x2_lahze691,x3_lahze691,x4_lahze691]= function4(xk, dr, A, x1_lahze690,x2_lahze690,x3_lahze690 ,x4_lahze690,x1_next_chosen_lahze691,x2_next_chosen_lahze691,x3_next_chosen_lahze691,x4_next_chosen_lahze691,u_star691,js6911001);
[x1_lahze692,x2_lahze692,x3_lahze692,x4_lahze692]= function4(xk, dr, A, x1_lahze691,x2_lahze691,x3_lahze691 ,x4_lahze691,x1_next_chosen_lahze692,x2_next_chosen_lahze692,x3_next_chosen_lahze692,x4_next_chosen_lahze692,u_star692,js6921001);
[x1_lahze693,x2_lahze693,x3_lahze693,x4_lahze693]= function4(xk, dr, A, x1_lahze692,x2_lahze692,x3_lahze692 ,x4_lahze692,x1_next_chosen_lahze693,x2_next_chosen_lahze693,x3_next_chosen_lahze693,x4_next_chosen_lahze693,u_star693,js6931001);
[x1_lahze694,x2_lahze694,x3_lahze694,x4_lahze694]= function4(xk, dr, A, x1_lahze693,x2_lahze693,x3_lahze693 ,x4_lahze693,x1_next_chosen_lahze694,x2_next_chosen_lahze694,x3_next_chosen_lahze694,x4_next_chosen_lahze694,u_star694,js6941001);
[x1_lahze695,x2_lahze695,x3_lahze695,x4_lahze695]= function4(xk, dr, A, x1_lahze694,x2_lahze694,x3_lahze694 ,x4_lahze694,x1_next_chosen_lahze695,x2_next_chosen_lahze695,x3_next_chosen_lahze695,x4_next_chosen_lahze695,u_star695,js6951001);
[x1_lahze696,x2_lahze696,x3_lahze696,x4_lahze696]= function4(xk, dr, A, x1_lahze695,x2_lahze695,x3_lahze695 ,x4_lahze695,x1_next_chosen_lahze696,x2_next_chosen_lahze696,x3_next_chosen_lahze696,x4_next_chosen_lahze696,u_star696,js6961001);
[x1_lahze697,x2_lahze697,x3_lahze697,x4_lahze697]= function4(xk, dr, A, x1_lahze696,x2_lahze696,x3_lahze696 ,x4_lahze696,x1_next_chosen_lahze697,x2_next_chosen_lahze697,x3_next_chosen_lahze697,x4_next_chosen_lahze697,u_star697,js6971001);
[x1_lahze698,x2_lahze698,x3_lahze698,x4_lahze698]= function4(xk, dr, A, x1_lahze697,x2_lahze697,x3_lahze697 ,x4_lahze697,x1_next_chosen_lahze698,x2_next_chosen_lahze698,x3_next_chosen_lahze698,x4_next_chosen_lahze698,u_star698,js6981001);
[x1_lahze699,x2_lahze699,x3_lahze699,x4_lahze699]= function4(xk, dr, A, x1_lahze698,x2_lahze698,x3_lahze698 ,x4_lahze698,x1_next_chosen_lahze699,x2_next_chosen_lahze699,x3_next_chosen_lahze699,x4_next_chosen_lahze699,u_star699,js6991001);
[x1_lahze700,x2_lahze700,x3_lahze700,x4_lahze700]= function4(xk, dr, A, x1_lahze699,x2_lahze699,x3_lahze699 ,x4_lahze699,x1_next_chosen_lahze700,x2_next_chosen_lahze700,x3_next_chosen_lahze700,x4_next_chosen_lahze700,u_star700,js7001001);
[x1_lahze701,x2_lahze701,x3_lahze701,x4_lahze701]= function4(xk, dr, A, x1_lahze700,x2_lahze700,x3_lahze700 ,x4_lahze700,x1_next_chosen_lahze701,x2_next_chosen_lahze701,x3_next_chosen_lahze701,x4_next_chosen_lahze701,u_star701,js7011001);
[x1_lahze702,x2_lahze702,x3_lahze702,x4_lahze702]= function4(xk, dr, A, x1_lahze701,x2_lahze701,x3_lahze701 ,x4_lahze701,x1_next_chosen_lahze702,x2_next_chosen_lahze702,x3_next_chosen_lahze702,x4_next_chosen_lahze702,u_star702,js7021001);
[x1_lahze703,x2_lahze703,x3_lahze703,x4_lahze703]= function4(xk, dr, A, x1_lahze702,x2_lahze702,x3_lahze702 ,x4_lahze702,x1_next_chosen_lahze703,x2_next_chosen_lahze703,x3_next_chosen_lahze703,x4_next_chosen_lahze703,u_star703,js7031001);
[x1_lahze704,x2_lahze704,x3_lahze704,x4_lahze704]= function4(xk, dr, A, x1_lahze703,x2_lahze703,x3_lahze703 ,x4_lahze703,x1_next_chosen_lahze704,x2_next_chosen_lahze704,x3_next_chosen_lahze704,x4_next_chosen_lahze704,u_star704,js7041001);
[x1_lahze705,x2_lahze705,x3_lahze705,x4_lahze705]= function4(xk, dr, A, x1_lahze704,x2_lahze704,x3_lahze704 ,x4_lahze704,x1_next_chosen_lahze705,x2_next_chosen_lahze705,x3_next_chosen_lahze705,x4_next_chosen_lahze705,u_star705,js7051001);
[x1_lahze706,x2_lahze706,x3_lahze706,x4_lahze706]= function4(xk, dr, A, x1_lahze705,x2_lahze705,x3_lahze705 ,x4_lahze705,x1_next_chosen_lahze706,x2_next_chosen_lahze706,x3_next_chosen_lahze706,x4_next_chosen_lahze706,u_star706,js7061001);
[x1_lahze707,x2_lahze707,x3_lahze707,x4_lahze707]= function4(xk, dr, A, x1_lahze706,x2_lahze706,x3_lahze706 ,x4_lahze706,x1_next_chosen_lahze707,x2_next_chosen_lahze707,x3_next_chosen_lahze707,x4_next_chosen_lahze707,u_star707,js7071001);
[x1_lahze708,x2_lahze708,x3_lahze708,x4_lahze708]= function4(xk, dr, A, x1_lahze707,x2_lahze707,x3_lahze707 ,x4_lahze707,x1_next_chosen_lahze708,x2_next_chosen_lahze708,x3_next_chosen_lahze708,x4_next_chosen_lahze708,u_star708,js7081001);
[x1_lahze709,x2_lahze709,x3_lahze709,x4_lahze709]= function4(xk, dr, A, x1_lahze708,x2_lahze708,x3_lahze708 ,x4_lahze708,x1_next_chosen_lahze709,x2_next_chosen_lahze709,x3_next_chosen_lahze709,x4_next_chosen_lahze709,u_star709,js7091001);
[x1_lahze710,x2_lahze710,x3_lahze710,x4_lahze710]= function4(xk, dr, A, x1_lahze709,x2_lahze709,x3_lahze709 ,x4_lahze709,x1_next_chosen_lahze710,x2_next_chosen_lahze710,x3_next_chosen_lahze710,x4_next_chosen_lahze710,u_star710,js7101001);
[x1_lahze711,x2_lahze711,x3_lahze711,x4_lahze711]= function4(xk, dr, A, x1_lahze710,x2_lahze710,x3_lahze710 ,x4_lahze710,x1_next_chosen_lahze711,x2_next_chosen_lahze711,x3_next_chosen_lahze711,x4_next_chosen_lahze711,u_star711,js7111001);
[x1_lahze712,x2_lahze712,x3_lahze712,x4_lahze712]= function4(xk, dr, A, x1_lahze711,x2_lahze711,x3_lahze711 ,x4_lahze711,x1_next_chosen_lahze712,x2_next_chosen_lahze712,x3_next_chosen_lahze712,x4_next_chosen_lahze712,u_star712,js7121001);
[x1_lahze713,x2_lahze713,x3_lahze713,x4_lahze713]= function4(xk, dr, A, x1_lahze712,x2_lahze712,x3_lahze712 ,x4_lahze712,x1_next_chosen_lahze713,x2_next_chosen_lahze713,x3_next_chosen_lahze713,x4_next_chosen_lahze713,u_star713,js7131001);
[x1_lahze714,x2_lahze714,x3_lahze714,x4_lahze714]= function4(xk, dr, A, x1_lahze713,x2_lahze713,x3_lahze713 ,x4_lahze713,x1_next_chosen_lahze714,x2_next_chosen_lahze714,x3_next_chosen_lahze714,x4_next_chosen_lahze714,u_star714,js7141001);
[x1_lahze715,x2_lahze715,x3_lahze715,x4_lahze715]= function4(xk, dr, A, x1_lahze714,x2_lahze714,x3_lahze714 ,x4_lahze714,x1_next_chosen_lahze715,x2_next_chosen_lahze715,x3_next_chosen_lahze715,x4_next_chosen_lahze715,u_star715,js7151001);
[x1_lahze716,x2_lahze716,x3_lahze716,x4_lahze716]= function4(xk, dr, A, x1_lahze715,x2_lahze715,x3_lahze715 ,x4_lahze715,x1_next_chosen_lahze716,x2_next_chosen_lahze716,x3_next_chosen_lahze716,x4_next_chosen_lahze716,u_star716,js7161001);
[x1_lahze717,x2_lahze717,x3_lahze717,x4_lahze717]= function4(xk, dr, A, x1_lahze716,x2_lahze716,x3_lahze716 ,x4_lahze716,x1_next_chosen_lahze717,x2_next_chosen_lahze717,x3_next_chosen_lahze717,x4_next_chosen_lahze717,u_star717,js7171001);
[x1_lahze718,x2_lahze718,x3_lahze718,x4_lahze718]= function4(xk, dr, A, x1_lahze717,x2_lahze717,x3_lahze717 ,x4_lahze717,x1_next_chosen_lahze718,x2_next_chosen_lahze718,x3_next_chosen_lahze718,x4_next_chosen_lahze718,u_star718,js7181001);
[x1_lahze719,x2_lahze719,x3_lahze719,x4_lahze719]= function4(xk, dr, A, x1_lahze718,x2_lahze718,x3_lahze718 ,x4_lahze718,x1_next_chosen_lahze719,x2_next_chosen_lahze719,x3_next_chosen_lahze719,x4_next_chosen_lahze719,u_star719,js7191001);
[x1_lahze720,x2_lahze720,x3_lahze720,x4_lahze720]= function4(xk, dr, A, x1_lahze719,x2_lahze719,x3_lahze719 ,x4_lahze719,x1_next_chosen_lahze720,x2_next_chosen_lahze720,x3_next_chosen_lahze720,x4_next_chosen_lahze720,u_star720,js7201001);
[x1_lahze721,x2_lahze721,x3_lahze721,x4_lahze721]= function4(xk, dr, A, x1_lahze720,x2_lahze720,x3_lahze720 ,x4_lahze720,x1_next_chosen_lahze721,x2_next_chosen_lahze721,x3_next_chosen_lahze721,x4_next_chosen_lahze721,u_star721,js7211001);
[x1_lahze722,x2_lahze722,x3_lahze722,x4_lahze722]= function4(xk, dr, A, x1_lahze721,x2_lahze721,x3_lahze721 ,x4_lahze721,x1_next_chosen_lahze722,x2_next_chosen_lahze722,x3_next_chosen_lahze722,x4_next_chosen_lahze722,u_star722,js7221001);
[x1_lahze723,x2_lahze723,x3_lahze723,x4_lahze723]= function4(xk, dr, A, x1_lahze722,x2_lahze722,x3_lahze722 ,x4_lahze722,x1_next_chosen_lahze723,x2_next_chosen_lahze723,x3_next_chosen_lahze723,x4_next_chosen_lahze723,u_star723,js7231001);
[x1_lahze724,x2_lahze724,x3_lahze724,x4_lahze724]= function4(xk, dr, A, x1_lahze723,x2_lahze723,x3_lahze723 ,x4_lahze723,x1_next_chosen_lahze724,x2_next_chosen_lahze724,x3_next_chosen_lahze724,x4_next_chosen_lahze724,u_star724,js7241001);
[x1_lahze725,x2_lahze725,x3_lahze725,x4_lahze725]= function4(xk, dr, A, x1_lahze724,x2_lahze724,x3_lahze724 ,x4_lahze724,x1_next_chosen_lahze725,x2_next_chosen_lahze725,x3_next_chosen_lahze725,x4_next_chosen_lahze725,u_star725,js7251001);
[x1_lahze726,x2_lahze726,x3_lahze726,x4_lahze726]= function4(xk, dr, A, x1_lahze725,x2_lahze725,x3_lahze725 ,x4_lahze725,x1_next_chosen_lahze726,x2_next_chosen_lahze726,x3_next_chosen_lahze726,x4_next_chosen_lahze726,u_star726,js7261001);
[x1_lahze727,x2_lahze727,x3_lahze727,x4_lahze727]= function4(xk, dr, A, x1_lahze726,x2_lahze726,x3_lahze726 ,x4_lahze726,x1_next_chosen_lahze727,x2_next_chosen_lahze727,x3_next_chosen_lahze727,x4_next_chosen_lahze727,u_star727,js7271001);
[x1_lahze728,x2_lahze728,x3_lahze728,x4_lahze728]= function4(xk, dr, A, x1_lahze727,x2_lahze727,x3_lahze727 ,x4_lahze727,x1_next_chosen_lahze728,x2_next_chosen_lahze728,x3_next_chosen_lahze728,x4_next_chosen_lahze728,u_star728,js7281001);
[x1_lahze729,x2_lahze729,x3_lahze729,x4_lahze729]= function4(xk, dr, A, x1_lahze728,x2_lahze728,x3_lahze728 ,x4_lahze728,x1_next_chosen_lahze729,x2_next_chosen_lahze729,x3_next_chosen_lahze729,x4_next_chosen_lahze729,u_star729,js7291001);
[x1_lahze730,x2_lahze730,x3_lahze730,x4_lahze730]= function4(xk, dr, A, x1_lahze729,x2_lahze729,x3_lahze729 ,x4_lahze729,x1_next_chosen_lahze730,x2_next_chosen_lahze730,x3_next_chosen_lahze730,x4_next_chosen_lahze730,u_star730,js7301001);
[x1_lahze731,x2_lahze731,x3_lahze731,x4_lahze731]= function4(xk, dr, A, x1_lahze730,x2_lahze730,x3_lahze730 ,x4_lahze730,x1_next_chosen_lahze731,x2_next_chosen_lahze731,x3_next_chosen_lahze731,x4_next_chosen_lahze731,u_star731,js7311001);
[x1_lahze732,x2_lahze732,x3_lahze732,x4_lahze732]= function4(xk, dr, A, x1_lahze731,x2_lahze731,x3_lahze731 ,x4_lahze731,x1_next_chosen_lahze732,x2_next_chosen_lahze732,x3_next_chosen_lahze732,x4_next_chosen_lahze732,u_star732,js7321001);
[x1_lahze733,x2_lahze733,x3_lahze733,x4_lahze733]= function4(xk, dr, A, x1_lahze732,x2_lahze732,x3_lahze732 ,x4_lahze732,x1_next_chosen_lahze733,x2_next_chosen_lahze733,x3_next_chosen_lahze733,x4_next_chosen_lahze733,u_star733,js7331001);
[x1_lahze734,x2_lahze734,x3_lahze734,x4_lahze734]= function4(xk, dr, A, x1_lahze733,x2_lahze733,x3_lahze733 ,x4_lahze733,x1_next_chosen_lahze734,x2_next_chosen_lahze734,x3_next_chosen_lahze734,x4_next_chosen_lahze734,u_star734,js7341001);
[x1_lahze735,x2_lahze735,x3_lahze735,x4_lahze735]= function4(xk, dr, A, x1_lahze734,x2_lahze734,x3_lahze734 ,x4_lahze734,x1_next_chosen_lahze735,x2_next_chosen_lahze735,x3_next_chosen_lahze735,x4_next_chosen_lahze735,u_star735,js7351001);
[x1_lahze736,x2_lahze736,x3_lahze736,x4_lahze736]= function4(xk, dr, A, x1_lahze735,x2_lahze735,x3_lahze735 ,x4_lahze735,x1_next_chosen_lahze736,x2_next_chosen_lahze736,x3_next_chosen_lahze736,x4_next_chosen_lahze736,u_star736,js7361001);
[x1_lahze737,x2_lahze737,x3_lahze737,x4_lahze737]= function4(xk, dr, A, x1_lahze736,x2_lahze736,x3_lahze736 ,x4_lahze736,x1_next_chosen_lahze737,x2_next_chosen_lahze737,x3_next_chosen_lahze737,x4_next_chosen_lahze737,u_star737,js7371001);
[x1_lahze738,x2_lahze738,x3_lahze738,x4_lahze738]= function4(xk, dr, A, x1_lahze737,x2_lahze737,x3_lahze737 ,x4_lahze737,x1_next_chosen_lahze738,x2_next_chosen_lahze738,x3_next_chosen_lahze738,x4_next_chosen_lahze738,u_star738,js7381001);
[x1_lahze739,x2_lahze739,x3_lahze739,x4_lahze739]= function4(xk, dr, A, x1_lahze738,x2_lahze738,x3_lahze738 ,x4_lahze738,x1_next_chosen_lahze739,x2_next_chosen_lahze739,x3_next_chosen_lahze739,x4_next_chosen_lahze739,u_star739,js7391001);
[x1_lahze740,x2_lahze740,x3_lahze740,x4_lahze740]= function4(xk, dr, A, x1_lahze739,x2_lahze739,x3_lahze739 ,x4_lahze739,x1_next_chosen_lahze740,x2_next_chosen_lahze740,x3_next_chosen_lahze740,x4_next_chosen_lahze740,u_star740,js7401001);
[x1_lahze741,x2_lahze741,x3_lahze741,x4_lahze741]= function4(xk, dr, A, x1_lahze740,x2_lahze740,x3_lahze740 ,x4_lahze740,x1_next_chosen_lahze741,x2_next_chosen_lahze741,x3_next_chosen_lahze741,x4_next_chosen_lahze741,u_star741,js7411001);
[x1_lahze742,x2_lahze742,x3_lahze742,x4_lahze742]= function4(xk, dr, A, x1_lahze741,x2_lahze741,x3_lahze741 ,x4_lahze741,x1_next_chosen_lahze742,x2_next_chosen_lahze742,x3_next_chosen_lahze742,x4_next_chosen_lahze742,u_star742,js7421001);
[x1_lahze743,x2_lahze743,x3_lahze743,x4_lahze743]= function4(xk, dr, A, x1_lahze742,x2_lahze742,x3_lahze742 ,x4_lahze742,x1_next_chosen_lahze743,x2_next_chosen_lahze743,x3_next_chosen_lahze743,x4_next_chosen_lahze743,u_star743,js7431001);
[x1_lahze744,x2_lahze744,x3_lahze744,x4_lahze744]= function4(xk, dr, A, x1_lahze743,x2_lahze743,x3_lahze743 ,x4_lahze743,x1_next_chosen_lahze744,x2_next_chosen_lahze744,x3_next_chosen_lahze744,x4_next_chosen_lahze744,u_star744,js7441001);
[x1_lahze745,x2_lahze745,x3_lahze745,x4_lahze745]= function4(xk, dr, A, x1_lahze744,x2_lahze744,x3_lahze744 ,x4_lahze744,x1_next_chosen_lahze745,x2_next_chosen_lahze745,x3_next_chosen_lahze745,x4_next_chosen_lahze745,u_star745,js7451001);
[x1_lahze746,x2_lahze746,x3_lahze746,x4_lahze746]= function4(xk, dr, A, x1_lahze745,x2_lahze745,x3_lahze745 ,x4_lahze745,x1_next_chosen_lahze746,x2_next_chosen_lahze746,x3_next_chosen_lahze746,x4_next_chosen_lahze746,u_star746,js7461001);
[x1_lahze747,x2_lahze747,x3_lahze747,x4_lahze747]= function4(xk, dr, A, x1_lahze746,x2_lahze746,x3_lahze746 ,x4_lahze746,x1_next_chosen_lahze747,x2_next_chosen_lahze747,x3_next_chosen_lahze747,x4_next_chosen_lahze747,u_star747,js7471001);
[x1_lahze748,x2_lahze748,x3_lahze748,x4_lahze748]= function4(xk, dr, A, x1_lahze747,x2_lahze747,x3_lahze747 ,x4_lahze747,x1_next_chosen_lahze748,x2_next_chosen_lahze748,x3_next_chosen_lahze748,x4_next_chosen_lahze748,u_star748,js7481001);
[x1_lahze749,x2_lahze749,x3_lahze749,x4_lahze749]= function4(xk, dr, A, x1_lahze748,x2_lahze748,x3_lahze748 ,x4_lahze748,x1_next_chosen_lahze749,x2_next_chosen_lahze749,x3_next_chosen_lahze749,x4_next_chosen_lahze749,u_star749,js7491001);
[x1_lahze750,x2_lahze750,x3_lahze750,x4_lahze750]= function4(xk, dr, A, x1_lahze749,x2_lahze749,x3_lahze749 ,x4_lahze749,x1_next_chosen_lahze750,x2_next_chosen_lahze750,x3_next_chosen_lahze750,x4_next_chosen_lahze750,u_star750,js7501001);
[x1_lahze751,x2_lahze751,x3_lahze751,x4_lahze751]= function4(xk, dr, A, x1_lahze750,x2_lahze750,x3_lahze750 ,x4_lahze750,x1_next_chosen_lahze751,x2_next_chosen_lahze751,x3_next_chosen_lahze751,x4_next_chosen_lahze751,u_star751,js7511001);
[x1_lahze752,x2_lahze752,x3_lahze752,x4_lahze752]= function4(xk, dr, A, x1_lahze751,x2_lahze751,x3_lahze751 ,x4_lahze751,x1_next_chosen_lahze752,x2_next_chosen_lahze752,x3_next_chosen_lahze752,x4_next_chosen_lahze752,u_star752,js7521001);
[x1_lahze753,x2_lahze753,x3_lahze753,x4_lahze753]= function4(xk, dr, A, x1_lahze752,x2_lahze752,x3_lahze752 ,x4_lahze752,x1_next_chosen_lahze753,x2_next_chosen_lahze753,x3_next_chosen_lahze753,x4_next_chosen_lahze753,u_star753,js7531001);
[x1_lahze754,x2_lahze754,x3_lahze754,x4_lahze754]= function4(xk, dr, A, x1_lahze753,x2_lahze753,x3_lahze753 ,x4_lahze753,x1_next_chosen_lahze754,x2_next_chosen_lahze754,x3_next_chosen_lahze754,x4_next_chosen_lahze754,u_star754,js7541001);
[x1_lahze755,x2_lahze755,x3_lahze755,x4_lahze755]= function4(xk, dr, A, x1_lahze754,x2_lahze754,x3_lahze754 ,x4_lahze754,x1_next_chosen_lahze755,x2_next_chosen_lahze755,x3_next_chosen_lahze755,x4_next_chosen_lahze755,u_star755,js7551001);
[x1_lahze756,x2_lahze756,x3_lahze756,x4_lahze756]= function4(xk, dr, A, x1_lahze755,x2_lahze755,x3_lahze755 ,x4_lahze755,x1_next_chosen_lahze756,x2_next_chosen_lahze756,x3_next_chosen_lahze756,x4_next_chosen_lahze756,u_star756,js7561001);
[x1_lahze757,x2_lahze757,x3_lahze757,x4_lahze757]= function4(xk, dr, A, x1_lahze756,x2_lahze756,x3_lahze756 ,x4_lahze756,x1_next_chosen_lahze757,x2_next_chosen_lahze757,x3_next_chosen_lahze757,x4_next_chosen_lahze757,u_star757,js7571001);
[x1_lahze758,x2_lahze758,x3_lahze758,x4_lahze758]= function4(xk, dr, A, x1_lahze757,x2_lahze757,x3_lahze757 ,x4_lahze757,x1_next_chosen_lahze758,x2_next_chosen_lahze758,x3_next_chosen_lahze758,x4_next_chosen_lahze758,u_star758,js7581001);
[x1_lahze759,x2_lahze759,x3_lahze759,x4_lahze759]= function4(xk, dr, A, x1_lahze758,x2_lahze758,x3_lahze758 ,x4_lahze758,x1_next_chosen_lahze759,x2_next_chosen_lahze759,x3_next_chosen_lahze759,x4_next_chosen_lahze759,u_star759,js7591001);
[x1_lahze760,x2_lahze760,x3_lahze760,x4_lahze760]= function4(xk, dr, A, x1_lahze759,x2_lahze759,x3_lahze759 ,x4_lahze759,x1_next_chosen_lahze760,x2_next_chosen_lahze760,x3_next_chosen_lahze760,x4_next_chosen_lahze760,u_star760,js7601001);
[x1_lahze761,x2_lahze761,x3_lahze761,x4_lahze761]= function4(xk, dr, A, x1_lahze760,x2_lahze760,x3_lahze760 ,x4_lahze760,x1_next_chosen_lahze761,x2_next_chosen_lahze761,x3_next_chosen_lahze761,x4_next_chosen_lahze761,u_star761,js7611001);
[x1_lahze762,x2_lahze762,x3_lahze762,x4_lahze762]= function4(xk, dr, A, x1_lahze761,x2_lahze761,x3_lahze761 ,x4_lahze761,x1_next_chosen_lahze762,x2_next_chosen_lahze762,x3_next_chosen_lahze762,x4_next_chosen_lahze762,u_star762,js7621001);
[x1_lahze763,x2_lahze763,x3_lahze763,x4_lahze763]= function4(xk, dr, A, x1_lahze762,x2_lahze762,x3_lahze762 ,x4_lahze762,x1_next_chosen_lahze763,x2_next_chosen_lahze763,x3_next_chosen_lahze763,x4_next_chosen_lahze763,u_star763,js7631001);
[x1_lahze764,x2_lahze764,x3_lahze764,x4_lahze764]= function4(xk, dr, A, x1_lahze763,x2_lahze763,x3_lahze763 ,x4_lahze763,x1_next_chosen_lahze764,x2_next_chosen_lahze764,x3_next_chosen_lahze764,x4_next_chosen_lahze764,u_star764,js7641001);
[x1_lahze765,x2_lahze765,x3_lahze765,x4_lahze765]= function4(xk, dr, A, x1_lahze764,x2_lahze764,x3_lahze764 ,x4_lahze764,x1_next_chosen_lahze765,x2_next_chosen_lahze765,x3_next_chosen_lahze765,x4_next_chosen_lahze765,u_star765,js7651001);
[x1_lahze766,x2_lahze766,x3_lahze766,x4_lahze766]= function4(xk, dr, A, x1_lahze765,x2_lahze765,x3_lahze765 ,x4_lahze765,x1_next_chosen_lahze766,x2_next_chosen_lahze766,x3_next_chosen_lahze766,x4_next_chosen_lahze766,u_star766,js7661001);
[x1_lahze767,x2_lahze767,x3_lahze767,x4_lahze767]= function4(xk, dr, A, x1_lahze766,x2_lahze766,x3_lahze766 ,x4_lahze766,x1_next_chosen_lahze767,x2_next_chosen_lahze767,x3_next_chosen_lahze767,x4_next_chosen_lahze767,u_star767,js7671001);
[x1_lahze768,x2_lahze768,x3_lahze768,x4_lahze768]= function4(xk, dr, A, x1_lahze767,x2_lahze767,x3_lahze767 ,x4_lahze767,x1_next_chosen_lahze768,x2_next_chosen_lahze768,x3_next_chosen_lahze768,x4_next_chosen_lahze768,u_star768,js7681001);
[x1_lahze769,x2_lahze769,x3_lahze769,x4_lahze769]= function4(xk, dr, A, x1_lahze768,x2_lahze768,x3_lahze768 ,x4_lahze768,x1_next_chosen_lahze769,x2_next_chosen_lahze769,x3_next_chosen_lahze769,x4_next_chosen_lahze769,u_star769,js7691001);
[x1_lahze770,x2_lahze770,x3_lahze770,x4_lahze770]= function4(xk, dr, A, x1_lahze769,x2_lahze769,x3_lahze769 ,x4_lahze769,x1_next_chosen_lahze770,x2_next_chosen_lahze770,x3_next_chosen_lahze770,x4_next_chosen_lahze770,u_star770,js7701001);
[x1_lahze771,x2_lahze771,x3_lahze771,x4_lahze771]= function4(xk, dr, A, x1_lahze770,x2_lahze770,x3_lahze770 ,x4_lahze770,x1_next_chosen_lahze771,x2_next_chosen_lahze771,x3_next_chosen_lahze771,x4_next_chosen_lahze771,u_star771,js7711001);
[x1_lahze772,x2_lahze772,x3_lahze772,x4_lahze772]= function4(xk, dr, A, x1_lahze771,x2_lahze771,x3_lahze771 ,x4_lahze771,x1_next_chosen_lahze772,x2_next_chosen_lahze772,x3_next_chosen_lahze772,x4_next_chosen_lahze772,u_star772,js7721001);
[x1_lahze773,x2_lahze773,x3_lahze773,x4_lahze773]= function4(xk, dr, A, x1_lahze772,x2_lahze772,x3_lahze772 ,x4_lahze772,x1_next_chosen_lahze773,x2_next_chosen_lahze773,x3_next_chosen_lahze773,x4_next_chosen_lahze773,u_star773,js7731001);
[x1_lahze774,x2_lahze774,x3_lahze774,x4_lahze774]= function4(xk, dr, A, x1_lahze773,x2_lahze773,x3_lahze773 ,x4_lahze773,x1_next_chosen_lahze774,x2_next_chosen_lahze774,x3_next_chosen_lahze774,x4_next_chosen_lahze774,u_star774,js7741001);
[x1_lahze775,x2_lahze775,x3_lahze775,x4_lahze775]= function4(xk, dr, A, x1_lahze774,x2_lahze774,x3_lahze774 ,x4_lahze774,x1_next_chosen_lahze775,x2_next_chosen_lahze775,x3_next_chosen_lahze775,x4_next_chosen_lahze775,u_star775,js7751001);
[x1_lahze776,x2_lahze776,x3_lahze776,x4_lahze776]= function4(xk, dr, A, x1_lahze775,x2_lahze775,x3_lahze775 ,x4_lahze775,x1_next_chosen_lahze776,x2_next_chosen_lahze776,x3_next_chosen_lahze776,x4_next_chosen_lahze776,u_star776,js7761001);
[x1_lahze777,x2_lahze777,x3_lahze777,x4_lahze777]= function4(xk, dr, A, x1_lahze776,x2_lahze776,x3_lahze776 ,x4_lahze776,x1_next_chosen_lahze777,x2_next_chosen_lahze777,x3_next_chosen_lahze777,x4_next_chosen_lahze777,u_star777,js7771001);
[x1_lahze778,x2_lahze778,x3_lahze778,x4_lahze778]= function4(xk, dr, A, x1_lahze777,x2_lahze777,x3_lahze777 ,x4_lahze777,x1_next_chosen_lahze778,x2_next_chosen_lahze778,x3_next_chosen_lahze778,x4_next_chosen_lahze778,u_star778,js7781001);
[x1_lahze779,x2_lahze779,x3_lahze779,x4_lahze779]= function4(xk, dr, A, x1_lahze778,x2_lahze778,x3_lahze778 ,x4_lahze778,x1_next_chosen_lahze779,x2_next_chosen_lahze779,x3_next_chosen_lahze779,x4_next_chosen_lahze779,u_star779,js7791001);
[x1_lahze780,x2_lahze780,x3_lahze780,x4_lahze780]= function4(xk, dr, A, x1_lahze779,x2_lahze779,x3_lahze779 ,x4_lahze779,x1_next_chosen_lahze780,x2_next_chosen_lahze780,x3_next_chosen_lahze780,x4_next_chosen_lahze780,u_star780,js7801001);
[x1_lahze781,x2_lahze781,x3_lahze781,x4_lahze781]= function4(xk, dr, A, x1_lahze780,x2_lahze780,x3_lahze780 ,x4_lahze780,x1_next_chosen_lahze781,x2_next_chosen_lahze781,x3_next_chosen_lahze781,x4_next_chosen_lahze781,u_star781,js7811001);
[x1_lahze782,x2_lahze782,x3_lahze782,x4_lahze782]= function4(xk, dr, A, x1_lahze781,x2_lahze781,x3_lahze781 ,x4_lahze781,x1_next_chosen_lahze782,x2_next_chosen_lahze782,x3_next_chosen_lahze782,x4_next_chosen_lahze782,u_star782,js7821001);
[x1_lahze783,x2_lahze783,x3_lahze783,x4_lahze783]= function4(xk, dr, A, x1_lahze782,x2_lahze782,x3_lahze782 ,x4_lahze782,x1_next_chosen_lahze783,x2_next_chosen_lahze783,x3_next_chosen_lahze783,x4_next_chosen_lahze783,u_star783,js7831001);
[x1_lahze784,x2_lahze784,x3_lahze784,x4_lahze784]= function4(xk, dr, A, x1_lahze783,x2_lahze783,x3_lahze783 ,x4_lahze783,x1_next_chosen_lahze784,x2_next_chosen_lahze784,x3_next_chosen_lahze784,x4_next_chosen_lahze784,u_star784,js7841001);
[x1_lahze785,x2_lahze785,x3_lahze785,x4_lahze785]= function4(xk, dr, A, x1_lahze784,x2_lahze784,x3_lahze784 ,x4_lahze784,x1_next_chosen_lahze785,x2_next_chosen_lahze785,x3_next_chosen_lahze785,x4_next_chosen_lahze785,u_star785,js7851001);
[x1_lahze786,x2_lahze786,x3_lahze786,x4_lahze786]= function4(xk, dr, A, x1_lahze785,x2_lahze785,x3_lahze785 ,x4_lahze785,x1_next_chosen_lahze786,x2_next_chosen_lahze786,x3_next_chosen_lahze786,x4_next_chosen_lahze786,u_star786,js7861001);
[x1_lahze787,x2_lahze787,x3_lahze787,x4_lahze787]= function4(xk, dr, A, x1_lahze786,x2_lahze786,x3_lahze786 ,x4_lahze786,x1_next_chosen_lahze787,x2_next_chosen_lahze787,x3_next_chosen_lahze787,x4_next_chosen_lahze787,u_star787,js7871001);
[x1_lahze788,x2_lahze788,x3_lahze788,x4_lahze788]= function4(xk, dr, A, x1_lahze787,x2_lahze787,x3_lahze787 ,x4_lahze787,x1_next_chosen_lahze788,x2_next_chosen_lahze788,x3_next_chosen_lahze788,x4_next_chosen_lahze788,u_star788,js7881001);
[x1_lahze789,x2_lahze789,x3_lahze789,x4_lahze789]= function4(xk, dr, A, x1_lahze788,x2_lahze788,x3_lahze788 ,x4_lahze788,x1_next_chosen_lahze789,x2_next_chosen_lahze789,x3_next_chosen_lahze789,x4_next_chosen_lahze789,u_star789,js7891001);
[x1_lahze790,x2_lahze790,x3_lahze790,x4_lahze790]= function4(xk, dr, A, x1_lahze789,x2_lahze789,x3_lahze789 ,x4_lahze789,x1_next_chosen_lahze790,x2_next_chosen_lahze790,x3_next_chosen_lahze790,x4_next_chosen_lahze790,u_star790,js7901001);
[x1_lahze791,x2_lahze791,x3_lahze791,x4_lahze791]= function4(xk, dr, A, x1_lahze790,x2_lahze790,x3_lahze790 ,x4_lahze790,x1_next_chosen_lahze791,x2_next_chosen_lahze791,x3_next_chosen_lahze791,x4_next_chosen_lahze791,u_star791,js7911001);
[x1_lahze792,x2_lahze792,x3_lahze792,x4_lahze792]= function4(xk, dr, A, x1_lahze791,x2_lahze791,x3_lahze791 ,x4_lahze791,x1_next_chosen_lahze792,x2_next_chosen_lahze792,x3_next_chosen_lahze792,x4_next_chosen_lahze792,u_star792,js7921001);
[x1_lahze793,x2_lahze793,x3_lahze793,x4_lahze793]= function4(xk, dr, A, x1_lahze792,x2_lahze792,x3_lahze792 ,x4_lahze792,x1_next_chosen_lahze793,x2_next_chosen_lahze793,x3_next_chosen_lahze793,x4_next_chosen_lahze793,u_star793,js7931001);
[x1_lahze794,x2_lahze794,x3_lahze794,x4_lahze794]= function4(xk, dr, A, x1_lahze793,x2_lahze793,x3_lahze793 ,x4_lahze793,x1_next_chosen_lahze794,x2_next_chosen_lahze794,x3_next_chosen_lahze794,x4_next_chosen_lahze794,u_star794,js7941001);
[x1_lahze795,x2_lahze795,x3_lahze795,x4_lahze795]= function4(xk, dr, A, x1_lahze794,x2_lahze794,x3_lahze794 ,x4_lahze794,x1_next_chosen_lahze795,x2_next_chosen_lahze795,x3_next_chosen_lahze795,x4_next_chosen_lahze795,u_star795,js7951001);
[x1_lahze796,x2_lahze796,x3_lahze796,x4_lahze796]= function4(xk, dr, A, x1_lahze795,x2_lahze795,x3_lahze795 ,x4_lahze795,x1_next_chosen_lahze796,x2_next_chosen_lahze796,x3_next_chosen_lahze796,x4_next_chosen_lahze796,u_star796,js7961001);
[x1_lahze797,x2_lahze797,x3_lahze797,x4_lahze797]= function4(xk, dr, A, x1_lahze796,x2_lahze796,x3_lahze796 ,x4_lahze796,x1_next_chosen_lahze797,x2_next_chosen_lahze797,x3_next_chosen_lahze797,x4_next_chosen_lahze797,u_star797,js7971001);
[x1_lahze798,x2_lahze798,x3_lahze798,x4_lahze798]= function4(xk, dr, A, x1_lahze797,x2_lahze797,x3_lahze797 ,x4_lahze797,x1_next_chosen_lahze798,x2_next_chosen_lahze798,x3_next_chosen_lahze798,x4_next_chosen_lahze798,u_star798,js7981001);
[x1_lahze799,x2_lahze799,x3_lahze799,x4_lahze799]= function4(xk, dr, A, x1_lahze798,x2_lahze798,x3_lahze798 ,x4_lahze798,x1_next_chosen_lahze799,x2_next_chosen_lahze799,x3_next_chosen_lahze799,x4_next_chosen_lahze799,u_star799,js7991001);
[x1_lahze800,x2_lahze800,x3_lahze800,x4_lahze800]= function4(xk, dr, A, x1_lahze799,x2_lahze799,x3_lahze799 ,x4_lahze799,x1_next_chosen_lahze800,x2_next_chosen_lahze800,x3_next_chosen_lahze800,x4_next_chosen_lahze800,u_star800,js8001001);
[x1_lahze801,x2_lahze801,x3_lahze801,x4_lahze801]= function4(xk, dr, A, x1_lahze800,x2_lahze800,x3_lahze800 ,x4_lahze800,x1_next_chosen_lahze801,x2_next_chosen_lahze801,x3_next_chosen_lahze801,x4_next_chosen_lahze801,u_star801,js8011001);
[x1_lahze802,x2_lahze802,x3_lahze802,x4_lahze802]= function4(xk, dr, A, x1_lahze801,x2_lahze801,x3_lahze801 ,x4_lahze801,x1_next_chosen_lahze802,x2_next_chosen_lahze802,x3_next_chosen_lahze802,x4_next_chosen_lahze802,u_star802,js8021001);
[x1_lahze803,x2_lahze803,x3_lahze803,x4_lahze803]= function4(xk, dr, A, x1_lahze802,x2_lahze802,x3_lahze802 ,x4_lahze802,x1_next_chosen_lahze803,x2_next_chosen_lahze803,x3_next_chosen_lahze803,x4_next_chosen_lahze803,u_star803,js8031001);
[x1_lahze804,x2_lahze804,x3_lahze804,x4_lahze804]= function4(xk, dr, A, x1_lahze803,x2_lahze803,x3_lahze803 ,x4_lahze803,x1_next_chosen_lahze804,x2_next_chosen_lahze804,x3_next_chosen_lahze804,x4_next_chosen_lahze804,u_star804,js8041001);
[x1_lahze805,x2_lahze805,x3_lahze805,x4_lahze805]= function4(xk, dr, A, x1_lahze804,x2_lahze804,x3_lahze804 ,x4_lahze804,x1_next_chosen_lahze805,x2_next_chosen_lahze805,x3_next_chosen_lahze805,x4_next_chosen_lahze805,u_star805,js8051001);
[x1_lahze806,x2_lahze806,x3_lahze806,x4_lahze806]= function4(xk, dr, A, x1_lahze805,x2_lahze805,x3_lahze805 ,x4_lahze805,x1_next_chosen_lahze806,x2_next_chosen_lahze806,x3_next_chosen_lahze806,x4_next_chosen_lahze806,u_star806,js8061001);
[x1_lahze807,x2_lahze807,x3_lahze807,x4_lahze807]= function4(xk, dr, A, x1_lahze806,x2_lahze806,x3_lahze806 ,x4_lahze806,x1_next_chosen_lahze807,x2_next_chosen_lahze807,x3_next_chosen_lahze807,x4_next_chosen_lahze807,u_star807,js8071001);
[x1_lahze808,x2_lahze808,x3_lahze808,x4_lahze808]= function4(xk, dr, A, x1_lahze807,x2_lahze807,x3_lahze807 ,x4_lahze807,x1_next_chosen_lahze808,x2_next_chosen_lahze808,x3_next_chosen_lahze808,x4_next_chosen_lahze808,u_star808,js8081001);
[x1_lahze809,x2_lahze809,x3_lahze809,x4_lahze809]= function4(xk, dr, A, x1_lahze808,x2_lahze808,x3_lahze808 ,x4_lahze808,x1_next_chosen_lahze809,x2_next_chosen_lahze809,x3_next_chosen_lahze809,x4_next_chosen_lahze809,u_star809,js8091001);
[x1_lahze810,x2_lahze810,x3_lahze810,x4_lahze810]= function4(xk, dr, A, x1_lahze809,x2_lahze809,x3_lahze809 ,x4_lahze809,x1_next_chosen_lahze810,x2_next_chosen_lahze810,x3_next_chosen_lahze810,x4_next_chosen_lahze810,u_star810,js8101001);
[x1_lahze811,x2_lahze811,x3_lahze811,x4_lahze811]= function4(xk, dr, A, x1_lahze810,x2_lahze810,x3_lahze810 ,x4_lahze810,x1_next_chosen_lahze811,x2_next_chosen_lahze811,x3_next_chosen_lahze811,x4_next_chosen_lahze811,u_star811,js8111001);
[x1_lahze812,x2_lahze812,x3_lahze812,x4_lahze812]= function4(xk, dr, A, x1_lahze811,x2_lahze811,x3_lahze811 ,x4_lahze811,x1_next_chosen_lahze812,x2_next_chosen_lahze812,x3_next_chosen_lahze812,x4_next_chosen_lahze812,u_star812,js8121001);
[x1_lahze813,x2_lahze813,x3_lahze813,x4_lahze813]= function4(xk, dr, A, x1_lahze812,x2_lahze812,x3_lahze812 ,x4_lahze812,x1_next_chosen_lahze813,x2_next_chosen_lahze813,x3_next_chosen_lahze813,x4_next_chosen_lahze813,u_star813,js8131001);
[x1_lahze814,x2_lahze814,x3_lahze814,x4_lahze814]= function4(xk, dr, A, x1_lahze813,x2_lahze813,x3_lahze813 ,x4_lahze813,x1_next_chosen_lahze814,x2_next_chosen_lahze814,x3_next_chosen_lahze814,x4_next_chosen_lahze814,u_star814,js8141001);
[x1_lahze815,x2_lahze815,x3_lahze815,x4_lahze815]= function4(xk, dr, A, x1_lahze814,x2_lahze814,x3_lahze814 ,x4_lahze814,x1_next_chosen_lahze815,x2_next_chosen_lahze815,x3_next_chosen_lahze815,x4_next_chosen_lahze815,u_star815,js8151001);
[x1_lahze816,x2_lahze816,x3_lahze816,x4_lahze816]= function4(xk, dr, A, x1_lahze815,x2_lahze815,x3_lahze815 ,x4_lahze815,x1_next_chosen_lahze816,x2_next_chosen_lahze816,x3_next_chosen_lahze816,x4_next_chosen_lahze816,u_star816,js8161001);
[x1_lahze817,x2_lahze817,x3_lahze817,x4_lahze817]= function4(xk, dr, A, x1_lahze816,x2_lahze816,x3_lahze816 ,x4_lahze816,x1_next_chosen_lahze817,x2_next_chosen_lahze817,x3_next_chosen_lahze817,x4_next_chosen_lahze817,u_star817,js8171001);
[x1_lahze818,x2_lahze818,x3_lahze818,x4_lahze818]= function4(xk, dr, A, x1_lahze817,x2_lahze817,x3_lahze817 ,x4_lahze817,x1_next_chosen_lahze818,x2_next_chosen_lahze818,x3_next_chosen_lahze818,x4_next_chosen_lahze818,u_star818,js8181001);
[x1_lahze819,x2_lahze819,x3_lahze819,x4_lahze819]= function4(xk, dr, A, x1_lahze818,x2_lahze818,x3_lahze818 ,x4_lahze818,x1_next_chosen_lahze819,x2_next_chosen_lahze819,x3_next_chosen_lahze819,x4_next_chosen_lahze819,u_star819,js8191001);
[x1_lahze820,x2_lahze820,x3_lahze820,x4_lahze820]= function4(xk, dr, A, x1_lahze819,x2_lahze819,x3_lahze819 ,x4_lahze819,x1_next_chosen_lahze820,x2_next_chosen_lahze820,x3_next_chosen_lahze820,x4_next_chosen_lahze820,u_star820,js8201001);
[x1_lahze821,x2_lahze821,x3_lahze821,x4_lahze821]= function4(xk, dr, A, x1_lahze820,x2_lahze820,x3_lahze820 ,x4_lahze820,x1_next_chosen_lahze821,x2_next_chosen_lahze821,x3_next_chosen_lahze821,x4_next_chosen_lahze821,u_star821,js8211001);
[x1_lahze822,x2_lahze822,x3_lahze822,x4_lahze822]= function4(xk, dr, A, x1_lahze821,x2_lahze821,x3_lahze821 ,x4_lahze821,x1_next_chosen_lahze822,x2_next_chosen_lahze822,x3_next_chosen_lahze822,x4_next_chosen_lahze822,u_star822,js8221001);
[x1_lahze823,x2_lahze823,x3_lahze823,x4_lahze823]= function4(xk, dr, A, x1_lahze822,x2_lahze822,x3_lahze822 ,x4_lahze822,x1_next_chosen_lahze823,x2_next_chosen_lahze823,x3_next_chosen_lahze823,x4_next_chosen_lahze823,u_star823,js8231001);
[x1_lahze824,x2_lahze824,x3_lahze824,x4_lahze824]= function4(xk, dr, A, x1_lahze823,x2_lahze823,x3_lahze823 ,x4_lahze823,x1_next_chosen_lahze824,x2_next_chosen_lahze824,x3_next_chosen_lahze824,x4_next_chosen_lahze824,u_star824,js8241001);
[x1_lahze825,x2_lahze825,x3_lahze825,x4_lahze825]= function4(xk, dr, A, x1_lahze824,x2_lahze824,x3_lahze824 ,x4_lahze824,x1_next_chosen_lahze825,x2_next_chosen_lahze825,x3_next_chosen_lahze825,x4_next_chosen_lahze825,u_star825,js8251001);
[x1_lahze826,x2_lahze826,x3_lahze826,x4_lahze826]= function4(xk, dr, A, x1_lahze825,x2_lahze825,x3_lahze825 ,x4_lahze825,x1_next_chosen_lahze826,x2_next_chosen_lahze826,x3_next_chosen_lahze826,x4_next_chosen_lahze826,u_star826,js8261001);
[x1_lahze827,x2_lahze827,x3_lahze827,x4_lahze827]= function4(xk, dr, A, x1_lahze826,x2_lahze826,x3_lahze826 ,x4_lahze826,x1_next_chosen_lahze827,x2_next_chosen_lahze827,x3_next_chosen_lahze827,x4_next_chosen_lahze827,u_star827,js8271001);
[x1_lahze828,x2_lahze828,x3_lahze828,x4_lahze828]= function4(xk, dr, A, x1_lahze827,x2_lahze827,x3_lahze827 ,x4_lahze827,x1_next_chosen_lahze828,x2_next_chosen_lahze828,x3_next_chosen_lahze828,x4_next_chosen_lahze828,u_star828,js8281001);
[x1_lahze829,x2_lahze829,x3_lahze829,x4_lahze829]= function4(xk, dr, A, x1_lahze828,x2_lahze828,x3_lahze828 ,x4_lahze828,x1_next_chosen_lahze829,x2_next_chosen_lahze829,x3_next_chosen_lahze829,x4_next_chosen_lahze829,u_star829,js8291001);
[x1_lahze830,x2_lahze830,x3_lahze830,x4_lahze830]= function4(xk, dr, A, x1_lahze829,x2_lahze829,x3_lahze829 ,x4_lahze829,x1_next_chosen_lahze830,x2_next_chosen_lahze830,x3_next_chosen_lahze830,x4_next_chosen_lahze830,u_star830,js8301001);
[x1_lahze831,x2_lahze831,x3_lahze831,x4_lahze831]= function4(xk, dr, A, x1_lahze830,x2_lahze830,x3_lahze830 ,x4_lahze830,x1_next_chosen_lahze831,x2_next_chosen_lahze831,x3_next_chosen_lahze831,x4_next_chosen_lahze831,u_star831,js8311001);
[x1_lahze832,x2_lahze832,x3_lahze832,x4_lahze832]= function4(xk, dr, A, x1_lahze831,x2_lahze831,x3_lahze831 ,x4_lahze831,x1_next_chosen_lahze832,x2_next_chosen_lahze832,x3_next_chosen_lahze832,x4_next_chosen_lahze832,u_star832,js8321001);
[x1_lahze833,x2_lahze833,x3_lahze833,x4_lahze833]= function4(xk, dr, A, x1_lahze832,x2_lahze832,x3_lahze832 ,x4_lahze832,x1_next_chosen_lahze833,x2_next_chosen_lahze833,x3_next_chosen_lahze833,x4_next_chosen_lahze833,u_star833,js8331001);
[x1_lahze834,x2_lahze834,x3_lahze834,x4_lahze834]= function4(xk, dr, A, x1_lahze833,x2_lahze833,x3_lahze833 ,x4_lahze833,x1_next_chosen_lahze834,x2_next_chosen_lahze834,x3_next_chosen_lahze834,x4_next_chosen_lahze834,u_star834,js8341001);
[x1_lahze835,x2_lahze835,x3_lahze835,x4_lahze835]= function4(xk, dr, A, x1_lahze834,x2_lahze834,x3_lahze834 ,x4_lahze834,x1_next_chosen_lahze835,x2_next_chosen_lahze835,x3_next_chosen_lahze835,x4_next_chosen_lahze835,u_star835,js8351001);
[x1_lahze836,x2_lahze836,x3_lahze836,x4_lahze836]= function4(xk, dr, A, x1_lahze835,x2_lahze835,x3_lahze835 ,x4_lahze835,x1_next_chosen_lahze836,x2_next_chosen_lahze836,x3_next_chosen_lahze836,x4_next_chosen_lahze836,u_star836,js8361001);
[x1_lahze837,x2_lahze837,x3_lahze837,x4_lahze837]= function4(xk, dr, A, x1_lahze836,x2_lahze836,x3_lahze836 ,x4_lahze836,x1_next_chosen_lahze837,x2_next_chosen_lahze837,x3_next_chosen_lahze837,x4_next_chosen_lahze837,u_star837,js8371001);
[x1_lahze838,x2_lahze838,x3_lahze838,x4_lahze838]= function4(xk, dr, A, x1_lahze837,x2_lahze837,x3_lahze837 ,x4_lahze837,x1_next_chosen_lahze838,x2_next_chosen_lahze838,x3_next_chosen_lahze838,x4_next_chosen_lahze838,u_star838,js8381001);
[x1_lahze839,x2_lahze839,x3_lahze839,x4_lahze839]= function4(xk, dr, A, x1_lahze838,x2_lahze838,x3_lahze838 ,x4_lahze838,x1_next_chosen_lahze839,x2_next_chosen_lahze839,x3_next_chosen_lahze839,x4_next_chosen_lahze839,u_star839,js8391001);
[x1_lahze840,x2_lahze840,x3_lahze840,x4_lahze840]= function4(xk, dr, A, x1_lahze839,x2_lahze839,x3_lahze839 ,x4_lahze839,x1_next_chosen_lahze840,x2_next_chosen_lahze840,x3_next_chosen_lahze840,x4_next_chosen_lahze840,u_star840,js8401001);
[x1_lahze841,x2_lahze841,x3_lahze841,x4_lahze841]= function4(xk, dr, A, x1_lahze840,x2_lahze840,x3_lahze840 ,x4_lahze840,x1_next_chosen_lahze841,x2_next_chosen_lahze841,x3_next_chosen_lahze841,x4_next_chosen_lahze841,u_star841,js8411001);
[x1_lahze842,x2_lahze842,x3_lahze842,x4_lahze842]= function4(xk, dr, A, x1_lahze841,x2_lahze841,x3_lahze841 ,x4_lahze841,x1_next_chosen_lahze842,x2_next_chosen_lahze842,x3_next_chosen_lahze842,x4_next_chosen_lahze842,u_star842,js8421001);
[x1_lahze843,x2_lahze843,x3_lahze843,x4_lahze843]= function4(xk, dr, A, x1_lahze842,x2_lahze842,x3_lahze842 ,x4_lahze842,x1_next_chosen_lahze843,x2_next_chosen_lahze843,x3_next_chosen_lahze843,x4_next_chosen_lahze843,u_star843,js8431001);
[x1_lahze844,x2_lahze844,x3_lahze844,x4_lahze844]= function4(xk, dr, A, x1_lahze843,x2_lahze843,x3_lahze843 ,x4_lahze843,x1_next_chosen_lahze844,x2_next_chosen_lahze844,x3_next_chosen_lahze844,x4_next_chosen_lahze844,u_star844,js8441001);
[x1_lahze845,x2_lahze845,x3_lahze845,x4_lahze845]= function4(xk, dr, A, x1_lahze844,x2_lahze844,x3_lahze844 ,x4_lahze844,x1_next_chosen_lahze845,x2_next_chosen_lahze845,x3_next_chosen_lahze845,x4_next_chosen_lahze845,u_star845,js8451001);
[x1_lahze846,x2_lahze846,x3_lahze846,x4_lahze846]= function4(xk, dr, A, x1_lahze845,x2_lahze845,x3_lahze845 ,x4_lahze845,x1_next_chosen_lahze846,x2_next_chosen_lahze846,x3_next_chosen_lahze846,x4_next_chosen_lahze846,u_star846,js8461001);
[x1_lahze847,x2_lahze847,x3_lahze847,x4_lahze847]= function4(xk, dr, A, x1_lahze846,x2_lahze846,x3_lahze846 ,x4_lahze846,x1_next_chosen_lahze847,x2_next_chosen_lahze847,x3_next_chosen_lahze847,x4_next_chosen_lahze847,u_star847,js8471001);
[x1_lahze848,x2_lahze848,x3_lahze848,x4_lahze848]= function4(xk, dr, A, x1_lahze847,x2_lahze847,x3_lahze847 ,x4_lahze847,x1_next_chosen_lahze848,x2_next_chosen_lahze848,x3_next_chosen_lahze848,x4_next_chosen_lahze848,u_star848,js8481001);
[x1_lahze849,x2_lahze849,x3_lahze849,x4_lahze849]= function4(xk, dr, A, x1_lahze848,x2_lahze848,x3_lahze848 ,x4_lahze848,x1_next_chosen_lahze849,x2_next_chosen_lahze849,x3_next_chosen_lahze849,x4_next_chosen_lahze849,u_star849,js8491001);
[x1_lahze850,x2_lahze850,x3_lahze850,x4_lahze850]= function4(xk, dr, A, x1_lahze849,x2_lahze849,x3_lahze849 ,x4_lahze849,x1_next_chosen_lahze850,x2_next_chosen_lahze850,x3_next_chosen_lahze850,x4_next_chosen_lahze850,u_star850,js8501001);
[x1_lahze851,x2_lahze851,x3_lahze851,x4_lahze851]= function4(xk, dr, A, x1_lahze850,x2_lahze850,x3_lahze850 ,x4_lahze850,x1_next_chosen_lahze851,x2_next_chosen_lahze851,x3_next_chosen_lahze851,x4_next_chosen_lahze851,u_star851,js8511001);
[x1_lahze852,x2_lahze852,x3_lahze852,x4_lahze852]= function4(xk, dr, A, x1_lahze851,x2_lahze851,x3_lahze851 ,x4_lahze851,x1_next_chosen_lahze852,x2_next_chosen_lahze852,x3_next_chosen_lahze852,x4_next_chosen_lahze852,u_star852,js8521001);
[x1_lahze853,x2_lahze853,x3_lahze853,x4_lahze853]= function4(xk, dr, A, x1_lahze852,x2_lahze852,x3_lahze852 ,x4_lahze852,x1_next_chosen_lahze853,x2_next_chosen_lahze853,x3_next_chosen_lahze853,x4_next_chosen_lahze853,u_star853,js8531001);
[x1_lahze854,x2_lahze854,x3_lahze854,x4_lahze854]= function4(xk, dr, A, x1_lahze853,x2_lahze853,x3_lahze853 ,x4_lahze853,x1_next_chosen_lahze854,x2_next_chosen_lahze854,x3_next_chosen_lahze854,x4_next_chosen_lahze854,u_star854,js8541001);
[x1_lahze855,x2_lahze855,x3_lahze855,x4_lahze855]= function4(xk, dr, A, x1_lahze854,x2_lahze854,x3_lahze854 ,x4_lahze854,x1_next_chosen_lahze855,x2_next_chosen_lahze855,x3_next_chosen_lahze855,x4_next_chosen_lahze855,u_star855,js8551001);
[x1_lahze856,x2_lahze856,x3_lahze856,x4_lahze856]= function4(xk, dr, A, x1_lahze855,x2_lahze855,x3_lahze855 ,x4_lahze855,x1_next_chosen_lahze856,x2_next_chosen_lahze856,x3_next_chosen_lahze856,x4_next_chosen_lahze856,u_star856,js8561001);
[x1_lahze857,x2_lahze857,x3_lahze857,x4_lahze857]= function4(xk, dr, A, x1_lahze856,x2_lahze856,x3_lahze856 ,x4_lahze856,x1_next_chosen_lahze857,x2_next_chosen_lahze857,x3_next_chosen_lahze857,x4_next_chosen_lahze857,u_star857,js8571001);
[x1_lahze858,x2_lahze858,x3_lahze858,x4_lahze858]= function4(xk, dr, A, x1_lahze857,x2_lahze857,x3_lahze857 ,x4_lahze857,x1_next_chosen_lahze858,x2_next_chosen_lahze858,x3_next_chosen_lahze858,x4_next_chosen_lahze858,u_star858,js8581001);
[x1_lahze859,x2_lahze859,x3_lahze859,x4_lahze859]= function4(xk, dr, A, x1_lahze858,x2_lahze858,x3_lahze858 ,x4_lahze858,x1_next_chosen_lahze859,x2_next_chosen_lahze859,x3_next_chosen_lahze859,x4_next_chosen_lahze859,u_star859,js8591001);
[x1_lahze860,x2_lahze860,x3_lahze860,x4_lahze860]= function4(xk, dr, A, x1_lahze859,x2_lahze859,x3_lahze859 ,x4_lahze859,x1_next_chosen_lahze860,x2_next_chosen_lahze860,x3_next_chosen_lahze860,x4_next_chosen_lahze860,u_star860,js8601001);
[x1_lahze861,x2_lahze861,x3_lahze861,x4_lahze861]= function4(xk, dr, A, x1_lahze860,x2_lahze860,x3_lahze860 ,x4_lahze860,x1_next_chosen_lahze861,x2_next_chosen_lahze861,x3_next_chosen_lahze861,x4_next_chosen_lahze861,u_star861,js8611001);
[x1_lahze862,x2_lahze862,x3_lahze862,x4_lahze862]= function4(xk, dr, A, x1_lahze861,x2_lahze861,x3_lahze861 ,x4_lahze861,x1_next_chosen_lahze862,x2_next_chosen_lahze862,x3_next_chosen_lahze862,x4_next_chosen_lahze862,u_star862,js8621001);
[x1_lahze863,x2_lahze863,x3_lahze863,x4_lahze863]= function4(xk, dr, A, x1_lahze862,x2_lahze862,x3_lahze862 ,x4_lahze862,x1_next_chosen_lahze863,x2_next_chosen_lahze863,x3_next_chosen_lahze863,x4_next_chosen_lahze863,u_star863,js8631001);
[x1_lahze864,x2_lahze864,x3_lahze864,x4_lahze864]= function4(xk, dr, A, x1_lahze863,x2_lahze863,x3_lahze863 ,x4_lahze863,x1_next_chosen_lahze864,x2_next_chosen_lahze864,x3_next_chosen_lahze864,x4_next_chosen_lahze864,u_star864,js8641001);
[x1_lahze865,x2_lahze865,x3_lahze865,x4_lahze865]= function4(xk, dr, A, x1_lahze864,x2_lahze864,x3_lahze864 ,x4_lahze864,x1_next_chosen_lahze865,x2_next_chosen_lahze865,x3_next_chosen_lahze865,x4_next_chosen_lahze865,u_star865,js8651001);
[x1_lahze866,x2_lahze866,x3_lahze866,x4_lahze866]= function4(xk, dr, A, x1_lahze865,x2_lahze865,x3_lahze865 ,x4_lahze865,x1_next_chosen_lahze866,x2_next_chosen_lahze866,x3_next_chosen_lahze866,x4_next_chosen_lahze866,u_star866,js8661001);
[x1_lahze867,x2_lahze867,x3_lahze867,x4_lahze867]= function4(xk, dr, A, x1_lahze866,x2_lahze866,x3_lahze866 ,x4_lahze866,x1_next_chosen_lahze867,x2_next_chosen_lahze867,x3_next_chosen_lahze867,x4_next_chosen_lahze867,u_star867,js8671001);
[x1_lahze868,x2_lahze868,x3_lahze868,x4_lahze868]= function4(xk, dr, A, x1_lahze867,x2_lahze867,x3_lahze867 ,x4_lahze867,x1_next_chosen_lahze868,x2_next_chosen_lahze868,x3_next_chosen_lahze868,x4_next_chosen_lahze868,u_star868,js8681001);
[x1_lahze869,x2_lahze869,x3_lahze869,x4_lahze869]= function4(xk, dr, A, x1_lahze868,x2_lahze868,x3_lahze868 ,x4_lahze868,x1_next_chosen_lahze869,x2_next_chosen_lahze869,x3_next_chosen_lahze869,x4_next_chosen_lahze869,u_star869,js8691001);
[x1_lahze870,x2_lahze870,x3_lahze870,x4_lahze870]= function4(xk, dr, A, x1_lahze869,x2_lahze869,x3_lahze869 ,x4_lahze869,x1_next_chosen_lahze870,x2_next_chosen_lahze870,x3_next_chosen_lahze870,x4_next_chosen_lahze870,u_star870,js8701001);
[x1_lahze871,x2_lahze871,x3_lahze871,x4_lahze871]= function4(xk, dr, A, x1_lahze870,x2_lahze870,x3_lahze870 ,x4_lahze870,x1_next_chosen_lahze871,x2_next_chosen_lahze871,x3_next_chosen_lahze871,x4_next_chosen_lahze871,u_star871,js8711001);
[x1_lahze872,x2_lahze872,x3_lahze872,x4_lahze872]= function4(xk, dr, A, x1_lahze871,x2_lahze871,x3_lahze871 ,x4_lahze871,x1_next_chosen_lahze872,x2_next_chosen_lahze872,x3_next_chosen_lahze872,x4_next_chosen_lahze872,u_star872,js8721001);
[x1_lahze873,x2_lahze873,x3_lahze873,x4_lahze873]= function4(xk, dr, A, x1_lahze872,x2_lahze872,x3_lahze872 ,x4_lahze872,x1_next_chosen_lahze873,x2_next_chosen_lahze873,x3_next_chosen_lahze873,x4_next_chosen_lahze873,u_star873,js8731001);
[x1_lahze874,x2_lahze874,x3_lahze874,x4_lahze874]= function4(xk, dr, A, x1_lahze873,x2_lahze873,x3_lahze873 ,x4_lahze873,x1_next_chosen_lahze874,x2_next_chosen_lahze874,x3_next_chosen_lahze874,x4_next_chosen_lahze874,u_star874,js8741001);
[x1_lahze875,x2_lahze875,x3_lahze875,x4_lahze875]= function4(xk, dr, A, x1_lahze874,x2_lahze874,x3_lahze874 ,x4_lahze874,x1_next_chosen_lahze875,x2_next_chosen_lahze875,x3_next_chosen_lahze875,x4_next_chosen_lahze875,u_star875,js8751001);
[x1_lahze876,x2_lahze876,x3_lahze876,x4_lahze876]= function4(xk, dr, A, x1_lahze875,x2_lahze875,x3_lahze875 ,x4_lahze875,x1_next_chosen_lahze876,x2_next_chosen_lahze876,x3_next_chosen_lahze876,x4_next_chosen_lahze876,u_star876,js8761001);
[x1_lahze877,x2_lahze877,x3_lahze877,x4_lahze877]= function4(xk, dr, A, x1_lahze876,x2_lahze876,x3_lahze876 ,x4_lahze876,x1_next_chosen_lahze877,x2_next_chosen_lahze877,x3_next_chosen_lahze877,x4_next_chosen_lahze877,u_star877,js8771001);
[x1_lahze878,x2_lahze878,x3_lahze878,x4_lahze878]= function4(xk, dr, A, x1_lahze877,x2_lahze877,x3_lahze877 ,x4_lahze877,x1_next_chosen_lahze878,x2_next_chosen_lahze878,x3_next_chosen_lahze878,x4_next_chosen_lahze878,u_star878,js8781001);
[x1_lahze879,x2_lahze879,x3_lahze879,x4_lahze879]= function4(xk, dr, A, x1_lahze878,x2_lahze878,x3_lahze878 ,x4_lahze878,x1_next_chosen_lahze879,x2_next_chosen_lahze879,x3_next_chosen_lahze879,x4_next_chosen_lahze879,u_star879,js8791001);
[x1_lahze880,x2_lahze880,x3_lahze880,x4_lahze880]= function4(xk, dr, A, x1_lahze879,x2_lahze879,x3_lahze879 ,x4_lahze879,x1_next_chosen_lahze880,x2_next_chosen_lahze880,x3_next_chosen_lahze880,x4_next_chosen_lahze880,u_star880,js8801001);
[x1_lahze881,x2_lahze881,x3_lahze881,x4_lahze881]= function4(xk, dr, A, x1_lahze880,x2_lahze880,x3_lahze880 ,x4_lahze880,x1_next_chosen_lahze881,x2_next_chosen_lahze881,x3_next_chosen_lahze881,x4_next_chosen_lahze881,u_star881,js8811001);
[x1_lahze882,x2_lahze882,x3_lahze882,x4_lahze882]= function4(xk, dr, A, x1_lahze881,x2_lahze881,x3_lahze881 ,x4_lahze881,x1_next_chosen_lahze882,x2_next_chosen_lahze882,x3_next_chosen_lahze882,x4_next_chosen_lahze882,u_star882,js8821001);
[x1_lahze883,x2_lahze883,x3_lahze883,x4_lahze883]= function4(xk, dr, A, x1_lahze882,x2_lahze882,x3_lahze882 ,x4_lahze882,x1_next_chosen_lahze883,x2_next_chosen_lahze883,x3_next_chosen_lahze883,x4_next_chosen_lahze883,u_star883,js8831001);
[x1_lahze884,x2_lahze884,x3_lahze884,x4_lahze884]= function4(xk, dr, A, x1_lahze883,x2_lahze883,x3_lahze883 ,x4_lahze883,x1_next_chosen_lahze884,x2_next_chosen_lahze884,x3_next_chosen_lahze884,x4_next_chosen_lahze884,u_star884,js8841001);
[x1_lahze885,x2_lahze885,x3_lahze885,x4_lahze885]= function4(xk, dr, A, x1_lahze884,x2_lahze884,x3_lahze884 ,x4_lahze884,x1_next_chosen_lahze885,x2_next_chosen_lahze885,x3_next_chosen_lahze885,x4_next_chosen_lahze885,u_star885,js8851001);
[x1_lahze886,x2_lahze886,x3_lahze886,x4_lahze886]= function4(xk, dr, A, x1_lahze885,x2_lahze885,x3_lahze885 ,x4_lahze885,x1_next_chosen_lahze886,x2_next_chosen_lahze886,x3_next_chosen_lahze886,x4_next_chosen_lahze886,u_star886,js8861001);
[x1_lahze887,x2_lahze887,x3_lahze887,x4_lahze887]= function4(xk, dr, A, x1_lahze886,x2_lahze886,x3_lahze886 ,x4_lahze886,x1_next_chosen_lahze887,x2_next_chosen_lahze887,x3_next_chosen_lahze887,x4_next_chosen_lahze887,u_star887,js8871001);
[x1_lahze888,x2_lahze888,x3_lahze888,x4_lahze888]= function4(xk, dr, A, x1_lahze887,x2_lahze887,x3_lahze887 ,x4_lahze887,x1_next_chosen_lahze888,x2_next_chosen_lahze888,x3_next_chosen_lahze888,x4_next_chosen_lahze888,u_star888,js8881001);
[x1_lahze889,x2_lahze889,x3_lahze889,x4_lahze889]= function4(xk, dr, A, x1_lahze888,x2_lahze888,x3_lahze888 ,x4_lahze888,x1_next_chosen_lahze889,x2_next_chosen_lahze889,x3_next_chosen_lahze889,x4_next_chosen_lahze889,u_star889,js8891001);
[x1_lahze890,x2_lahze890,x3_lahze890,x4_lahze890]= function4(xk, dr, A, x1_lahze889,x2_lahze889,x3_lahze889 ,x4_lahze889,x1_next_chosen_lahze890,x2_next_chosen_lahze890,x3_next_chosen_lahze890,x4_next_chosen_lahze890,u_star890,js8901001);
[x1_lahze891,x2_lahze891,x3_lahze891,x4_lahze891]= function4(xk, dr, A, x1_lahze890,x2_lahze890,x3_lahze890 ,x4_lahze890,x1_next_chosen_lahze891,x2_next_chosen_lahze891,x3_next_chosen_lahze891,x4_next_chosen_lahze891,u_star891,js8911001);
[x1_lahze892,x2_lahze892,x3_lahze892,x4_lahze892]= function4(xk, dr, A, x1_lahze891,x2_lahze891,x3_lahze891 ,x4_lahze891,x1_next_chosen_lahze892,x2_next_chosen_lahze892,x3_next_chosen_lahze892,x4_next_chosen_lahze892,u_star892,js8921001);
[x1_lahze893,x2_lahze893,x3_lahze893,x4_lahze893]= function4(xk, dr, A, x1_lahze892,x2_lahze892,x3_lahze892 ,x4_lahze892,x1_next_chosen_lahze893,x2_next_chosen_lahze893,x3_next_chosen_lahze893,x4_next_chosen_lahze893,u_star893,js8931001);
[x1_lahze894,x2_lahze894,x3_lahze894,x4_lahze894]= function4(xk, dr, A, x1_lahze893,x2_lahze893,x3_lahze893 ,x4_lahze893,x1_next_chosen_lahze894,x2_next_chosen_lahze894,x3_next_chosen_lahze894,x4_next_chosen_lahze894,u_star894,js8941001);
[x1_lahze895,x2_lahze895,x3_lahze895,x4_lahze895]= function4(xk, dr, A, x1_lahze894,x2_lahze894,x3_lahze894 ,x4_lahze894,x1_next_chosen_lahze895,x2_next_chosen_lahze895,x3_next_chosen_lahze895,x4_next_chosen_lahze895,u_star895,js8951001);
[x1_lahze896,x2_lahze896,x3_lahze896,x4_lahze896]= function4(xk, dr, A, x1_lahze895,x2_lahze895,x3_lahze895 ,x4_lahze895,x1_next_chosen_lahze896,x2_next_chosen_lahze896,x3_next_chosen_lahze896,x4_next_chosen_lahze896,u_star896,js8961001);
[x1_lahze897,x2_lahze897,x3_lahze897,x4_lahze897]= function4(xk, dr, A, x1_lahze896,x2_lahze896,x3_lahze896 ,x4_lahze896,x1_next_chosen_lahze897,x2_next_chosen_lahze897,x3_next_chosen_lahze897,x4_next_chosen_lahze897,u_star897,js8971001);
[x1_lahze898,x2_lahze898,x3_lahze898,x4_lahze898]= function4(xk, dr, A, x1_lahze897,x2_lahze897,x3_lahze897 ,x4_lahze897,x1_next_chosen_lahze898,x2_next_chosen_lahze898,x3_next_chosen_lahze898,x4_next_chosen_lahze898,u_star898,js8981001);
[x1_lahze899,x2_lahze899,x3_lahze899,x4_lahze899]= function4(xk, dr, A, x1_lahze898,x2_lahze898,x3_lahze898 ,x4_lahze898,x1_next_chosen_lahze899,x2_next_chosen_lahze899,x3_next_chosen_lahze899,x4_next_chosen_lahze899,u_star899,js8991001);
[x1_lahze900,x2_lahze900,x3_lahze900,x4_lahze900]= function4(xk, dr, A, x1_lahze899,x2_lahze899,x3_lahze899 ,x4_lahze899,x1_next_chosen_lahze900,x2_next_chosen_lahze900,x3_next_chosen_lahze900,x4_next_chosen_lahze900,u_star900,js9001001);
[x1_lahze901,x2_lahze901,x3_lahze901,x4_lahze901]= function4(xk, dr, A, x1_lahze900,x2_lahze900,x3_lahze900 ,x4_lahze900,x1_next_chosen_lahze901,x2_next_chosen_lahze901,x3_next_chosen_lahze901,x4_next_chosen_lahze901,u_star901,js9011001);
[x1_lahze902,x2_lahze902,x3_lahze902,x4_lahze902]= function4(xk, dr, A, x1_lahze901,x2_lahze901,x3_lahze901 ,x4_lahze901,x1_next_chosen_lahze902,x2_next_chosen_lahze902,x3_next_chosen_lahze902,x4_next_chosen_lahze902,u_star902,js9021001);
[x1_lahze903,x2_lahze903,x3_lahze903,x4_lahze903]= function4(xk, dr, A, x1_lahze902,x2_lahze902,x3_lahze902 ,x4_lahze902,x1_next_chosen_lahze903,x2_next_chosen_lahze903,x3_next_chosen_lahze903,x4_next_chosen_lahze903,u_star903,js9031001);
[x1_lahze904,x2_lahze904,x3_lahze904,x4_lahze904]= function4(xk, dr, A, x1_lahze903,x2_lahze903,x3_lahze903 ,x4_lahze903,x1_next_chosen_lahze904,x2_next_chosen_lahze904,x3_next_chosen_lahze904,x4_next_chosen_lahze904,u_star904,js9041001);
[x1_lahze905,x2_lahze905,x3_lahze905,x4_lahze905]= function4(xk, dr, A, x1_lahze904,x2_lahze904,x3_lahze904 ,x4_lahze904,x1_next_chosen_lahze905,x2_next_chosen_lahze905,x3_next_chosen_lahze905,x4_next_chosen_lahze905,u_star905,js9051001);
[x1_lahze906,x2_lahze906,x3_lahze906,x4_lahze906]= function4(xk, dr, A, x1_lahze905,x2_lahze905,x3_lahze905 ,x4_lahze905,x1_next_chosen_lahze906,x2_next_chosen_lahze906,x3_next_chosen_lahze906,x4_next_chosen_lahze906,u_star906,js9061001);
[x1_lahze907,x2_lahze907,x3_lahze907,x4_lahze907]= function4(xk, dr, A, x1_lahze906,x2_lahze906,x3_lahze906 ,x4_lahze906,x1_next_chosen_lahze907,x2_next_chosen_lahze907,x3_next_chosen_lahze907,x4_next_chosen_lahze907,u_star907,js9071001);
[x1_lahze908,x2_lahze908,x3_lahze908,x4_lahze908]= function4(xk, dr, A, x1_lahze907,x2_lahze907,x3_lahze907 ,x4_lahze907,x1_next_chosen_lahze908,x2_next_chosen_lahze908,x3_next_chosen_lahze908,x4_next_chosen_lahze908,u_star908,js9081001);
[x1_lahze909,x2_lahze909,x3_lahze909,x4_lahze909]= function4(xk, dr, A, x1_lahze908,x2_lahze908,x3_lahze908 ,x4_lahze908,x1_next_chosen_lahze909,x2_next_chosen_lahze909,x3_next_chosen_lahze909,x4_next_chosen_lahze909,u_star909,js9091001);
[x1_lahze910,x2_lahze910,x3_lahze910,x4_lahze910]= function4(xk, dr, A, x1_lahze909,x2_lahze909,x3_lahze909 ,x4_lahze909,x1_next_chosen_lahze910,x2_next_chosen_lahze910,x3_next_chosen_lahze910,x4_next_chosen_lahze910,u_star910,js9101001);
[x1_lahze911,x2_lahze911,x3_lahze911,x4_lahze911]= function4(xk, dr, A, x1_lahze910,x2_lahze910,x3_lahze910 ,x4_lahze910,x1_next_chosen_lahze911,x2_next_chosen_lahze911,x3_next_chosen_lahze911,x4_next_chosen_lahze911,u_star911,js9111001);
[x1_lahze912,x2_lahze912,x3_lahze912,x4_lahze912]= function4(xk, dr, A, x1_lahze911,x2_lahze911,x3_lahze911 ,x4_lahze911,x1_next_chosen_lahze912,x2_next_chosen_lahze912,x3_next_chosen_lahze912,x4_next_chosen_lahze912,u_star912,js9121001);
[x1_lahze913,x2_lahze913,x3_lahze913,x4_lahze913]= function4(xk, dr, A, x1_lahze912,x2_lahze912,x3_lahze912 ,x4_lahze912,x1_next_chosen_lahze913,x2_next_chosen_lahze913,x3_next_chosen_lahze913,x4_next_chosen_lahze913,u_star913,js9131001);
[x1_lahze914,x2_lahze914,x3_lahze914,x4_lahze914]= function4(xk, dr, A, x1_lahze913,x2_lahze913,x3_lahze913 ,x4_lahze913,x1_next_chosen_lahze914,x2_next_chosen_lahze914,x3_next_chosen_lahze914,x4_next_chosen_lahze914,u_star914,js9141001);
[x1_lahze915,x2_lahze915,x3_lahze915,x4_lahze915]= function4(xk, dr, A, x1_lahze914,x2_lahze914,x3_lahze914 ,x4_lahze914,x1_next_chosen_lahze915,x2_next_chosen_lahze915,x3_next_chosen_lahze915,x4_next_chosen_lahze915,u_star915,js9151001);
[x1_lahze916,x2_lahze916,x3_lahze916,x4_lahze916]= function4(xk, dr, A, x1_lahze915,x2_lahze915,x3_lahze915 ,x4_lahze915,x1_next_chosen_lahze916,x2_next_chosen_lahze916,x3_next_chosen_lahze916,x4_next_chosen_lahze916,u_star916,js9161001);
[x1_lahze917,x2_lahze917,x3_lahze917,x4_lahze917]= function4(xk, dr, A, x1_lahze916,x2_lahze916,x3_lahze916 ,x4_lahze916,x1_next_chosen_lahze917,x2_next_chosen_lahze917,x3_next_chosen_lahze917,x4_next_chosen_lahze917,u_star917,js9171001);
[x1_lahze918,x2_lahze918,x3_lahze918,x4_lahze918]= function4(xk, dr, A, x1_lahze917,x2_lahze917,x3_lahze917 ,x4_lahze917,x1_next_chosen_lahze918,x2_next_chosen_lahze918,x3_next_chosen_lahze918,x4_next_chosen_lahze918,u_star918,js9181001);
[x1_lahze919,x2_lahze919,x3_lahze919,x4_lahze919]= function4(xk, dr, A, x1_lahze918,x2_lahze918,x3_lahze918 ,x4_lahze918,x1_next_chosen_lahze919,x2_next_chosen_lahze919,x3_next_chosen_lahze919,x4_next_chosen_lahze919,u_star919,js9191001);
[x1_lahze920,x2_lahze920,x3_lahze920,x4_lahze920]= function4(xk, dr, A, x1_lahze919,x2_lahze919,x3_lahze919 ,x4_lahze919,x1_next_chosen_lahze920,x2_next_chosen_lahze920,x3_next_chosen_lahze920,x4_next_chosen_lahze920,u_star920,js9201001);
[x1_lahze921,x2_lahze921,x3_lahze921,x4_lahze921]= function4(xk, dr, A, x1_lahze920,x2_lahze920,x3_lahze920 ,x4_lahze920,x1_next_chosen_lahze921,x2_next_chosen_lahze921,x3_next_chosen_lahze921,x4_next_chosen_lahze921,u_star921,js9211001);
[x1_lahze922,x2_lahze922,x3_lahze922,x4_lahze922]= function4(xk, dr, A, x1_lahze921,x2_lahze921,x3_lahze921 ,x4_lahze921,x1_next_chosen_lahze922,x2_next_chosen_lahze922,x3_next_chosen_lahze922,x4_next_chosen_lahze922,u_star922,js9221001);
[x1_lahze923,x2_lahze923,x3_lahze923,x4_lahze923]= function4(xk, dr, A, x1_lahze922,x2_lahze922,x3_lahze922 ,x4_lahze922,x1_next_chosen_lahze923,x2_next_chosen_lahze923,x3_next_chosen_lahze923,x4_next_chosen_lahze923,u_star923,js9231001);
[x1_lahze924,x2_lahze924,x3_lahze924,x4_lahze924]= function4(xk, dr, A, x1_lahze923,x2_lahze923,x3_lahze923 ,x4_lahze923,x1_next_chosen_lahze924,x2_next_chosen_lahze924,x3_next_chosen_lahze924,x4_next_chosen_lahze924,u_star924,js9241001);
[x1_lahze925,x2_lahze925,x3_lahze925,x4_lahze925]= function4(xk, dr, A, x1_lahze924,x2_lahze924,x3_lahze924 ,x4_lahze924,x1_next_chosen_lahze925,x2_next_chosen_lahze925,x3_next_chosen_lahze925,x4_next_chosen_lahze925,u_star925,js9251001);
[x1_lahze926,x2_lahze926,x3_lahze926,x4_lahze926]= function4(xk, dr, A, x1_lahze925,x2_lahze925,x3_lahze925 ,x4_lahze925,x1_next_chosen_lahze926,x2_next_chosen_lahze926,x3_next_chosen_lahze926,x4_next_chosen_lahze926,u_star926,js9261001);
[x1_lahze927,x2_lahze927,x3_lahze927,x4_lahze927]= function4(xk, dr, A, x1_lahze926,x2_lahze926,x3_lahze926 ,x4_lahze926,x1_next_chosen_lahze927,x2_next_chosen_lahze927,x3_next_chosen_lahze927,x4_next_chosen_lahze927,u_star927,js9271001);
[x1_lahze928,x2_lahze928,x3_lahze928,x4_lahze928]= function4(xk, dr, A, x1_lahze927,x2_lahze927,x3_lahze927 ,x4_lahze927,x1_next_chosen_lahze928,x2_next_chosen_lahze928,x3_next_chosen_lahze928,x4_next_chosen_lahze928,u_star928,js9281001);
[x1_lahze929,x2_lahze929,x3_lahze929,x4_lahze929]= function4(xk, dr, A, x1_lahze928,x2_lahze928,x3_lahze928 ,x4_lahze928,x1_next_chosen_lahze929,x2_next_chosen_lahze929,x3_next_chosen_lahze929,x4_next_chosen_lahze929,u_star929,js9291001);
[x1_lahze930,x2_lahze930,x3_lahze930,x4_lahze930]= function4(xk, dr, A, x1_lahze929,x2_lahze929,x3_lahze929 ,x4_lahze929,x1_next_chosen_lahze930,x2_next_chosen_lahze930,x3_next_chosen_lahze930,x4_next_chosen_lahze930,u_star930,js9301001);
[x1_lahze931,x2_lahze931,x3_lahze931,x4_lahze931]= function4(xk, dr, A, x1_lahze930,x2_lahze930,x3_lahze930 ,x4_lahze930,x1_next_chosen_lahze931,x2_next_chosen_lahze931,x3_next_chosen_lahze931,x4_next_chosen_lahze931,u_star931,js9311001);
[x1_lahze932,x2_lahze932,x3_lahze932,x4_lahze932]= function4(xk, dr, A, x1_lahze931,x2_lahze931,x3_lahze931 ,x4_lahze931,x1_next_chosen_lahze932,x2_next_chosen_lahze932,x3_next_chosen_lahze932,x4_next_chosen_lahze932,u_star932,js9321001);
[x1_lahze933,x2_lahze933,x3_lahze933,x4_lahze933]= function4(xk, dr, A, x1_lahze932,x2_lahze932,x3_lahze932 ,x4_lahze932,x1_next_chosen_lahze933,x2_next_chosen_lahze933,x3_next_chosen_lahze933,x4_next_chosen_lahze933,u_star933,js9331001);
[x1_lahze934,x2_lahze934,x3_lahze934,x4_lahze934]= function4(xk, dr, A, x1_lahze933,x2_lahze933,x3_lahze933 ,x4_lahze933,x1_next_chosen_lahze934,x2_next_chosen_lahze934,x3_next_chosen_lahze934,x4_next_chosen_lahze934,u_star934,js9341001);
[x1_lahze935,x2_lahze935,x3_lahze935,x4_lahze935]= function4(xk, dr, A, x1_lahze934,x2_lahze934,x3_lahze934 ,x4_lahze934,x1_next_chosen_lahze935,x2_next_chosen_lahze935,x3_next_chosen_lahze935,x4_next_chosen_lahze935,u_star935,js9351001);
[x1_lahze936,x2_lahze936,x3_lahze936,x4_lahze936]= function4(xk, dr, A, x1_lahze935,x2_lahze935,x3_lahze935 ,x4_lahze935,x1_next_chosen_lahze936,x2_next_chosen_lahze936,x3_next_chosen_lahze936,x4_next_chosen_lahze936,u_star936,js9361001);
[x1_lahze937,x2_lahze937,x3_lahze937,x4_lahze937]= function4(xk, dr, A, x1_lahze936,x2_lahze936,x3_lahze936 ,x4_lahze936,x1_next_chosen_lahze937,x2_next_chosen_lahze937,x3_next_chosen_lahze937,x4_next_chosen_lahze937,u_star937,js9371001);
[x1_lahze938,x2_lahze938,x3_lahze938,x4_lahze938]= function4(xk, dr, A, x1_lahze937,x2_lahze937,x3_lahze937 ,x4_lahze937,x1_next_chosen_lahze938,x2_next_chosen_lahze938,x3_next_chosen_lahze938,x4_next_chosen_lahze938,u_star938,js9381001);
[x1_lahze939,x2_lahze939,x3_lahze939,x4_lahze939]= function4(xk, dr, A, x1_lahze938,x2_lahze938,x3_lahze938 ,x4_lahze938,x1_next_chosen_lahze939,x2_next_chosen_lahze939,x3_next_chosen_lahze939,x4_next_chosen_lahze939,u_star939,js9391001);
[x1_lahze940,x2_lahze940,x3_lahze940,x4_lahze940]= function4(xk, dr, A, x1_lahze939,x2_lahze939,x3_lahze939 ,x4_lahze939,x1_next_chosen_lahze940,x2_next_chosen_lahze940,x3_next_chosen_lahze940,x4_next_chosen_lahze940,u_star940,js9401001);
[x1_lahze941,x2_lahze941,x3_lahze941,x4_lahze941]= function4(xk, dr, A, x1_lahze940,x2_lahze940,x3_lahze940 ,x4_lahze940,x1_next_chosen_lahze941,x2_next_chosen_lahze941,x3_next_chosen_lahze941,x4_next_chosen_lahze941,u_star941,js9411001);
[x1_lahze942,x2_lahze942,x3_lahze942,x4_lahze942]= function4(xk, dr, A, x1_lahze941,x2_lahze941,x3_lahze941 ,x4_lahze941,x1_next_chosen_lahze942,x2_next_chosen_lahze942,x3_next_chosen_lahze942,x4_next_chosen_lahze942,u_star942,js9421001);
[x1_lahze943,x2_lahze943,x3_lahze943,x4_lahze943]= function4(xk, dr, A, x1_lahze942,x2_lahze942,x3_lahze942 ,x4_lahze942,x1_next_chosen_lahze943,x2_next_chosen_lahze943,x3_next_chosen_lahze943,x4_next_chosen_lahze943,u_star943,js9431001);
[x1_lahze944,x2_lahze944,x3_lahze944,x4_lahze944]= function4(xk, dr, A, x1_lahze943,x2_lahze943,x3_lahze943 ,x4_lahze943,x1_next_chosen_lahze944,x2_next_chosen_lahze944,x3_next_chosen_lahze944,x4_next_chosen_lahze944,u_star944,js9441001);
[x1_lahze945,x2_lahze945,x3_lahze945,x4_lahze945]= function4(xk, dr, A, x1_lahze944,x2_lahze944,x3_lahze944 ,x4_lahze944,x1_next_chosen_lahze945,x2_next_chosen_lahze945,x3_next_chosen_lahze945,x4_next_chosen_lahze945,u_star945,js9451001);
[x1_lahze946,x2_lahze946,x3_lahze946,x4_lahze946]= function4(xk, dr, A, x1_lahze945,x2_lahze945,x3_lahze945 ,x4_lahze945,x1_next_chosen_lahze946,x2_next_chosen_lahze946,x3_next_chosen_lahze946,x4_next_chosen_lahze946,u_star946,js9461001);
[x1_lahze947,x2_lahze947,x3_lahze947,x4_lahze947]= function4(xk, dr, A, x1_lahze946,x2_lahze946,x3_lahze946 ,x4_lahze946,x1_next_chosen_lahze947,x2_next_chosen_lahze947,x3_next_chosen_lahze947,x4_next_chosen_lahze947,u_star947,js9471001);
[x1_lahze948,x2_lahze948,x3_lahze948,x4_lahze948]= function4(xk, dr, A, x1_lahze947,x2_lahze947,x3_lahze947 ,x4_lahze947,x1_next_chosen_lahze948,x2_next_chosen_lahze948,x3_next_chosen_lahze948,x4_next_chosen_lahze948,u_star948,js9481001);
[x1_lahze949,x2_lahze949,x3_lahze949,x4_lahze949]= function4(xk, dr, A, x1_lahze948,x2_lahze948,x3_lahze948 ,x4_lahze948,x1_next_chosen_lahze949,x2_next_chosen_lahze949,x3_next_chosen_lahze949,x4_next_chosen_lahze949,u_star949,js9491001);
[x1_lahze950,x2_lahze950,x3_lahze950,x4_lahze950]= function4(xk, dr, A, x1_lahze949,x2_lahze949,x3_lahze949 ,x4_lahze949,x1_next_chosen_lahze950,x2_next_chosen_lahze950,x3_next_chosen_lahze950,x4_next_chosen_lahze950,u_star950,js9501001);
[x1_lahze951,x2_lahze951,x3_lahze951,x4_lahze951]= function4(xk, dr, A, x1_lahze950,x2_lahze950,x3_lahze950 ,x4_lahze950,x1_next_chosen_lahze951,x2_next_chosen_lahze951,x3_next_chosen_lahze951,x4_next_chosen_lahze951,u_star951,js9511001);
[x1_lahze952,x2_lahze952,x3_lahze952,x4_lahze952]= function4(xk, dr, A, x1_lahze951,x2_lahze951,x3_lahze951 ,x4_lahze951,x1_next_chosen_lahze952,x2_next_chosen_lahze952,x3_next_chosen_lahze952,x4_next_chosen_lahze952,u_star952,js9521001);
[x1_lahze953,x2_lahze953,x3_lahze953,x4_lahze953]= function4(xk, dr, A, x1_lahze952,x2_lahze952,x3_lahze952 ,x4_lahze952,x1_next_chosen_lahze953,x2_next_chosen_lahze953,x3_next_chosen_lahze953,x4_next_chosen_lahze953,u_star953,js9531001);
[x1_lahze954,x2_lahze954,x3_lahze954,x4_lahze954]= function4(xk, dr, A, x1_lahze953,x2_lahze953,x3_lahze953 ,x4_lahze953,x1_next_chosen_lahze954,x2_next_chosen_lahze954,x3_next_chosen_lahze954,x4_next_chosen_lahze954,u_star954,js9541001);
[x1_lahze955,x2_lahze955,x3_lahze955,x4_lahze955]= function4(xk, dr, A, x1_lahze954,x2_lahze954,x3_lahze954 ,x4_lahze954,x1_next_chosen_lahze955,x2_next_chosen_lahze955,x3_next_chosen_lahze955,x4_next_chosen_lahze955,u_star955,js9551001);
[x1_lahze956,x2_lahze956,x3_lahze956,x4_lahze956]= function4(xk, dr, A, x1_lahze955,x2_lahze955,x3_lahze955 ,x4_lahze955,x1_next_chosen_lahze956,x2_next_chosen_lahze956,x3_next_chosen_lahze956,x4_next_chosen_lahze956,u_star956,js9561001);
[x1_lahze957,x2_lahze957,x3_lahze957,x4_lahze957]= function4(xk, dr, A, x1_lahze956,x2_lahze956,x3_lahze956 ,x4_lahze956,x1_next_chosen_lahze957,x2_next_chosen_lahze957,x3_next_chosen_lahze957,x4_next_chosen_lahze957,u_star957,js9571001);
[x1_lahze958,x2_lahze958,x3_lahze958,x4_lahze958]= function4(xk, dr, A, x1_lahze957,x2_lahze957,x3_lahze957 ,x4_lahze957,x1_next_chosen_lahze958,x2_next_chosen_lahze958,x3_next_chosen_lahze958,x4_next_chosen_lahze958,u_star958,js9581001);
[x1_lahze959,x2_lahze959,x3_lahze959,x4_lahze959]= function4(xk, dr, A, x1_lahze958,x2_lahze958,x3_lahze958 ,x4_lahze958,x1_next_chosen_lahze959,x2_next_chosen_lahze959,x3_next_chosen_lahze959,x4_next_chosen_lahze959,u_star959,js9591001);
[x1_lahze960,x2_lahze960,x3_lahze960,x4_lahze960]= function4(xk, dr, A, x1_lahze959,x2_lahze959,x3_lahze959 ,x4_lahze959,x1_next_chosen_lahze960,x2_next_chosen_lahze960,x3_next_chosen_lahze960,x4_next_chosen_lahze960,u_star960,js9601001);
[x1_lahze961,x2_lahze961,x3_lahze961,x4_lahze961]= function4(xk, dr, A, x1_lahze960,x2_lahze960,x3_lahze960 ,x4_lahze960,x1_next_chosen_lahze961,x2_next_chosen_lahze961,x3_next_chosen_lahze961,x4_next_chosen_lahze961,u_star961,js9611001);
[x1_lahze962,x2_lahze962,x3_lahze962,x4_lahze962]= function4(xk, dr, A, x1_lahze961,x2_lahze961,x3_lahze961 ,x4_lahze961,x1_next_chosen_lahze962,x2_next_chosen_lahze962,x3_next_chosen_lahze962,x4_next_chosen_lahze962,u_star962,js9621001);
[x1_lahze963,x2_lahze963,x3_lahze963,x4_lahze963]= function4(xk, dr, A, x1_lahze962,x2_lahze962,x3_lahze962 ,x4_lahze962,x1_next_chosen_lahze963,x2_next_chosen_lahze963,x3_next_chosen_lahze963,x4_next_chosen_lahze963,u_star963,js9631001);
[x1_lahze964,x2_lahze964,x3_lahze964,x4_lahze964]= function4(xk, dr, A, x1_lahze963,x2_lahze963,x3_lahze963 ,x4_lahze963,x1_next_chosen_lahze964,x2_next_chosen_lahze964,x3_next_chosen_lahze964,x4_next_chosen_lahze964,u_star964,js9641001);
[x1_lahze965,x2_lahze965,x3_lahze965,x4_lahze965]= function4(xk, dr, A, x1_lahze964,x2_lahze964,x3_lahze964 ,x4_lahze964,x1_next_chosen_lahze965,x2_next_chosen_lahze965,x3_next_chosen_lahze965,x4_next_chosen_lahze965,u_star965,js9651001);
[x1_lahze966,x2_lahze966,x3_lahze966,x4_lahze966]= function4(xk, dr, A, x1_lahze965,x2_lahze965,x3_lahze965 ,x4_lahze965,x1_next_chosen_lahze966,x2_next_chosen_lahze966,x3_next_chosen_lahze966,x4_next_chosen_lahze966,u_star966,js9661001);
[x1_lahze967,x2_lahze967,x3_lahze967,x4_lahze967]= function4(xk, dr, A, x1_lahze966,x2_lahze966,x3_lahze966 ,x4_lahze966,x1_next_chosen_lahze967,x2_next_chosen_lahze967,x3_next_chosen_lahze967,x4_next_chosen_lahze967,u_star967,js9671001);
[x1_lahze968,x2_lahze968,x3_lahze968,x4_lahze968]= function4(xk, dr, A, x1_lahze967,x2_lahze967,x3_lahze967 ,x4_lahze967,x1_next_chosen_lahze968,x2_next_chosen_lahze968,x3_next_chosen_lahze968,x4_next_chosen_lahze968,u_star968,js9681001);
[x1_lahze969,x2_lahze969,x3_lahze969,x4_lahze969]= function4(xk, dr, A, x1_lahze968,x2_lahze968,x3_lahze968 ,x4_lahze968,x1_next_chosen_lahze969,x2_next_chosen_lahze969,x3_next_chosen_lahze969,x4_next_chosen_lahze969,u_star969,js9691001);
[x1_lahze970,x2_lahze970,x3_lahze970,x4_lahze970]= function4(xk, dr, A, x1_lahze969,x2_lahze969,x3_lahze969 ,x4_lahze969,x1_next_chosen_lahze970,x2_next_chosen_lahze970,x3_next_chosen_lahze970,x4_next_chosen_lahze970,u_star970,js9701001);
[x1_lahze971,x2_lahze971,x3_lahze971,x4_lahze971]= function4(xk, dr, A, x1_lahze970,x2_lahze970,x3_lahze970 ,x4_lahze970,x1_next_chosen_lahze971,x2_next_chosen_lahze971,x3_next_chosen_lahze971,x4_next_chosen_lahze971,u_star971,js9711001);
[x1_lahze972,x2_lahze972,x3_lahze972,x4_lahze972]= function4(xk, dr, A, x1_lahze971,x2_lahze971,x3_lahze971 ,x4_lahze971,x1_next_chosen_lahze972,x2_next_chosen_lahze972,x3_next_chosen_lahze972,x4_next_chosen_lahze972,u_star972,js9721001);
[x1_lahze973,x2_lahze973,x3_lahze973,x4_lahze973]= function4(xk, dr, A, x1_lahze972,x2_lahze972,x3_lahze972 ,x4_lahze972,x1_next_chosen_lahze973,x2_next_chosen_lahze973,x3_next_chosen_lahze973,x4_next_chosen_lahze973,u_star973,js9731001);
[x1_lahze974,x2_lahze974,x3_lahze974,x4_lahze974]= function4(xk, dr, A, x1_lahze973,x2_lahze973,x3_lahze973 ,x4_lahze973,x1_next_chosen_lahze974,x2_next_chosen_lahze974,x3_next_chosen_lahze974,x4_next_chosen_lahze974,u_star974,js9741001);
[x1_lahze975,x2_lahze975,x3_lahze975,x4_lahze975]= function4(xk, dr, A, x1_lahze974,x2_lahze974,x3_lahze974 ,x4_lahze974,x1_next_chosen_lahze975,x2_next_chosen_lahze975,x3_next_chosen_lahze975,x4_next_chosen_lahze975,u_star975,js9751001);
[x1_lahze976,x2_lahze976,x3_lahze976,x4_lahze976]= function4(xk, dr, A, x1_lahze975,x2_lahze975,x3_lahze975 ,x4_lahze975,x1_next_chosen_lahze976,x2_next_chosen_lahze976,x3_next_chosen_lahze976,x4_next_chosen_lahze976,u_star976,js9761001);
[x1_lahze977,x2_lahze977,x3_lahze977,x4_lahze977]= function4(xk, dr, A, x1_lahze976,x2_lahze976,x3_lahze976 ,x4_lahze976,x1_next_chosen_lahze977,x2_next_chosen_lahze977,x3_next_chosen_lahze977,x4_next_chosen_lahze977,u_star977,js9771001);
[x1_lahze978,x2_lahze978,x3_lahze978,x4_lahze978]= function4(xk, dr, A, x1_lahze977,x2_lahze977,x3_lahze977 ,x4_lahze977,x1_next_chosen_lahze978,x2_next_chosen_lahze978,x3_next_chosen_lahze978,x4_next_chosen_lahze978,u_star978,js9781001);
[x1_lahze979,x2_lahze979,x3_lahze979,x4_lahze979]= function4(xk, dr, A, x1_lahze978,x2_lahze978,x3_lahze978 ,x4_lahze978,x1_next_chosen_lahze979,x2_next_chosen_lahze979,x3_next_chosen_lahze979,x4_next_chosen_lahze979,u_star979,js9791001);
[x1_lahze980,x2_lahze980,x3_lahze980,x4_lahze980]= function4(xk, dr, A, x1_lahze979,x2_lahze979,x3_lahze979 ,x4_lahze979,x1_next_chosen_lahze980,x2_next_chosen_lahze980,x3_next_chosen_lahze980,x4_next_chosen_lahze980,u_star980,js9801001);
[x1_lahze981,x2_lahze981,x3_lahze981,x4_lahze981]= function4(xk, dr, A, x1_lahze980,x2_lahze980,x3_lahze980 ,x4_lahze980,x1_next_chosen_lahze981,x2_next_chosen_lahze981,x3_next_chosen_lahze981,x4_next_chosen_lahze981,u_star981,js9811001);
[x1_lahze982,x2_lahze982,x3_lahze982,x4_lahze982]= function4(xk, dr, A, x1_lahze981,x2_lahze981,x3_lahze981 ,x4_lahze981,x1_next_chosen_lahze982,x2_next_chosen_lahze982,x3_next_chosen_lahze982,x4_next_chosen_lahze982,u_star982,js9821001);
[x1_lahze983,x2_lahze983,x3_lahze983,x4_lahze983]= function4(xk, dr, A, x1_lahze982,x2_lahze982,x3_lahze982 ,x4_lahze982,x1_next_chosen_lahze983,x2_next_chosen_lahze983,x3_next_chosen_lahze983,x4_next_chosen_lahze983,u_star983,js9831001);
[x1_lahze984,x2_lahze984,x3_lahze984,x4_lahze984]= function4(xk, dr, A, x1_lahze983,x2_lahze983,x3_lahze983 ,x4_lahze983,x1_next_chosen_lahze984,x2_next_chosen_lahze984,x3_next_chosen_lahze984,x4_next_chosen_lahze984,u_star984,js9841001);
[x1_lahze985,x2_lahze985,x3_lahze985,x4_lahze985]= function4(xk, dr, A, x1_lahze984,x2_lahze984,x3_lahze984 ,x4_lahze984,x1_next_chosen_lahze985,x2_next_chosen_lahze985,x3_next_chosen_lahze985,x4_next_chosen_lahze985,u_star985,js9851001);
[x1_lahze986,x2_lahze986,x3_lahze986,x4_lahze986]= function4(xk, dr, A, x1_lahze985,x2_lahze985,x3_lahze985 ,x4_lahze985,x1_next_chosen_lahze986,x2_next_chosen_lahze986,x3_next_chosen_lahze986,x4_next_chosen_lahze986,u_star986,js9861001);
[x1_lahze987,x2_lahze987,x3_lahze987,x4_lahze987]= function4(xk, dr, A, x1_lahze986,x2_lahze986,x3_lahze986 ,x4_lahze986,x1_next_chosen_lahze987,x2_next_chosen_lahze987,x3_next_chosen_lahze987,x4_next_chosen_lahze987,u_star987,js9871001);
[x1_lahze988,x2_lahze988,x3_lahze988,x4_lahze988]= function4(xk, dr, A, x1_lahze987,x2_lahze987,x3_lahze987 ,x4_lahze987,x1_next_chosen_lahze988,x2_next_chosen_lahze988,x3_next_chosen_lahze988,x4_next_chosen_lahze988,u_star988,js9881001);
[x1_lahze989,x2_lahze989,x3_lahze989,x4_lahze989]= function4(xk, dr, A, x1_lahze988,x2_lahze988,x3_lahze988 ,x4_lahze988,x1_next_chosen_lahze989,x2_next_chosen_lahze989,x3_next_chosen_lahze989,x4_next_chosen_lahze989,u_star989,js9891001);
[x1_lahze990,x2_lahze990,x3_lahze990,x4_lahze990]= function4(xk, dr, A, x1_lahze989,x2_lahze989,x3_lahze989 ,x4_lahze989,x1_next_chosen_lahze990,x2_next_chosen_lahze990,x3_next_chosen_lahze990,x4_next_chosen_lahze990,u_star990,js9901001);
[x1_lahze991,x2_lahze991,x3_lahze991,x4_lahze991]= function4(xk, dr, A, x1_lahze990,x2_lahze990,x3_lahze990 ,x4_lahze990,x1_next_chosen_lahze991,x2_next_chosen_lahze991,x3_next_chosen_lahze991,x4_next_chosen_lahze991,u_star991,js9911001);
[x1_lahze992,x2_lahze992,x3_lahze992,x4_lahze992]= function4(xk, dr, A, x1_lahze991,x2_lahze991,x3_lahze991 ,x4_lahze991,x1_next_chosen_lahze992,x2_next_chosen_lahze992,x3_next_chosen_lahze992,x4_next_chosen_lahze992,u_star992,js9921001);
[x1_lahze993,x2_lahze993,x3_lahze993,x4_lahze993]= function4(xk, dr, A, x1_lahze992,x2_lahze992,x3_lahze992 ,x4_lahze992,x1_next_chosen_lahze993,x2_next_chosen_lahze993,x3_next_chosen_lahze993,x4_next_chosen_lahze993,u_star993,js9931001);
[x1_lahze994,x2_lahze994,x3_lahze994,x4_lahze994]= function4(xk, dr, A, x1_lahze993,x2_lahze993,x3_lahze993 ,x4_lahze993,x1_next_chosen_lahze994,x2_next_chosen_lahze994,x3_next_chosen_lahze994,x4_next_chosen_lahze994,u_star994,js9941001);
[x1_lahze995,x2_lahze995,x3_lahze995,x4_lahze995]= function4(xk, dr, A, x1_lahze994,x2_lahze994,x3_lahze994 ,x4_lahze994,x1_next_chosen_lahze995,x2_next_chosen_lahze995,x3_next_chosen_lahze995,x4_next_chosen_lahze995,u_star995,js9951001);
[x1_lahze996,x2_lahze996,x3_lahze996,x4_lahze996]= function4(xk, dr, A, x1_lahze995,x2_lahze995,x3_lahze995 ,x4_lahze995,x1_next_chosen_lahze996,x2_next_chosen_lahze996,x3_next_chosen_lahze996,x4_next_chosen_lahze996,u_star996,js9961001);
[x1_lahze997,x2_lahze997,x3_lahze997,x4_lahze997]= function4(xk, dr, A, x1_lahze996,x2_lahze996,x3_lahze996 ,x4_lahze996,x1_next_chosen_lahze997,x2_next_chosen_lahze997,x3_next_chosen_lahze997,x4_next_chosen_lahze997,u_star997,js9971001);
[x1_lahze998,x2_lahze998,x3_lahze998,x4_lahze998]= function4(xk, dr, A, x1_lahze997,x2_lahze997,x3_lahze997 ,x4_lahze997,x1_next_chosen_lahze998,x2_next_chosen_lahze998,x3_next_chosen_lahze998,x4_next_chosen_lahze998,u_star998,js9981001);
[x1_lahze999,x2_lahze999,x3_lahze999,x4_lahze999]= function4(xk, dr, A, x1_lahze998,x2_lahze998,x3_lahze998 ,x4_lahze998,x1_next_chosen_lahze999,x2_next_chosen_lahze999,x3_next_chosen_lahze999,x4_next_chosen_lahze999,u_star999,js9991001);
[x1_lahze1000,x2_lahze1000,x3_lahze1000,x4_lahze1000]= function4(xk, dr, A, x1_lahze999,x2_lahze999,x3_lahze999 ,x4_lahze999,x1_next_chosen_lahze1000,x2_next_chosen_lahze1000,x3_next_chosen_lahze1000,x4_next_chosen_lahze1000,u_star1000,js10001001);




% 
%         Table1=table( [xk(:,1)   ,xk(:,2)  ,  xk(:,3)    ,  xk(:,4) ]    ,[ x1_next_chosen_lahze5',x2_next_chosen_lahze5',x3_next_chosen_lahze5',x4_next_chosen_lahze5'] ,  u_star5' );
%         Table1.Properties.VariableNames = {'r(5) , r_dot(5) , alfa(5) ,alfa_dot(5)', 'next states' , 'u_star(5)'};
% %         disp(Table1)
%  
%         Table2=table( [xk(:,1)   ,xk(:,2)  ,  xk(:,3)    ,  xk(:,4) ]   , [ x1_next_chosen_lahze4',x2_next_chosen_lahze4',x3_next_chosen_lahze4',x4_next_chosen_lahze4'] ,  u_star4' );
%         Table2.Properties.VariableNames = {'r(4) , r_dot(4) , alfa(4) ,alfa_dot(4)','next states', 'u_star(4)'};
% %         disp(Table2)
%         
%         Table3=table( [xk(:,1)   ,xk(:,2)  ,  xk(:,3)    ,  xk(:,4) ]   , [ x1_next_chosen_lahze3',x2_next_chosen_lahze3',x3_next_chosen_lahze3',x4_next_chosen_lahze3']   , u_star3' );
%         Table3.Properties.VariableNames = {'r(3) , r_dot(3) , alfa(3) ,alfa_dot(3)','next states', 'u_star(3)'};
% %         disp(Table2)
%           
%         Table4=table([xk(:,1)   ,xk(:,2)  ,  xk(:,3)    ,  xk(:,4) ]    ,[ x1_next_chosen_lahze2',x2_next_chosen_lahze2',x3_next_chosen_lahze2',x4_next_chosen_lahze2']  ,    u_star2' );
%         Table4.Properties.VariableNames = {'r(2) , r_dot(2) , alfa(2) , alfa_dot(2)' ,'next states' , 'u_star(2)'};
% %         disp(Table2)
% 
%         Table5=table( [xk(:,1)   ,xk(:,2)  ,  xk(:,3)    ,  xk(:,4) ]    ,[ x1_next_chosen_lahze1',x2_next_chosen_lahze1',x3_next_chosen_lahze1',x4_next_chosen_lahze1']  ,   u_star1' );
%         Table5.Properties.VariableNames = {'r(1) , r_dot(1) , alfa(1) , alfa_dot(1)' , 'next states' , 'u_star(1)'};
%         
% 
% if (x1_lahze1>max(r_gheyd) || x1_lahze2> max(r_gheyd)||x1_lahze3> max(r_gheyd) ||x1_lahze4> max(r_gheyd)||x1_lahze5> max(r_gheyd))
%     disp('r is out of bound  >3. ')
% end
% if (x1_lahze1<min(r_gheyd) || x1_lahze2<min(r_gheyd)||x1_lahze3<min(r_gheyd) ||x1_lahze4<min(r_gheyd)||x1_lahze5<min(r_gheyd))
%     disp('r is out of bound  <0. ')
% end
% if (x2_lahze1>max(r_dot_gheyd) || x2_lahze2> max(r_dot_gheyd)||x2_lahze3> max(r_dot_gheyd)||x2_lahze4> max(r_dot_gheyd)||x2_lahze5> max(r_dot_gheyd))
%     disp('rdot is out of bound  >2.5. ')
% end
% if (x2_lahze1<min(r_dot_gheyd) || x2_lahze2<min(r_dot_gheyd)||x2_lahze3<min(r_dot_gheyd) ||x2_lahze4<min(r_dot_gheyd)||x2_lahze5<min(r_dot_gheyd))
%     disp('rdot is out of bound  <-2.5. ')
% end
% if (x3_lahze1>max(alfa_gheyd) || x3_lahze2> max(alfa_gheyd)||x3_lahze3> max(alfa_gheyd)||x3_lahze4> max(alfa_gheyd)||x3_lahze5> max(alfa_gheyd))
%     disp('alfa is out of bound  >1.57. ')
% end
% if (x3_lahze1<min(alfa_gheyd) || x3_lahze2<min(alfa_gheyd)||x3_lahze3<min(alfa_gheyd) ||x3_lahze4<min(alfa_gheyd)||x3_lahze5<min(alfa_gheyd))
%     disp('alfa is out of bound  <-1.57. ')
% end
% 
% if (x4_lahze1>max(alfa_dot_gheyd) || x4_lahze2> max(alfa_dot_gheyd)||x4_lahze3> max(alfa_dot_gheyd)||x4_lahze4> max(alfa_dot_gheyd)||x4_lahze5> max(alfa_dot_gheyd))
%     disp('alfa_dot is out of bound  >2.5. ')
% end
% if (x3_lahze1<min(alfa_dot_gheyd) || x4_lahze2<min(alfa_dot_gheyd)||x4_lahze3<min(alfa_dot_gheyd) ||x4_lahze4<min(alfa_dot_gheyd)||x4_lahze5<min(alfa_dot_gheyd))
%     disp('alfa_dot is out of bound  <-2.5. ')
% end




% 
%        states = [x1_lahze1 x1_lahze2 x1_lahze3 x1_lahze4 x1_lahze5;
%                  x2_lahze1 x2_lahze2 x2_lahze3 x2_lahze4 x2_lahze5;
%                  x3_lahze1 x3_lahze2 x3_lahze3 x3_lahze4 x3_lahze5;
%                  x4_lahze1 x4_lahze2 x4_lahze3 x4_lahze4 x4_lahze5]';
%              
      states = [x1_lahze1,x2_lahze1,x3_lahze1,x4_lahze1
                x1_lahze2,x2_lahze2,x3_lahze2,x4_lahze2
                x1_lahze3,x2_lahze3,x3_lahze3,x4_lahze3
                x1_lahze4,x2_lahze4,x3_lahze4,x4_lahze4
                x1_lahze5,x2_lahze5,x3_lahze5,x4_lahze5
                x1_lahze6,x2_lahze6,x3_lahze6,x4_lahze6
                x1_lahze7,x2_lahze7,x3_lahze7,x4_lahze7
                x1_lahze8,x2_lahze8,x3_lahze8,x4_lahze8
                x1_lahze9,x2_lahze9,x3_lahze9,x4_lahze9
                x1_lahze10,x2_lahze10,x3_lahze10,x4_lahze10
                x1_lahze11,x2_lahze11,x3_lahze11,x4_lahze11
                x1_lahze12,x2_lahze12,x3_lahze12,x4_lahze12
                x1_lahze13,x2_lahze13,x3_lahze13,x4_lahze13
                x1_lahze14,x2_lahze14,x3_lahze14,x4_lahze14
                x1_lahze15,x2_lahze15,x3_lahze15,x4_lahze15
                x1_lahze16,x2_lahze16,x3_lahze16,x4_lahze16
                x1_lahze17,x2_lahze17,x3_lahze17,x4_lahze17
                x1_lahze18,x2_lahze18,x3_lahze18,x4_lahze18
                x1_lahze19,x2_lahze19,x3_lahze19,x4_lahze19
                x1_lahze20,x2_lahze20,x3_lahze20,x4_lahze20
                x1_lahze21,x2_lahze21,x3_lahze21,x4_lahze21
                x1_lahze22,x2_lahze22,x3_lahze22,x4_lahze22
                x1_lahze23,x2_lahze23,x3_lahze23,x4_lahze23
                x1_lahze24,x2_lahze24,x3_lahze24,x4_lahze24
                x1_lahze25,x2_lahze25,x3_lahze25,x4_lahze25
                x1_lahze26,x2_lahze26,x3_lahze26,x4_lahze26
                x1_lahze27,x2_lahze27,x3_lahze27,x4_lahze27
                x1_lahze28,x2_lahze28,x3_lahze28,x4_lahze28
                x1_lahze29,x2_lahze29,x3_lahze29,x4_lahze29
                x1_lahze30,x2_lahze30,x3_lahze30,x4_lahze30
                x1_lahze31,x2_lahze31,x3_lahze31,x4_lahze31
                x1_lahze32,x2_lahze32,x3_lahze32,x4_lahze32
                x1_lahze33,x2_lahze33,x3_lahze33,x4_lahze33
                x1_lahze34,x2_lahze34,x3_lahze34,x4_lahze34
                x1_lahze35,x2_lahze35,x3_lahze35,x4_lahze35
                x1_lahze36,x2_lahze36,x3_lahze36,x4_lahze36
                x1_lahze37,x2_lahze37,x3_lahze37,x4_lahze37
                x1_lahze38,x2_lahze38,x3_lahze38,x4_lahze38
                x1_lahze39,x2_lahze39,x3_lahze39,x4_lahze39
                x1_lahze40,x2_lahze40,x3_lahze40,x4_lahze40
                x1_lahze41,x2_lahze41,x3_lahze41,x4_lahze41
                x1_lahze42,x2_lahze42,x3_lahze42,x4_lahze42
                x1_lahze43,x2_lahze43,x3_lahze43,x4_lahze43
                x1_lahze44,x2_lahze44,x3_lahze44,x4_lahze44
                x1_lahze45,x2_lahze45,x3_lahze45,x4_lahze45
                x1_lahze46,x2_lahze46,x3_lahze46,x4_lahze46
                x1_lahze47,x2_lahze47,x3_lahze47,x4_lahze47
                x1_lahze48,x2_lahze48,x3_lahze48,x4_lahze48
                x1_lahze49,x2_lahze49,x3_lahze49,x4_lahze49
                x1_lahze50,x2_lahze50,x3_lahze50,x4_lahze50
                x1_lahze51,x2_lahze51,x3_lahze51,x4_lahze51
                x1_lahze52,x2_lahze52,x3_lahze52,x4_lahze52
                x1_lahze53,x2_lahze53,x3_lahze53,x4_lahze53
                x1_lahze54,x2_lahze54,x3_lahze54,x4_lahze54
                x1_lahze55,x2_lahze55,x3_lahze55,x4_lahze55
                x1_lahze56,x2_lahze56,x3_lahze56,x4_lahze56
                x1_lahze57,x2_lahze57,x3_lahze57,x4_lahze57
                x1_lahze58,x2_lahze58,x3_lahze58,x4_lahze58
                x1_lahze59,x2_lahze59,x3_lahze59,x4_lahze59
                x1_lahze60,x2_lahze60,x3_lahze60,x4_lahze60
                x1_lahze61,x2_lahze61,x3_lahze61,x4_lahze61
                x1_lahze62,x2_lahze62,x3_lahze62,x4_lahze62
                x1_lahze63,x2_lahze63,x3_lahze63,x4_lahze63
                x1_lahze64,x2_lahze64,x3_lahze64,x4_lahze64
                x1_lahze65,x2_lahze65,x3_lahze65,x4_lahze65
                x1_lahze66,x2_lahze66,x3_lahze66,x4_lahze66
                x1_lahze67,x2_lahze67,x3_lahze67,x4_lahze67
                x1_lahze68,x2_lahze68,x3_lahze68,x4_lahze68
                x1_lahze69,x2_lahze69,x3_lahze69,x4_lahze69
                x1_lahze70,x2_lahze70,x3_lahze70,x4_lahze70
                x1_lahze71,x2_lahze71,x3_lahze71,x4_lahze71
                x1_lahze72,x2_lahze72,x3_lahze72,x4_lahze72
                x1_lahze73,x2_lahze73,x3_lahze73,x4_lahze73
                x1_lahze74,x2_lahze74,x3_lahze74,x4_lahze74
                x1_lahze75,x2_lahze75,x3_lahze75,x4_lahze75
                x1_lahze76,x2_lahze76,x3_lahze76,x4_lahze76
                x1_lahze77,x2_lahze77,x3_lahze77,x4_lahze77
                x1_lahze78,x2_lahze78,x3_lahze78,x4_lahze78
                x1_lahze79,x2_lahze79,x3_lahze79,x4_lahze79
                x1_lahze80,x2_lahze80,x3_lahze80,x4_lahze80
                x1_lahze81,x2_lahze81,x3_lahze81,x4_lahze81
                x1_lahze82,x2_lahze82,x3_lahze82,x4_lahze82
                x1_lahze83,x2_lahze83,x3_lahze83,x4_lahze83
                x1_lahze84,x2_lahze84,x3_lahze84,x4_lahze84
                x1_lahze85,x2_lahze85,x3_lahze85,x4_lahze85
                x1_lahze86,x2_lahze86,x3_lahze86,x4_lahze86
                x1_lahze87,x2_lahze87,x3_lahze87,x4_lahze87
                x1_lahze88,x2_lahze88,x3_lahze88,x4_lahze88
                x1_lahze89,x2_lahze89,x3_lahze89,x4_lahze89
                x1_lahze90,x2_lahze90,x3_lahze90,x4_lahze90
                x1_lahze91,x2_lahze91,x3_lahze91,x4_lahze91
                x1_lahze92,x2_lahze92,x3_lahze92,x4_lahze92
                x1_lahze93,x2_lahze93,x3_lahze93,x4_lahze93
                x1_lahze94,x2_lahze94,x3_lahze94,x4_lahze94
                x1_lahze95,x2_lahze95,x3_lahze95,x4_lahze95
                x1_lahze96,x2_lahze96,x3_lahze96,x4_lahze96
                x1_lahze97,x2_lahze97,x3_lahze97,x4_lahze97
                x1_lahze98,x2_lahze98,x3_lahze98,x4_lahze98
                x1_lahze99,x2_lahze99,x3_lahze99,x4_lahze99
                x1_lahze100,x2_lahze100,x3_lahze100,x4_lahze100
                x1_lahze101,x2_lahze101,x3_lahze101,x4_lahze101
                x1_lahze102,x2_lahze102,x3_lahze102,x4_lahze102
                x1_lahze103,x2_lahze103,x3_lahze103,x4_lahze103
                x1_lahze104,x2_lahze104,x3_lahze104,x4_lahze104
                x1_lahze105,x2_lahze105,x3_lahze105,x4_lahze105
                x1_lahze106,x2_lahze106,x3_lahze106,x4_lahze106
                x1_lahze107,x2_lahze107,x3_lahze107,x4_lahze107
                x1_lahze108,x2_lahze108,x3_lahze108,x4_lahze108
                x1_lahze109,x2_lahze109,x3_lahze109,x4_lahze109
                x1_lahze110,x2_lahze110,x3_lahze110,x4_lahze110
                x1_lahze111,x2_lahze111,x3_lahze111,x4_lahze111
                x1_lahze112,x2_lahze112,x3_lahze112,x4_lahze112
                x1_lahze113,x2_lahze113,x3_lahze113,x4_lahze113
                x1_lahze114,x2_lahze114,x3_lahze114,x4_lahze114
                x1_lahze115,x2_lahze115,x3_lahze115,x4_lahze115
                x1_lahze116,x2_lahze116,x3_lahze116,x4_lahze116
                x1_lahze117,x2_lahze117,x3_lahze117,x4_lahze117
                x1_lahze118,x2_lahze118,x3_lahze118,x4_lahze118
                x1_lahze119,x2_lahze119,x3_lahze119,x4_lahze119
                x1_lahze120,x2_lahze120,x3_lahze120,x4_lahze120
                x1_lahze121,x2_lahze121,x3_lahze121,x4_lahze121
                x1_lahze122,x2_lahze122,x3_lahze122,x4_lahze122
                x1_lahze123,x2_lahze123,x3_lahze123,x4_lahze123
                x1_lahze124,x2_lahze124,x3_lahze124,x4_lahze124
                x1_lahze125,x2_lahze125,x3_lahze125,x4_lahze125
                x1_lahze126,x2_lahze126,x3_lahze126,x4_lahze126
                x1_lahze127,x2_lahze127,x3_lahze127,x4_lahze127
                x1_lahze128,x2_lahze128,x3_lahze128,x4_lahze128
                x1_lahze129,x2_lahze129,x3_lahze129,x4_lahze129
                x1_lahze130,x2_lahze130,x3_lahze130,x4_lahze130
                x1_lahze131,x2_lahze131,x3_lahze131,x4_lahze131
                x1_lahze132,x2_lahze132,x3_lahze132,x4_lahze132
                x1_lahze133,x2_lahze133,x3_lahze133,x4_lahze133
                x1_lahze134,x2_lahze134,x3_lahze134,x4_lahze134
                x1_lahze135,x2_lahze135,x3_lahze135,x4_lahze135
                x1_lahze136,x2_lahze136,x3_lahze136,x4_lahze136
                x1_lahze137,x2_lahze137,x3_lahze137,x4_lahze137
                x1_lahze138,x2_lahze138,x3_lahze138,x4_lahze138
                x1_lahze139,x2_lahze139,x3_lahze139,x4_lahze139
                x1_lahze140,x2_lahze140,x3_lahze140,x4_lahze140
                x1_lahze141,x2_lahze141,x3_lahze141,x4_lahze141
                x1_lahze142,x2_lahze142,x3_lahze142,x4_lahze142
                x1_lahze143,x2_lahze143,x3_lahze143,x4_lahze143
                x1_lahze144,x2_lahze144,x3_lahze144,x4_lahze144
                x1_lahze145,x2_lahze145,x3_lahze145,x4_lahze145
                x1_lahze146,x2_lahze146,x3_lahze146,x4_lahze146
                x1_lahze147,x2_lahze147,x3_lahze147,x4_lahze147
                x1_lahze148,x2_lahze148,x3_lahze148,x4_lahze148
                x1_lahze149,x2_lahze149,x3_lahze149,x4_lahze149
                x1_lahze150,x2_lahze150,x3_lahze150,x4_lahze150
                x1_lahze151,x2_lahze151,x3_lahze151,x4_lahze151
                x1_lahze152,x2_lahze152,x3_lahze152,x4_lahze152
                x1_lahze153,x2_lahze153,x3_lahze153,x4_lahze153
                x1_lahze154,x2_lahze154,x3_lahze154,x4_lahze154
                x1_lahze155,x2_lahze155,x3_lahze155,x4_lahze155
                x1_lahze156,x2_lahze156,x3_lahze156,x4_lahze156
                x1_lahze157,x2_lahze157,x3_lahze157,x4_lahze157
                x1_lahze158,x2_lahze158,x3_lahze158,x4_lahze158
                x1_lahze159,x2_lahze159,x3_lahze159,x4_lahze159
                x1_lahze160,x2_lahze160,x3_lahze160,x4_lahze160
                x1_lahze161,x2_lahze161,x3_lahze161,x4_lahze161
                x1_lahze162,x2_lahze162,x3_lahze162,x4_lahze162
                x1_lahze163,x2_lahze163,x3_lahze163,x4_lahze163
                x1_lahze164,x2_lahze164,x3_lahze164,x4_lahze164
                x1_lahze165,x2_lahze165,x3_lahze165,x4_lahze165
                x1_lahze166,x2_lahze166,x3_lahze166,x4_lahze166
                x1_lahze167,x2_lahze167,x3_lahze167,x4_lahze167
                x1_lahze168,x2_lahze168,x3_lahze168,x4_lahze168
                x1_lahze169,x2_lahze169,x3_lahze169,x4_lahze169
                x1_lahze170,x2_lahze170,x3_lahze170,x4_lahze170
                x1_lahze171,x2_lahze171,x3_lahze171,x4_lahze171
                x1_lahze172,x2_lahze172,x3_lahze172,x4_lahze172
                x1_lahze173,x2_lahze173,x3_lahze173,x4_lahze173
                x1_lahze174,x2_lahze174,x3_lahze174,x4_lahze174
                x1_lahze175,x2_lahze175,x3_lahze175,x4_lahze175
                x1_lahze176,x2_lahze176,x3_lahze176,x4_lahze176
                x1_lahze177,x2_lahze177,x3_lahze177,x4_lahze177
                x1_lahze178,x2_lahze178,x3_lahze178,x4_lahze178
                x1_lahze179,x2_lahze179,x3_lahze179,x4_lahze179
                x1_lahze180,x2_lahze180,x3_lahze180,x4_lahze180
                x1_lahze181,x2_lahze181,x3_lahze181,x4_lahze181
                x1_lahze182,x2_lahze182,x3_lahze182,x4_lahze182
                x1_lahze183,x2_lahze183,x3_lahze183,x4_lahze183
                x1_lahze184,x2_lahze184,x3_lahze184,x4_lahze184
                x1_lahze185,x2_lahze185,x3_lahze185,x4_lahze185
                x1_lahze186,x2_lahze186,x3_lahze186,x4_lahze186
                x1_lahze187,x2_lahze187,x3_lahze187,x4_lahze187
                x1_lahze188,x2_lahze188,x3_lahze188,x4_lahze188
                x1_lahze189,x2_lahze189,x3_lahze189,x4_lahze189
                x1_lahze190,x2_lahze190,x3_lahze190,x4_lahze190
                x1_lahze191,x2_lahze191,x3_lahze191,x4_lahze191
                x1_lahze192,x2_lahze192,x3_lahze192,x4_lahze192
                x1_lahze193,x2_lahze193,x3_lahze193,x4_lahze193
                x1_lahze194,x2_lahze194,x3_lahze194,x4_lahze194
                x1_lahze195,x2_lahze195,x3_lahze195,x4_lahze195
                x1_lahze196,x2_lahze196,x3_lahze196,x4_lahze196
                x1_lahze197,x2_lahze197,x3_lahze197,x4_lahze197
                x1_lahze198,x2_lahze198,x3_lahze198,x4_lahze198
                x1_lahze199,x2_lahze199,x3_lahze199,x4_lahze199
                x1_lahze200,x2_lahze200,x3_lahze200,x4_lahze200
                x1_lahze201,x2_lahze201,x3_lahze201,x4_lahze201
                x1_lahze202,x2_lahze202,x3_lahze202,x4_lahze202
                x1_lahze203,x2_lahze203,x3_lahze203,x4_lahze203
                x1_lahze204,x2_lahze204,x3_lahze204,x4_lahze204
                x1_lahze205,x2_lahze205,x3_lahze205,x4_lahze205
                x1_lahze206,x2_lahze206,x3_lahze206,x4_lahze206
                x1_lahze207,x2_lahze207,x3_lahze207,x4_lahze207
                x1_lahze208,x2_lahze208,x3_lahze208,x4_lahze208
                x1_lahze209,x2_lahze209,x3_lahze209,x4_lahze209
                x1_lahze210,x2_lahze210,x3_lahze210,x4_lahze210
                x1_lahze211,x2_lahze211,x3_lahze211,x4_lahze211
                x1_lahze212,x2_lahze212,x3_lahze212,x4_lahze212
                x1_lahze213,x2_lahze213,x3_lahze213,x4_lahze213
                x1_lahze214,x2_lahze214,x3_lahze214,x4_lahze214
                x1_lahze215,x2_lahze215,x3_lahze215,x4_lahze215
                x1_lahze216,x2_lahze216,x3_lahze216,x4_lahze216
                x1_lahze217,x2_lahze217,x3_lahze217,x4_lahze217
                x1_lahze218,x2_lahze218,x3_lahze218,x4_lahze218
                x1_lahze219,x2_lahze219,x3_lahze219,x4_lahze219
                x1_lahze220,x2_lahze220,x3_lahze220,x4_lahze220
                x1_lahze221,x2_lahze221,x3_lahze221,x4_lahze221
                x1_lahze222,x2_lahze222,x3_lahze222,x4_lahze222
                x1_lahze223,x2_lahze223,x3_lahze223,x4_lahze223
                x1_lahze224,x2_lahze224,x3_lahze224,x4_lahze224
                x1_lahze225,x2_lahze225,x3_lahze225,x4_lahze225
                x1_lahze226,x2_lahze226,x3_lahze226,x4_lahze226
                x1_lahze227,x2_lahze227,x3_lahze227,x4_lahze227
                x1_lahze228,x2_lahze228,x3_lahze228,x4_lahze228
                x1_lahze229,x2_lahze229,x3_lahze229,x4_lahze229
                x1_lahze230,x2_lahze230,x3_lahze230,x4_lahze230
                x1_lahze231,x2_lahze231,x3_lahze231,x4_lahze231
                x1_lahze232,x2_lahze232,x3_lahze232,x4_lahze232
                x1_lahze233,x2_lahze233,x3_lahze233,x4_lahze233
                x1_lahze234,x2_lahze234,x3_lahze234,x4_lahze234
                x1_lahze235,x2_lahze235,x3_lahze235,x4_lahze235
                x1_lahze236,x2_lahze236,x3_lahze236,x4_lahze236
                x1_lahze237,x2_lahze237,x3_lahze237,x4_lahze237
                x1_lahze238,x2_lahze238,x3_lahze238,x4_lahze238
                x1_lahze239,x2_lahze239,x3_lahze239,x4_lahze239
                x1_lahze240,x2_lahze240,x3_lahze240,x4_lahze240
                x1_lahze241,x2_lahze241,x3_lahze241,x4_lahze241
                x1_lahze242,x2_lahze242,x3_lahze242,x4_lahze242
                x1_lahze243,x2_lahze243,x3_lahze243,x4_lahze243
                x1_lahze244,x2_lahze244,x3_lahze244,x4_lahze244
                x1_lahze245,x2_lahze245,x3_lahze245,x4_lahze245
                x1_lahze246,x2_lahze246,x3_lahze246,x4_lahze246
                x1_lahze247,x2_lahze247,x3_lahze247,x4_lahze247
                x1_lahze248,x2_lahze248,x3_lahze248,x4_lahze248
                x1_lahze249,x2_lahze249,x3_lahze249,x4_lahze249
                x1_lahze250,x2_lahze250,x3_lahze250,x4_lahze250
                x1_lahze251,x2_lahze251,x3_lahze251,x4_lahze251
                x1_lahze252,x2_lahze252,x3_lahze252,x4_lahze252
                x1_lahze253,x2_lahze253,x3_lahze253,x4_lahze253
                x1_lahze254,x2_lahze254,x3_lahze254,x4_lahze254
                x1_lahze255,x2_lahze255,x3_lahze255,x4_lahze255
                x1_lahze256,x2_lahze256,x3_lahze256,x4_lahze256
                x1_lahze257,x2_lahze257,x3_lahze257,x4_lahze257
                x1_lahze258,x2_lahze258,x3_lahze258,x4_lahze258
                x1_lahze259,x2_lahze259,x3_lahze259,x4_lahze259
                x1_lahze260,x2_lahze260,x3_lahze260,x4_lahze260
                x1_lahze261,x2_lahze261,x3_lahze261,x4_lahze261
                x1_lahze262,x2_lahze262,x3_lahze262,x4_lahze262
                x1_lahze263,x2_lahze263,x3_lahze263,x4_lahze263
                x1_lahze264,x2_lahze264,x3_lahze264,x4_lahze264
                x1_lahze265,x2_lahze265,x3_lahze265,x4_lahze265
                x1_lahze266,x2_lahze266,x3_lahze266,x4_lahze266
                x1_lahze267,x2_lahze267,x3_lahze267,x4_lahze267
                x1_lahze268,x2_lahze268,x3_lahze268,x4_lahze268
                x1_lahze269,x2_lahze269,x3_lahze269,x4_lahze269
                x1_lahze270,x2_lahze270,x3_lahze270,x4_lahze270
                x1_lahze271,x2_lahze271,x3_lahze271,x4_lahze271
                x1_lahze272,x2_lahze272,x3_lahze272,x4_lahze272
                x1_lahze273,x2_lahze273,x3_lahze273,x4_lahze273
                x1_lahze274,x2_lahze274,x3_lahze274,x4_lahze274
                x1_lahze275,x2_lahze275,x3_lahze275,x4_lahze275
                x1_lahze276,x2_lahze276,x3_lahze276,x4_lahze276
                x1_lahze277,x2_lahze277,x3_lahze277,x4_lahze277
                x1_lahze278,x2_lahze278,x3_lahze278,x4_lahze278
                x1_lahze279,x2_lahze279,x3_lahze279,x4_lahze279
                x1_lahze280,x2_lahze280,x3_lahze280,x4_lahze280
                x1_lahze281,x2_lahze281,x3_lahze281,x4_lahze281
                x1_lahze282,x2_lahze282,x3_lahze282,x4_lahze282
                x1_lahze283,x2_lahze283,x3_lahze283,x4_lahze283
                x1_lahze284,x2_lahze284,x3_lahze284,x4_lahze284
                x1_lahze285,x2_lahze285,x3_lahze285,x4_lahze285
                x1_lahze286,x2_lahze286,x3_lahze286,x4_lahze286
                x1_lahze287,x2_lahze287,x3_lahze287,x4_lahze287
                x1_lahze288,x2_lahze288,x3_lahze288,x4_lahze288
                x1_lahze289,x2_lahze289,x3_lahze289,x4_lahze289
                x1_lahze290,x2_lahze290,x3_lahze290,x4_lahze290
                x1_lahze291,x2_lahze291,x3_lahze291,x4_lahze291
                x1_lahze292,x2_lahze292,x3_lahze292,x4_lahze292
                x1_lahze293,x2_lahze293,x3_lahze293,x4_lahze293
                x1_lahze294,x2_lahze294,x3_lahze294,x4_lahze294
                x1_lahze295,x2_lahze295,x3_lahze295,x4_lahze295
                x1_lahze296,x2_lahze296,x3_lahze296,x4_lahze296
                x1_lahze297,x2_lahze297,x3_lahze297,x4_lahze297
                x1_lahze298,x2_lahze298,x3_lahze298,x4_lahze298
                x1_lahze299,x2_lahze299,x3_lahze299,x4_lahze299
                x1_lahze300,x2_lahze300,x3_lahze300,x4_lahze300
                x1_lahze301,x2_lahze301,x3_lahze301,x4_lahze301
                x1_lahze302,x2_lahze302,x3_lahze302,x4_lahze302
                x1_lahze303,x2_lahze303,x3_lahze303,x4_lahze303
                x1_lahze304,x2_lahze304,x3_lahze304,x4_lahze304
                x1_lahze305,x2_lahze305,x3_lahze305,x4_lahze305
                x1_lahze306,x2_lahze306,x3_lahze306,x4_lahze306
                x1_lahze307,x2_lahze307,x3_lahze307,x4_lahze307
                x1_lahze308,x2_lahze308,x3_lahze308,x4_lahze308
                x1_lahze309,x2_lahze309,x3_lahze309,x4_lahze309
                x1_lahze310,x2_lahze310,x3_lahze310,x4_lahze310
                x1_lahze311,x2_lahze311,x3_lahze311,x4_lahze311
                x1_lahze312,x2_lahze312,x3_lahze312,x4_lahze312
                x1_lahze313,x2_lahze313,x3_lahze313,x4_lahze313
                x1_lahze314,x2_lahze314,x3_lahze314,x4_lahze314
                x1_lahze315,x2_lahze315,x3_lahze315,x4_lahze315
                x1_lahze316,x2_lahze316,x3_lahze316,x4_lahze316
                x1_lahze317,x2_lahze317,x3_lahze317,x4_lahze317
                x1_lahze318,x2_lahze318,x3_lahze318,x4_lahze318
                x1_lahze319,x2_lahze319,x3_lahze319,x4_lahze319
                x1_lahze320,x2_lahze320,x3_lahze320,x4_lahze320
                x1_lahze321,x2_lahze321,x3_lahze321,x4_lahze321
                x1_lahze322,x2_lahze322,x3_lahze322,x4_lahze322
                x1_lahze323,x2_lahze323,x3_lahze323,x4_lahze323
                x1_lahze324,x2_lahze324,x3_lahze324,x4_lahze324
                x1_lahze325,x2_lahze325,x3_lahze325,x4_lahze325
                x1_lahze326,x2_lahze326,x3_lahze326,x4_lahze326
                x1_lahze327,x2_lahze327,x3_lahze327,x4_lahze327
                x1_lahze328,x2_lahze328,x3_lahze328,x4_lahze328
                x1_lahze329,x2_lahze329,x3_lahze329,x4_lahze329
                x1_lahze330,x2_lahze330,x3_lahze330,x4_lahze330
                x1_lahze331,x2_lahze331,x3_lahze331,x4_lahze331
                x1_lahze332,x2_lahze332,x3_lahze332,x4_lahze332
                x1_lahze333,x2_lahze333,x3_lahze333,x4_lahze333
                x1_lahze334,x2_lahze334,x3_lahze334,x4_lahze334
                x1_lahze335,x2_lahze335,x3_lahze335,x4_lahze335
                x1_lahze336,x2_lahze336,x3_lahze336,x4_lahze336
                x1_lahze337,x2_lahze337,x3_lahze337,x4_lahze337
                x1_lahze338,x2_lahze338,x3_lahze338,x4_lahze338
                x1_lahze339,x2_lahze339,x3_lahze339,x4_lahze339
                x1_lahze340,x2_lahze340,x3_lahze340,x4_lahze340
                x1_lahze341,x2_lahze341,x3_lahze341,x4_lahze341
                x1_lahze342,x2_lahze342,x3_lahze342,x4_lahze342
                x1_lahze343,x2_lahze343,x3_lahze343,x4_lahze343
                x1_lahze344,x2_lahze344,x3_lahze344,x4_lahze344
                x1_lahze345,x2_lahze345,x3_lahze345,x4_lahze345
                x1_lahze346,x2_lahze346,x3_lahze346,x4_lahze346
                x1_lahze347,x2_lahze347,x3_lahze347,x4_lahze347
                x1_lahze348,x2_lahze348,x3_lahze348,x4_lahze348
                x1_lahze349,x2_lahze349,x3_lahze349,x4_lahze349
                x1_lahze350,x2_lahze350,x3_lahze350,x4_lahze350
                x1_lahze351,x2_lahze351,x3_lahze351,x4_lahze351
                x1_lahze352,x2_lahze352,x3_lahze352,x4_lahze352
                x1_lahze353,x2_lahze353,x3_lahze353,x4_lahze353
                x1_lahze354,x2_lahze354,x3_lahze354,x4_lahze354
                x1_lahze355,x2_lahze355,x3_lahze355,x4_lahze355
                x1_lahze356,x2_lahze356,x3_lahze356,x4_lahze356
                x1_lahze357,x2_lahze357,x3_lahze357,x4_lahze357
                x1_lahze358,x2_lahze358,x3_lahze358,x4_lahze358
                x1_lahze359,x2_lahze359,x3_lahze359,x4_lahze359
                x1_lahze360,x2_lahze360,x3_lahze360,x4_lahze360
                x1_lahze361,x2_lahze361,x3_lahze361,x4_lahze361
                x1_lahze362,x2_lahze362,x3_lahze362,x4_lahze362
                x1_lahze363,x2_lahze363,x3_lahze363,x4_lahze363
                x1_lahze364,x2_lahze364,x3_lahze364,x4_lahze364
                x1_lahze365,x2_lahze365,x3_lahze365,x4_lahze365
                x1_lahze366,x2_lahze366,x3_lahze366,x4_lahze366
                x1_lahze367,x2_lahze367,x3_lahze367,x4_lahze367
                x1_lahze368,x2_lahze368,x3_lahze368,x4_lahze368
                x1_lahze369,x2_lahze369,x3_lahze369,x4_lahze369
                x1_lahze370,x2_lahze370,x3_lahze370,x4_lahze370
                x1_lahze371,x2_lahze371,x3_lahze371,x4_lahze371
                x1_lahze372,x2_lahze372,x3_lahze372,x4_lahze372
                x1_lahze373,x2_lahze373,x3_lahze373,x4_lahze373
                x1_lahze374,x2_lahze374,x3_lahze374,x4_lahze374
                x1_lahze375,x2_lahze375,x3_lahze375,x4_lahze375
                x1_lahze376,x2_lahze376,x3_lahze376,x4_lahze376
                x1_lahze377,x2_lahze377,x3_lahze377,x4_lahze377
                x1_lahze378,x2_lahze378,x3_lahze378,x4_lahze378
                x1_lahze379,x2_lahze379,x3_lahze379,x4_lahze379
                x1_lahze380,x2_lahze380,x3_lahze380,x4_lahze380
                x1_lahze381,x2_lahze381,x3_lahze381,x4_lahze381
                x1_lahze382,x2_lahze382,x3_lahze382,x4_lahze382
                x1_lahze383,x2_lahze383,x3_lahze383,x4_lahze383
                x1_lahze384,x2_lahze384,x3_lahze384,x4_lahze384
                x1_lahze385,x2_lahze385,x3_lahze385,x4_lahze385
                x1_lahze386,x2_lahze386,x3_lahze386,x4_lahze386
                x1_lahze387,x2_lahze387,x3_lahze387,x4_lahze387
                x1_lahze388,x2_lahze388,x3_lahze388,x4_lahze388
                x1_lahze389,x2_lahze389,x3_lahze389,x4_lahze389
                x1_lahze390,x2_lahze390,x3_lahze390,x4_lahze390
                x1_lahze391,x2_lahze391,x3_lahze391,x4_lahze391
                x1_lahze392,x2_lahze392,x3_lahze392,x4_lahze392
                x1_lahze393,x2_lahze393,x3_lahze393,x4_lahze393
                x1_lahze394,x2_lahze394,x3_lahze394,x4_lahze394
                x1_lahze395,x2_lahze395,x3_lahze395,x4_lahze395
                x1_lahze396,x2_lahze396,x3_lahze396,x4_lahze396
                x1_lahze397,x2_lahze397,x3_lahze397,x4_lahze397
                x1_lahze398,x2_lahze398,x3_lahze398,x4_lahze398
                x1_lahze399,x2_lahze399,x3_lahze399,x4_lahze399
                x1_lahze400,x2_lahze400,x3_lahze400,x4_lahze400
                x1_lahze401,x2_lahze401,x3_lahze401,x4_lahze401
                x1_lahze402,x2_lahze402,x3_lahze402,x4_lahze402
                x1_lahze403,x2_lahze403,x3_lahze403,x4_lahze403
                x1_lahze404,x2_lahze404,x3_lahze404,x4_lahze404
                x1_lahze405,x2_lahze405,x3_lahze405,x4_lahze405
                x1_lahze406,x2_lahze406,x3_lahze406,x4_lahze406
                x1_lahze407,x2_lahze407,x3_lahze407,x4_lahze407
                x1_lahze408,x2_lahze408,x3_lahze408,x4_lahze408
                x1_lahze409,x2_lahze409,x3_lahze409,x4_lahze409
                x1_lahze410,x2_lahze410,x3_lahze410,x4_lahze410
                x1_lahze411,x2_lahze411,x3_lahze411,x4_lahze411
                x1_lahze412,x2_lahze412,x3_lahze412,x4_lahze412
                x1_lahze413,x2_lahze413,x3_lahze413,x4_lahze413
                x1_lahze414,x2_lahze414,x3_lahze414,x4_lahze414
                x1_lahze415,x2_lahze415,x3_lahze415,x4_lahze415
                x1_lahze416,x2_lahze416,x3_lahze416,x4_lahze416
                x1_lahze417,x2_lahze417,x3_lahze417,x4_lahze417
                x1_lahze418,x2_lahze418,x3_lahze418,x4_lahze418
                x1_lahze419,x2_lahze419,x3_lahze419,x4_lahze419
                x1_lahze420,x2_lahze420,x3_lahze420,x4_lahze420
                x1_lahze421,x2_lahze421,x3_lahze421,x4_lahze421
                x1_lahze422,x2_lahze422,x3_lahze422,x4_lahze422
                x1_lahze423,x2_lahze423,x3_lahze423,x4_lahze423
                x1_lahze424,x2_lahze424,x3_lahze424,x4_lahze424
                x1_lahze425,x2_lahze425,x3_lahze425,x4_lahze425
                x1_lahze426,x2_lahze426,x3_lahze426,x4_lahze426
                x1_lahze427,x2_lahze427,x3_lahze427,x4_lahze427
                x1_lahze428,x2_lahze428,x3_lahze428,x4_lahze428
                x1_lahze429,x2_lahze429,x3_lahze429,x4_lahze429
                x1_lahze430,x2_lahze430,x3_lahze430,x4_lahze430
                x1_lahze431,x2_lahze431,x3_lahze431,x4_lahze431
                x1_lahze432,x2_lahze432,x3_lahze432,x4_lahze432
                x1_lahze433,x2_lahze433,x3_lahze433,x4_lahze433
                x1_lahze434,x2_lahze434,x3_lahze434,x4_lahze434
                x1_lahze435,x2_lahze435,x3_lahze435,x4_lahze435
                x1_lahze436,x2_lahze436,x3_lahze436,x4_lahze436
                x1_lahze437,x2_lahze437,x3_lahze437,x4_lahze437
                x1_lahze438,x2_lahze438,x3_lahze438,x4_lahze438
                x1_lahze439,x2_lahze439,x3_lahze439,x4_lahze439
                x1_lahze440,x2_lahze440,x3_lahze440,x4_lahze440
                x1_lahze441,x2_lahze441,x3_lahze441,x4_lahze441
                x1_lahze442,x2_lahze442,x3_lahze442,x4_lahze442
                x1_lahze443,x2_lahze443,x3_lahze443,x4_lahze443
                x1_lahze444,x2_lahze444,x3_lahze444,x4_lahze444
                x1_lahze445,x2_lahze445,x3_lahze445,x4_lahze445
                x1_lahze446,x2_lahze446,x3_lahze446,x4_lahze446
                x1_lahze447,x2_lahze447,x3_lahze447,x4_lahze447
                x1_lahze448,x2_lahze448,x3_lahze448,x4_lahze448
                x1_lahze449,x2_lahze449,x3_lahze449,x4_lahze449
                x1_lahze450,x2_lahze450,x3_lahze450,x4_lahze450
                x1_lahze451,x2_lahze451,x3_lahze451,x4_lahze451
                x1_lahze452,x2_lahze452,x3_lahze452,x4_lahze452
                x1_lahze453,x2_lahze453,x3_lahze453,x4_lahze453
                x1_lahze454,x2_lahze454,x3_lahze454,x4_lahze454
                x1_lahze455,x2_lahze455,x3_lahze455,x4_lahze455
                x1_lahze456,x2_lahze456,x3_lahze456,x4_lahze456
                x1_lahze457,x2_lahze457,x3_lahze457,x4_lahze457
                x1_lahze458,x2_lahze458,x3_lahze458,x4_lahze458
                x1_lahze459,x2_lahze459,x3_lahze459,x4_lahze459
                x1_lahze460,x2_lahze460,x3_lahze460,x4_lahze460
                x1_lahze461,x2_lahze461,x3_lahze461,x4_lahze461
                x1_lahze462,x2_lahze462,x3_lahze462,x4_lahze462
                x1_lahze463,x2_lahze463,x3_lahze463,x4_lahze463
                x1_lahze464,x2_lahze464,x3_lahze464,x4_lahze464
                x1_lahze465,x2_lahze465,x3_lahze465,x4_lahze465
                x1_lahze466,x2_lahze466,x3_lahze466,x4_lahze466
                x1_lahze467,x2_lahze467,x3_lahze467,x4_lahze467
                x1_lahze468,x2_lahze468,x3_lahze468,x4_lahze468
                x1_lahze469,x2_lahze469,x3_lahze469,x4_lahze469
                x1_lahze470,x2_lahze470,x3_lahze470,x4_lahze470
                x1_lahze471,x2_lahze471,x3_lahze471,x4_lahze471
                x1_lahze472,x2_lahze472,x3_lahze472,x4_lahze472
                x1_lahze473,x2_lahze473,x3_lahze473,x4_lahze473
                x1_lahze474,x2_lahze474,x3_lahze474,x4_lahze474
                x1_lahze475,x2_lahze475,x3_lahze475,x4_lahze475
                x1_lahze476,x2_lahze476,x3_lahze476,x4_lahze476
                x1_lahze477,x2_lahze477,x3_lahze477,x4_lahze477
                x1_lahze478,x2_lahze478,x3_lahze478,x4_lahze478
                x1_lahze479,x2_lahze479,x3_lahze479,x4_lahze479
                x1_lahze480,x2_lahze480,x3_lahze480,x4_lahze480
                x1_lahze481,x2_lahze481,x3_lahze481,x4_lahze481
                x1_lahze482,x2_lahze482,x3_lahze482,x4_lahze482
                x1_lahze483,x2_lahze483,x3_lahze483,x4_lahze483
                x1_lahze484,x2_lahze484,x3_lahze484,x4_lahze484
                x1_lahze485,x2_lahze485,x3_lahze485,x4_lahze485
                x1_lahze486,x2_lahze486,x3_lahze486,x4_lahze486
                x1_lahze487,x2_lahze487,x3_lahze487,x4_lahze487
                x1_lahze488,x2_lahze488,x3_lahze488,x4_lahze488
                x1_lahze489,x2_lahze489,x3_lahze489,x4_lahze489
                x1_lahze490,x2_lahze490,x3_lahze490,x4_lahze490
                x1_lahze491,x2_lahze491,x3_lahze491,x4_lahze491
                x1_lahze492,x2_lahze492,x3_lahze492,x4_lahze492
                x1_lahze493,x2_lahze493,x3_lahze493,x4_lahze493
                x1_lahze494,x2_lahze494,x3_lahze494,x4_lahze494
                x1_lahze495,x2_lahze495,x3_lahze495,x4_lahze495
                x1_lahze496,x2_lahze496,x3_lahze496,x4_lahze496
                x1_lahze497,x2_lahze497,x3_lahze497,x4_lahze497
                x1_lahze498,x2_lahze498,x3_lahze498,x4_lahze498
                x1_lahze499,x2_lahze499,x3_lahze499,x4_lahze499
                x1_lahze500,x2_lahze500,x3_lahze500,x4_lahze500
                x1_lahze501,x2_lahze501,x3_lahze501,x4_lahze501
                x1_lahze502,x2_lahze502,x3_lahze502,x4_lahze502
                x1_lahze503,x2_lahze503,x3_lahze503,x4_lahze503
                x1_lahze504,x2_lahze504,x3_lahze504,x4_lahze504
                x1_lahze505,x2_lahze505,x3_lahze505,x4_lahze505
                x1_lahze506,x2_lahze506,x3_lahze506,x4_lahze506
                x1_lahze507,x2_lahze507,x3_lahze507,x4_lahze507
                x1_lahze508,x2_lahze508,x3_lahze508,x4_lahze508
                x1_lahze509,x2_lahze509,x3_lahze509,x4_lahze509
                x1_lahze510,x2_lahze510,x3_lahze510,x4_lahze510
                x1_lahze511,x2_lahze511,x3_lahze511,x4_lahze511
                x1_lahze512,x2_lahze512,x3_lahze512,x4_lahze512
                x1_lahze513,x2_lahze513,x3_lahze513,x4_lahze513
                x1_lahze514,x2_lahze514,x3_lahze514,x4_lahze514
                x1_lahze515,x2_lahze515,x3_lahze515,x4_lahze515
                x1_lahze516,x2_lahze516,x3_lahze516,x4_lahze516
                x1_lahze517,x2_lahze517,x3_lahze517,x4_lahze517
                x1_lahze518,x2_lahze518,x3_lahze518,x4_lahze518
                x1_lahze519,x2_lahze519,x3_lahze519,x4_lahze519
                x1_lahze520,x2_lahze520,x3_lahze520,x4_lahze520
                x1_lahze521,x2_lahze521,x3_lahze521,x4_lahze521
                x1_lahze522,x2_lahze522,x3_lahze522,x4_lahze522
                x1_lahze523,x2_lahze523,x3_lahze523,x4_lahze523
                x1_lahze524,x2_lahze524,x3_lahze524,x4_lahze524
                x1_lahze525,x2_lahze525,x3_lahze525,x4_lahze525
                x1_lahze526,x2_lahze526,x3_lahze526,x4_lahze526
                x1_lahze527,x2_lahze527,x3_lahze527,x4_lahze527
                x1_lahze528,x2_lahze528,x3_lahze528,x4_lahze528
                x1_lahze529,x2_lahze529,x3_lahze529,x4_lahze529
                x1_lahze530,x2_lahze530,x3_lahze530,x4_lahze530
                x1_lahze531,x2_lahze531,x3_lahze531,x4_lahze531
                x1_lahze532,x2_lahze532,x3_lahze532,x4_lahze532
                x1_lahze533,x2_lahze533,x3_lahze533,x4_lahze533
                x1_lahze534,x2_lahze534,x3_lahze534,x4_lahze534
                x1_lahze535,x2_lahze535,x3_lahze535,x4_lahze535
                x1_lahze536,x2_lahze536,x3_lahze536,x4_lahze536
                x1_lahze537,x2_lahze537,x3_lahze537,x4_lahze537
                x1_lahze538,x2_lahze538,x3_lahze538,x4_lahze538
                x1_lahze539,x2_lahze539,x3_lahze539,x4_lahze539
                x1_lahze540,x2_lahze540,x3_lahze540,x4_lahze540
                x1_lahze541,x2_lahze541,x3_lahze541,x4_lahze541
                x1_lahze542,x2_lahze542,x3_lahze542,x4_lahze542
                x1_lahze543,x2_lahze543,x3_lahze543,x4_lahze543
                x1_lahze544,x2_lahze544,x3_lahze544,x4_lahze544
                x1_lahze545,x2_lahze545,x3_lahze545,x4_lahze545
                x1_lahze546,x2_lahze546,x3_lahze546,x4_lahze546
                x1_lahze547,x2_lahze547,x3_lahze547,x4_lahze547
                x1_lahze548,x2_lahze548,x3_lahze548,x4_lahze548
                x1_lahze549,x2_lahze549,x3_lahze549,x4_lahze549
                x1_lahze550,x2_lahze550,x3_lahze550,x4_lahze550
                x1_lahze551,x2_lahze551,x3_lahze551,x4_lahze551
                x1_lahze552,x2_lahze552,x3_lahze552,x4_lahze552
                x1_lahze553,x2_lahze553,x3_lahze553,x4_lahze553
                x1_lahze554,x2_lahze554,x3_lahze554,x4_lahze554
                x1_lahze555,x2_lahze555,x3_lahze555,x4_lahze555
                x1_lahze556,x2_lahze556,x3_lahze556,x4_lahze556
                x1_lahze557,x2_lahze557,x3_lahze557,x4_lahze557
                x1_lahze558,x2_lahze558,x3_lahze558,x4_lahze558
                x1_lahze559,x2_lahze559,x3_lahze559,x4_lahze559
                x1_lahze560,x2_lahze560,x3_lahze560,x4_lahze560
                x1_lahze561,x2_lahze561,x3_lahze561,x4_lahze561
                x1_lahze562,x2_lahze562,x3_lahze562,x4_lahze562
                x1_lahze563,x2_lahze563,x3_lahze563,x4_lahze563
                x1_lahze564,x2_lahze564,x3_lahze564,x4_lahze564
                x1_lahze565,x2_lahze565,x3_lahze565,x4_lahze565
                x1_lahze566,x2_lahze566,x3_lahze566,x4_lahze566
                x1_lahze567,x2_lahze567,x3_lahze567,x4_lahze567
                x1_lahze568,x2_lahze568,x3_lahze568,x4_lahze568
                x1_lahze569,x2_lahze569,x3_lahze569,x4_lahze569
                x1_lahze570,x2_lahze570,x3_lahze570,x4_lahze570
                x1_lahze571,x2_lahze571,x3_lahze571,x4_lahze571
                x1_lahze572,x2_lahze572,x3_lahze572,x4_lahze572
                x1_lahze573,x2_lahze573,x3_lahze573,x4_lahze573
                x1_lahze574,x2_lahze574,x3_lahze574,x4_lahze574
                x1_lahze575,x2_lahze575,x3_lahze575,x4_lahze575
                x1_lahze576,x2_lahze576,x3_lahze576,x4_lahze576
                x1_lahze577,x2_lahze577,x3_lahze577,x4_lahze577
                x1_lahze578,x2_lahze578,x3_lahze578,x4_lahze578
                x1_lahze579,x2_lahze579,x3_lahze579,x4_lahze579
                x1_lahze580,x2_lahze580,x3_lahze580,x4_lahze580
                x1_lahze581,x2_lahze581,x3_lahze581,x4_lahze581
                x1_lahze582,x2_lahze582,x3_lahze582,x4_lahze582
                x1_lahze583,x2_lahze583,x3_lahze583,x4_lahze583
                x1_lahze584,x2_lahze584,x3_lahze584,x4_lahze584
                x1_lahze585,x2_lahze585,x3_lahze585,x4_lahze585
                x1_lahze586,x2_lahze586,x3_lahze586,x4_lahze586
                x1_lahze587,x2_lahze587,x3_lahze587,x4_lahze587
                x1_lahze588,x2_lahze588,x3_lahze588,x4_lahze588
                x1_lahze589,x2_lahze589,x3_lahze589,x4_lahze589
                x1_lahze590,x2_lahze590,x3_lahze590,x4_lahze590
                x1_lahze591,x2_lahze591,x3_lahze591,x4_lahze591
                x1_lahze592,x2_lahze592,x3_lahze592,x4_lahze592
                x1_lahze593,x2_lahze593,x3_lahze593,x4_lahze593
                x1_lahze594,x2_lahze594,x3_lahze594,x4_lahze594
                x1_lahze595,x2_lahze595,x3_lahze595,x4_lahze595
                x1_lahze596,x2_lahze596,x3_lahze596,x4_lahze596
                x1_lahze597,x2_lahze597,x3_lahze597,x4_lahze597
                x1_lahze598,x2_lahze598,x3_lahze598,x4_lahze598
                x1_lahze599,x2_lahze599,x3_lahze599,x4_lahze599
                x1_lahze600,x2_lahze600,x3_lahze600,x4_lahze600
                x1_lahze601,x2_lahze601,x3_lahze601,x4_lahze601
                x1_lahze602,x2_lahze602,x3_lahze602,x4_lahze602
                x1_lahze603,x2_lahze603,x3_lahze603,x4_lahze603
                x1_lahze604,x2_lahze604,x3_lahze604,x4_lahze604
                x1_lahze605,x2_lahze605,x3_lahze605,x4_lahze605
                x1_lahze606,x2_lahze606,x3_lahze606,x4_lahze606
                x1_lahze607,x2_lahze607,x3_lahze607,x4_lahze607
                x1_lahze608,x2_lahze608,x3_lahze608,x4_lahze608
                x1_lahze609,x2_lahze609,x3_lahze609,x4_lahze609
                x1_lahze610,x2_lahze610,x3_lahze610,x4_lahze610
                x1_lahze611,x2_lahze611,x3_lahze611,x4_lahze611
                x1_lahze612,x2_lahze612,x3_lahze612,x4_lahze612
                x1_lahze613,x2_lahze613,x3_lahze613,x4_lahze613
                x1_lahze614,x2_lahze614,x3_lahze614,x4_lahze614
                x1_lahze615,x2_lahze615,x3_lahze615,x4_lahze615
                x1_lahze616,x2_lahze616,x3_lahze616,x4_lahze616
                x1_lahze617,x2_lahze617,x3_lahze617,x4_lahze617
                x1_lahze618,x2_lahze618,x3_lahze618,x4_lahze618
                x1_lahze619,x2_lahze619,x3_lahze619,x4_lahze619
                x1_lahze620,x2_lahze620,x3_lahze620,x4_lahze620
                x1_lahze621,x2_lahze621,x3_lahze621,x4_lahze621
                x1_lahze622,x2_lahze622,x3_lahze622,x4_lahze622
                x1_lahze623,x2_lahze623,x3_lahze623,x4_lahze623
                x1_lahze624,x2_lahze624,x3_lahze624,x4_lahze624
                x1_lahze625,x2_lahze625,x3_lahze625,x4_lahze625
                x1_lahze626,x2_lahze626,x3_lahze626,x4_lahze626
                x1_lahze627,x2_lahze627,x3_lahze627,x4_lahze627
                x1_lahze628,x2_lahze628,x3_lahze628,x4_lahze628
                x1_lahze629,x2_lahze629,x3_lahze629,x4_lahze629
                x1_lahze630,x2_lahze630,x3_lahze630,x4_lahze630
                x1_lahze631,x2_lahze631,x3_lahze631,x4_lahze631
                x1_lahze632,x2_lahze632,x3_lahze632,x4_lahze632
                x1_lahze633,x2_lahze633,x3_lahze633,x4_lahze633
                x1_lahze634,x2_lahze634,x3_lahze634,x4_lahze634
                x1_lahze635,x2_lahze635,x3_lahze635,x4_lahze635
                x1_lahze636,x2_lahze636,x3_lahze636,x4_lahze636
                x1_lahze637,x2_lahze637,x3_lahze637,x4_lahze637
                x1_lahze638,x2_lahze638,x3_lahze638,x4_lahze638
                x1_lahze639,x2_lahze639,x3_lahze639,x4_lahze639
                x1_lahze640,x2_lahze640,x3_lahze640,x4_lahze640
                x1_lahze641,x2_lahze641,x3_lahze641,x4_lahze641
                x1_lahze642,x2_lahze642,x3_lahze642,x4_lahze642
                x1_lahze643,x2_lahze643,x3_lahze643,x4_lahze643
                x1_lahze644,x2_lahze644,x3_lahze644,x4_lahze644
                x1_lahze645,x2_lahze645,x3_lahze645,x4_lahze645
                x1_lahze646,x2_lahze646,x3_lahze646,x4_lahze646
                x1_lahze647,x2_lahze647,x3_lahze647,x4_lahze647
                x1_lahze648,x2_lahze648,x3_lahze648,x4_lahze648
                x1_lahze649,x2_lahze649,x3_lahze649,x4_lahze649
                x1_lahze650,x2_lahze650,x3_lahze650,x4_lahze650
                x1_lahze651,x2_lahze651,x3_lahze651,x4_lahze651
                x1_lahze652,x2_lahze652,x3_lahze652,x4_lahze652
                x1_lahze653,x2_lahze653,x3_lahze653,x4_lahze653
                x1_lahze654,x2_lahze654,x3_lahze654,x4_lahze654
                x1_lahze655,x2_lahze655,x3_lahze655,x4_lahze655
                x1_lahze656,x2_lahze656,x3_lahze656,x4_lahze656
                x1_lahze657,x2_lahze657,x3_lahze657,x4_lahze657
                x1_lahze658,x2_lahze658,x3_lahze658,x4_lahze658
                x1_lahze659,x2_lahze659,x3_lahze659,x4_lahze659
                x1_lahze660,x2_lahze660,x3_lahze660,x4_lahze660
                x1_lahze661,x2_lahze661,x3_lahze661,x4_lahze661
                x1_lahze662,x2_lahze662,x3_lahze662,x4_lahze662
                x1_lahze663,x2_lahze663,x3_lahze663,x4_lahze663
                x1_lahze664,x2_lahze664,x3_lahze664,x4_lahze664
                x1_lahze665,x2_lahze665,x3_lahze665,x4_lahze665
                x1_lahze666,x2_lahze666,x3_lahze666,x4_lahze666
                x1_lahze667,x2_lahze667,x3_lahze667,x4_lahze667
                x1_lahze668,x2_lahze668,x3_lahze668,x4_lahze668
                x1_lahze669,x2_lahze669,x3_lahze669,x4_lahze669
                x1_lahze670,x2_lahze670,x3_lahze670,x4_lahze670
                x1_lahze671,x2_lahze671,x3_lahze671,x4_lahze671
                x1_lahze672,x2_lahze672,x3_lahze672,x4_lahze672
                x1_lahze673,x2_lahze673,x3_lahze673,x4_lahze673
                x1_lahze674,x2_lahze674,x3_lahze674,x4_lahze674
                x1_lahze675,x2_lahze675,x3_lahze675,x4_lahze675
                x1_lahze676,x2_lahze676,x3_lahze676,x4_lahze676
                x1_lahze677,x2_lahze677,x3_lahze677,x4_lahze677
                x1_lahze678,x2_lahze678,x3_lahze678,x4_lahze678
                x1_lahze679,x2_lahze679,x3_lahze679,x4_lahze679
                x1_lahze680,x2_lahze680,x3_lahze680,x4_lahze680
                x1_lahze681,x2_lahze681,x3_lahze681,x4_lahze681
                x1_lahze682,x2_lahze682,x3_lahze682,x4_lahze682
                x1_lahze683,x2_lahze683,x3_lahze683,x4_lahze683
                x1_lahze684,x2_lahze684,x3_lahze684,x4_lahze684
                x1_lahze685,x2_lahze685,x3_lahze685,x4_lahze685
                x1_lahze686,x2_lahze686,x3_lahze686,x4_lahze686
                x1_lahze687,x2_lahze687,x3_lahze687,x4_lahze687
                x1_lahze688,x2_lahze688,x3_lahze688,x4_lahze688
                x1_lahze689,x2_lahze689,x3_lahze689,x4_lahze689
                x1_lahze690,x2_lahze690,x3_lahze690,x4_lahze690
                x1_lahze691,x2_lahze691,x3_lahze691,x4_lahze691
                x1_lahze692,x2_lahze692,x3_lahze692,x4_lahze692
                x1_lahze693,x2_lahze693,x3_lahze693,x4_lahze693
                x1_lahze694,x2_lahze694,x3_lahze694,x4_lahze694
                x1_lahze695,x2_lahze695,x3_lahze695,x4_lahze695
                x1_lahze696,x2_lahze696,x3_lahze696,x4_lahze696
                x1_lahze697,x2_lahze697,x3_lahze697,x4_lahze697
                x1_lahze698,x2_lahze698,x3_lahze698,x4_lahze698
                x1_lahze699,x2_lahze699,x3_lahze699,x4_lahze699
                x1_lahze700,x2_lahze700,x3_lahze700,x4_lahze700
                x1_lahze701,x2_lahze701,x3_lahze701,x4_lahze701
                x1_lahze702,x2_lahze702,x3_lahze702,x4_lahze702
                x1_lahze703,x2_lahze703,x3_lahze703,x4_lahze703
                x1_lahze704,x2_lahze704,x3_lahze704,x4_lahze704
                x1_lahze705,x2_lahze705,x3_lahze705,x4_lahze705
                x1_lahze706,x2_lahze706,x3_lahze706,x4_lahze706
                x1_lahze707,x2_lahze707,x3_lahze707,x4_lahze707
                x1_lahze708,x2_lahze708,x3_lahze708,x4_lahze708
                x1_lahze709,x2_lahze709,x3_lahze709,x4_lahze709
                x1_lahze710,x2_lahze710,x3_lahze710,x4_lahze710
                x1_lahze711,x2_lahze711,x3_lahze711,x4_lahze711
                x1_lahze712,x2_lahze712,x3_lahze712,x4_lahze712
                x1_lahze713,x2_lahze713,x3_lahze713,x4_lahze713
                x1_lahze714,x2_lahze714,x3_lahze714,x4_lahze714
                x1_lahze715,x2_lahze715,x3_lahze715,x4_lahze715
                x1_lahze716,x2_lahze716,x3_lahze716,x4_lahze716
                x1_lahze717,x2_lahze717,x3_lahze717,x4_lahze717
                x1_lahze718,x2_lahze718,x3_lahze718,x4_lahze718
                x1_lahze719,x2_lahze719,x3_lahze719,x4_lahze719
                x1_lahze720,x2_lahze720,x3_lahze720,x4_lahze720
                x1_lahze721,x2_lahze721,x3_lahze721,x4_lahze721
                x1_lahze722,x2_lahze722,x3_lahze722,x4_lahze722
                x1_lahze723,x2_lahze723,x3_lahze723,x4_lahze723
                x1_lahze724,x2_lahze724,x3_lahze724,x4_lahze724
                x1_lahze725,x2_lahze725,x3_lahze725,x4_lahze725
                x1_lahze726,x2_lahze726,x3_lahze726,x4_lahze726
                x1_lahze727,x2_lahze727,x3_lahze727,x4_lahze727
                x1_lahze728,x2_lahze728,x3_lahze728,x4_lahze728
                x1_lahze729,x2_lahze729,x3_lahze729,x4_lahze729
                x1_lahze730,x2_lahze730,x3_lahze730,x4_lahze730
                x1_lahze731,x2_lahze731,x3_lahze731,x4_lahze731
                x1_lahze732,x2_lahze732,x3_lahze732,x4_lahze732
                x1_lahze733,x2_lahze733,x3_lahze733,x4_lahze733
                x1_lahze734,x2_lahze734,x3_lahze734,x4_lahze734
                x1_lahze735,x2_lahze735,x3_lahze735,x4_lahze735
                x1_lahze736,x2_lahze736,x3_lahze736,x4_lahze736
                x1_lahze737,x2_lahze737,x3_lahze737,x4_lahze737
                x1_lahze738,x2_lahze738,x3_lahze738,x4_lahze738
                x1_lahze739,x2_lahze739,x3_lahze739,x4_lahze739
                x1_lahze740,x2_lahze740,x3_lahze740,x4_lahze740
                x1_lahze741,x2_lahze741,x3_lahze741,x4_lahze741
                x1_lahze742,x2_lahze742,x3_lahze742,x4_lahze742
                x1_lahze743,x2_lahze743,x3_lahze743,x4_lahze743
                x1_lahze744,x2_lahze744,x3_lahze744,x4_lahze744
                x1_lahze745,x2_lahze745,x3_lahze745,x4_lahze745
                x1_lahze746,x2_lahze746,x3_lahze746,x4_lahze746
                x1_lahze747,x2_lahze747,x3_lahze747,x4_lahze747
                x1_lahze748,x2_lahze748,x3_lahze748,x4_lahze748
                x1_lahze749,x2_lahze749,x3_lahze749,x4_lahze749
                x1_lahze750,x2_lahze750,x3_lahze750,x4_lahze750
                x1_lahze751,x2_lahze751,x3_lahze751,x4_lahze751
                x1_lahze752,x2_lahze752,x3_lahze752,x4_lahze752
                x1_lahze753,x2_lahze753,x3_lahze753,x4_lahze753
                x1_lahze754,x2_lahze754,x3_lahze754,x4_lahze754
                x1_lahze755,x2_lahze755,x3_lahze755,x4_lahze755
                x1_lahze756,x2_lahze756,x3_lahze756,x4_lahze756
                x1_lahze757,x2_lahze757,x3_lahze757,x4_lahze757
                x1_lahze758,x2_lahze758,x3_lahze758,x4_lahze758
                x1_lahze759,x2_lahze759,x3_lahze759,x4_lahze759
                x1_lahze760,x2_lahze760,x3_lahze760,x4_lahze760
                x1_lahze761,x2_lahze761,x3_lahze761,x4_lahze761
                x1_lahze762,x2_lahze762,x3_lahze762,x4_lahze762
                x1_lahze763,x2_lahze763,x3_lahze763,x4_lahze763
                x1_lahze764,x2_lahze764,x3_lahze764,x4_lahze764
                x1_lahze765,x2_lahze765,x3_lahze765,x4_lahze765
                x1_lahze766,x2_lahze766,x3_lahze766,x4_lahze766
                x1_lahze767,x2_lahze767,x3_lahze767,x4_lahze767
                x1_lahze768,x2_lahze768,x3_lahze768,x4_lahze768
                x1_lahze769,x2_lahze769,x3_lahze769,x4_lahze769
                x1_lahze770,x2_lahze770,x3_lahze770,x4_lahze770
                x1_lahze771,x2_lahze771,x3_lahze771,x4_lahze771
                x1_lahze772,x2_lahze772,x3_lahze772,x4_lahze772
                x1_lahze773,x2_lahze773,x3_lahze773,x4_lahze773
                x1_lahze774,x2_lahze774,x3_lahze774,x4_lahze774
                x1_lahze775,x2_lahze775,x3_lahze775,x4_lahze775
                x1_lahze776,x2_lahze776,x3_lahze776,x4_lahze776
                x1_lahze777,x2_lahze777,x3_lahze777,x4_lahze777
                x1_lahze778,x2_lahze778,x3_lahze778,x4_lahze778
                x1_lahze779,x2_lahze779,x3_lahze779,x4_lahze779
                x1_lahze780,x2_lahze780,x3_lahze780,x4_lahze780
                x1_lahze781,x2_lahze781,x3_lahze781,x4_lahze781
                x1_lahze782,x2_lahze782,x3_lahze782,x4_lahze782
                x1_lahze783,x2_lahze783,x3_lahze783,x4_lahze783
                x1_lahze784,x2_lahze784,x3_lahze784,x4_lahze784
                x1_lahze785,x2_lahze785,x3_lahze785,x4_lahze785
                x1_lahze786,x2_lahze786,x3_lahze786,x4_lahze786
                x1_lahze787,x2_lahze787,x3_lahze787,x4_lahze787
                x1_lahze788,x2_lahze788,x3_lahze788,x4_lahze788
                x1_lahze789,x2_lahze789,x3_lahze789,x4_lahze789
                x1_lahze790,x2_lahze790,x3_lahze790,x4_lahze790
                x1_lahze791,x2_lahze791,x3_lahze791,x4_lahze791
                x1_lahze792,x2_lahze792,x3_lahze792,x4_lahze792
                x1_lahze793,x2_lahze793,x3_lahze793,x4_lahze793
                x1_lahze794,x2_lahze794,x3_lahze794,x4_lahze794
                x1_lahze795,x2_lahze795,x3_lahze795,x4_lahze795
                x1_lahze796,x2_lahze796,x3_lahze796,x4_lahze796
                x1_lahze797,x2_lahze797,x3_lahze797,x4_lahze797
                x1_lahze798,x2_lahze798,x3_lahze798,x4_lahze798
                x1_lahze799,x2_lahze799,x3_lahze799,x4_lahze799
                x1_lahze800,x2_lahze800,x3_lahze800,x4_lahze800
                x1_lahze801,x2_lahze801,x3_lahze801,x4_lahze801
                x1_lahze802,x2_lahze802,x3_lahze802,x4_lahze802
                x1_lahze803,x2_lahze803,x3_lahze803,x4_lahze803
                x1_lahze804,x2_lahze804,x3_lahze804,x4_lahze804
                x1_lahze805,x2_lahze805,x3_lahze805,x4_lahze805
                x1_lahze806,x2_lahze806,x3_lahze806,x4_lahze806
                x1_lahze807,x2_lahze807,x3_lahze807,x4_lahze807
                x1_lahze808,x2_lahze808,x3_lahze808,x4_lahze808
                x1_lahze809,x2_lahze809,x3_lahze809,x4_lahze809
                x1_lahze810,x2_lahze810,x3_lahze810,x4_lahze810
                x1_lahze811,x2_lahze811,x3_lahze811,x4_lahze811
                x1_lahze812,x2_lahze812,x3_lahze812,x4_lahze812
                x1_lahze813,x2_lahze813,x3_lahze813,x4_lahze813
                x1_lahze814,x2_lahze814,x3_lahze814,x4_lahze814
                x1_lahze815,x2_lahze815,x3_lahze815,x4_lahze815
                x1_lahze816,x2_lahze816,x3_lahze816,x4_lahze816
                x1_lahze817,x2_lahze817,x3_lahze817,x4_lahze817
                x1_lahze818,x2_lahze818,x3_lahze818,x4_lahze818
                x1_lahze819,x2_lahze819,x3_lahze819,x4_lahze819
                x1_lahze820,x2_lahze820,x3_lahze820,x4_lahze820
                x1_lahze821,x2_lahze821,x3_lahze821,x4_lahze821
                x1_lahze822,x2_lahze822,x3_lahze822,x4_lahze822
                x1_lahze823,x2_lahze823,x3_lahze823,x4_lahze823
                x1_lahze824,x2_lahze824,x3_lahze824,x4_lahze824
                x1_lahze825,x2_lahze825,x3_lahze825,x4_lahze825
                x1_lahze826,x2_lahze826,x3_lahze826,x4_lahze826
                x1_lahze827,x2_lahze827,x3_lahze827,x4_lahze827
                x1_lahze828,x2_lahze828,x3_lahze828,x4_lahze828
                x1_lahze829,x2_lahze829,x3_lahze829,x4_lahze829
                x1_lahze830,x2_lahze830,x3_lahze830,x4_lahze830
                x1_lahze831,x2_lahze831,x3_lahze831,x4_lahze831
                x1_lahze832,x2_lahze832,x3_lahze832,x4_lahze832
                x1_lahze833,x2_lahze833,x3_lahze833,x4_lahze833
                x1_lahze834,x2_lahze834,x3_lahze834,x4_lahze834
                x1_lahze835,x2_lahze835,x3_lahze835,x4_lahze835
                x1_lahze836,x2_lahze836,x3_lahze836,x4_lahze836
                x1_lahze837,x2_lahze837,x3_lahze837,x4_lahze837
                x1_lahze838,x2_lahze838,x3_lahze838,x4_lahze838
                x1_lahze839,x2_lahze839,x3_lahze839,x4_lahze839
                x1_lahze840,x2_lahze840,x3_lahze840,x4_lahze840
                x1_lahze841,x2_lahze841,x3_lahze841,x4_lahze841
                x1_lahze842,x2_lahze842,x3_lahze842,x4_lahze842
                x1_lahze843,x2_lahze843,x3_lahze843,x4_lahze843
                x1_lahze844,x2_lahze844,x3_lahze844,x4_lahze844
                x1_lahze845,x2_lahze845,x3_lahze845,x4_lahze845
                x1_lahze846,x2_lahze846,x3_lahze846,x4_lahze846
                x1_lahze847,x2_lahze847,x3_lahze847,x4_lahze847
                x1_lahze848,x2_lahze848,x3_lahze848,x4_lahze848
                x1_lahze849,x2_lahze849,x3_lahze849,x4_lahze849
                x1_lahze850,x2_lahze850,x3_lahze850,x4_lahze850
                x1_lahze851,x2_lahze851,x3_lahze851,x4_lahze851
                x1_lahze852,x2_lahze852,x3_lahze852,x4_lahze852
                x1_lahze853,x2_lahze853,x3_lahze853,x4_lahze853
                x1_lahze854,x2_lahze854,x3_lahze854,x4_lahze854
                x1_lahze855,x2_lahze855,x3_lahze855,x4_lahze855
                x1_lahze856,x2_lahze856,x3_lahze856,x4_lahze856
                x1_lahze857,x2_lahze857,x3_lahze857,x4_lahze857
                x1_lahze858,x2_lahze858,x3_lahze858,x4_lahze858
                x1_lahze859,x2_lahze859,x3_lahze859,x4_lahze859
                x1_lahze860,x2_lahze860,x3_lahze860,x4_lahze860
                x1_lahze861,x2_lahze861,x3_lahze861,x4_lahze861
                x1_lahze862,x2_lahze862,x3_lahze862,x4_lahze862
                x1_lahze863,x2_lahze863,x3_lahze863,x4_lahze863
                x1_lahze864,x2_lahze864,x3_lahze864,x4_lahze864
                x1_lahze865,x2_lahze865,x3_lahze865,x4_lahze865
                x1_lahze866,x2_lahze866,x3_lahze866,x4_lahze866
                x1_lahze867,x2_lahze867,x3_lahze867,x4_lahze867
                x1_lahze868,x2_lahze868,x3_lahze868,x4_lahze868
                x1_lahze869,x2_lahze869,x3_lahze869,x4_lahze869
                x1_lahze870,x2_lahze870,x3_lahze870,x4_lahze870
                x1_lahze871,x2_lahze871,x3_lahze871,x4_lahze871
                x1_lahze872,x2_lahze872,x3_lahze872,x4_lahze872
                x1_lahze873,x2_lahze873,x3_lahze873,x4_lahze873
                x1_lahze874,x2_lahze874,x3_lahze874,x4_lahze874
                x1_lahze875,x2_lahze875,x3_lahze875,x4_lahze875
                x1_lahze876,x2_lahze876,x3_lahze876,x4_lahze876
                x1_lahze877,x2_lahze877,x3_lahze877,x4_lahze877
                x1_lahze878,x2_lahze878,x3_lahze878,x4_lahze878
                x1_lahze879,x2_lahze879,x3_lahze879,x4_lahze879
                x1_lahze880,x2_lahze880,x3_lahze880,x4_lahze880
                x1_lahze881,x2_lahze881,x3_lahze881,x4_lahze881
                x1_lahze882,x2_lahze882,x3_lahze882,x4_lahze882
                x1_lahze883,x2_lahze883,x3_lahze883,x4_lahze883
                x1_lahze884,x2_lahze884,x3_lahze884,x4_lahze884
                x1_lahze885,x2_lahze885,x3_lahze885,x4_lahze885
                x1_lahze886,x2_lahze886,x3_lahze886,x4_lahze886
                x1_lahze887,x2_lahze887,x3_lahze887,x4_lahze887
                x1_lahze888,x2_lahze888,x3_lahze888,x4_lahze888
                x1_lahze889,x2_lahze889,x3_lahze889,x4_lahze889
                x1_lahze890,x2_lahze890,x3_lahze890,x4_lahze890
                x1_lahze891,x2_lahze891,x3_lahze891,x4_lahze891
                x1_lahze892,x2_lahze892,x3_lahze892,x4_lahze892
                x1_lahze893,x2_lahze893,x3_lahze893,x4_lahze893
                x1_lahze894,x2_lahze894,x3_lahze894,x4_lahze894
                x1_lahze895,x2_lahze895,x3_lahze895,x4_lahze895
                x1_lahze896,x2_lahze896,x3_lahze896,x4_lahze896
                x1_lahze897,x2_lahze897,x3_lahze897,x4_lahze897
                x1_lahze898,x2_lahze898,x3_lahze898,x4_lahze898
                x1_lahze899,x2_lahze899,x3_lahze899,x4_lahze899
                x1_lahze900,x2_lahze900,x3_lahze900,x4_lahze900
                x1_lahze901,x2_lahze901,x3_lahze901,x4_lahze901
                x1_lahze902,x2_lahze902,x3_lahze902,x4_lahze902
                x1_lahze903,x2_lahze903,x3_lahze903,x4_lahze903
                x1_lahze904,x2_lahze904,x3_lahze904,x4_lahze904
                x1_lahze905,x2_lahze905,x3_lahze905,x4_lahze905
                x1_lahze906,x2_lahze906,x3_lahze906,x4_lahze906
                x1_lahze907,x2_lahze907,x3_lahze907,x4_lahze907
                x1_lahze908,x2_lahze908,x3_lahze908,x4_lahze908
                x1_lahze909,x2_lahze909,x3_lahze909,x4_lahze909
                x1_lahze910,x2_lahze910,x3_lahze910,x4_lahze910
                x1_lahze911,x2_lahze911,x3_lahze911,x4_lahze911
                x1_lahze912,x2_lahze912,x3_lahze912,x4_lahze912
                x1_lahze913,x2_lahze913,x3_lahze913,x4_lahze913
                x1_lahze914,x2_lahze914,x3_lahze914,x4_lahze914
                x1_lahze915,x2_lahze915,x3_lahze915,x4_lahze915
                x1_lahze916,x2_lahze916,x3_lahze916,x4_lahze916
                x1_lahze917,x2_lahze917,x3_lahze917,x4_lahze917
                x1_lahze918,x2_lahze918,x3_lahze918,x4_lahze918
                x1_lahze919,x2_lahze919,x3_lahze919,x4_lahze919
                x1_lahze920,x2_lahze920,x3_lahze920,x4_lahze920
                x1_lahze921,x2_lahze921,x3_lahze921,x4_lahze921
                x1_lahze922,x2_lahze922,x3_lahze922,x4_lahze922
                x1_lahze923,x2_lahze923,x3_lahze923,x4_lahze923
                x1_lahze924,x2_lahze924,x3_lahze924,x4_lahze924
                x1_lahze925,x2_lahze925,x3_lahze925,x4_lahze925
                x1_lahze926,x2_lahze926,x3_lahze926,x4_lahze926
                x1_lahze927,x2_lahze927,x3_lahze927,x4_lahze927
                x1_lahze928,x2_lahze928,x3_lahze928,x4_lahze928
                x1_lahze929,x2_lahze929,x3_lahze929,x4_lahze929
                x1_lahze930,x2_lahze930,x3_lahze930,x4_lahze930
                x1_lahze931,x2_lahze931,x3_lahze931,x4_lahze931
                x1_lahze932,x2_lahze932,x3_lahze932,x4_lahze932
                x1_lahze933,x2_lahze933,x3_lahze933,x4_lahze933
                x1_lahze934,x2_lahze934,x3_lahze934,x4_lahze934
                x1_lahze935,x2_lahze935,x3_lahze935,x4_lahze935
                x1_lahze936,x2_lahze936,x3_lahze936,x4_lahze936
                x1_lahze937,x2_lahze937,x3_lahze937,x4_lahze937
                x1_lahze938,x2_lahze938,x3_lahze938,x4_lahze938
                x1_lahze939,x2_lahze939,x3_lahze939,x4_lahze939
                x1_lahze940,x2_lahze940,x3_lahze940,x4_lahze940
                x1_lahze941,x2_lahze941,x3_lahze941,x4_lahze941
                x1_lahze942,x2_lahze942,x3_lahze942,x4_lahze942
                x1_lahze943,x2_lahze943,x3_lahze943,x4_lahze943
                x1_lahze944,x2_lahze944,x3_lahze944,x4_lahze944
                x1_lahze945,x2_lahze945,x3_lahze945,x4_lahze945
                x1_lahze946,x2_lahze946,x3_lahze946,x4_lahze946
                x1_lahze947,x2_lahze947,x3_lahze947,x4_lahze947
                x1_lahze948,x2_lahze948,x3_lahze948,x4_lahze948
                x1_lahze949,x2_lahze949,x3_lahze949,x4_lahze949
                x1_lahze950,x2_lahze950,x3_lahze950,x4_lahze950
                x1_lahze951,x2_lahze951,x3_lahze951,x4_lahze951
                x1_lahze952,x2_lahze952,x3_lahze952,x4_lahze952
                x1_lahze953,x2_lahze953,x3_lahze953,x4_lahze953
                x1_lahze954,x2_lahze954,x3_lahze954,x4_lahze954
                x1_lahze955,x2_lahze955,x3_lahze955,x4_lahze955
                x1_lahze956,x2_lahze956,x3_lahze956,x4_lahze956
                x1_lahze957,x2_lahze957,x3_lahze957,x4_lahze957
                x1_lahze958,x2_lahze958,x3_lahze958,x4_lahze958
                x1_lahze959,x2_lahze959,x3_lahze959,x4_lahze959
                x1_lahze960,x2_lahze960,x3_lahze960,x4_lahze960
                x1_lahze961,x2_lahze961,x3_lahze961,x4_lahze961
                x1_lahze962,x2_lahze962,x3_lahze962,x4_lahze962
                x1_lahze963,x2_lahze963,x3_lahze963,x4_lahze963
                x1_lahze964,x2_lahze964,x3_lahze964,x4_lahze964
                x1_lahze965,x2_lahze965,x3_lahze965,x4_lahze965
                x1_lahze966,x2_lahze966,x3_lahze966,x4_lahze966
                x1_lahze967,x2_lahze967,x3_lahze967,x4_lahze967
                x1_lahze968,x2_lahze968,x3_lahze968,x4_lahze968
                x1_lahze969,x2_lahze969,x3_lahze969,x4_lahze969
                x1_lahze970,x2_lahze970,x3_lahze970,x4_lahze970
                x1_lahze971,x2_lahze971,x3_lahze971,x4_lahze971
                x1_lahze972,x2_lahze972,x3_lahze972,x4_lahze972
                x1_lahze973,x2_lahze973,x3_lahze973,x4_lahze973
                x1_lahze974,x2_lahze974,x3_lahze974,x4_lahze974
                x1_lahze975,x2_lahze975,x3_lahze975,x4_lahze975
                x1_lahze976,x2_lahze976,x3_lahze976,x4_lahze976
                x1_lahze977,x2_lahze977,x3_lahze977,x4_lahze977
                x1_lahze978,x2_lahze978,x3_lahze978,x4_lahze978
                x1_lahze979,x2_lahze979,x3_lahze979,x4_lahze979
                x1_lahze980,x2_lahze980,x3_lahze980,x4_lahze980
                x1_lahze981,x2_lahze981,x3_lahze981,x4_lahze981
                x1_lahze982,x2_lahze982,x3_lahze982,x4_lahze982
                x1_lahze983,x2_lahze983,x3_lahze983,x4_lahze983
                x1_lahze984,x2_lahze984,x3_lahze984,x4_lahze984
                x1_lahze985,x2_lahze985,x3_lahze985,x4_lahze985
                x1_lahze986,x2_lahze986,x3_lahze986,x4_lahze986
                x1_lahze987,x2_lahze987,x3_lahze987,x4_lahze987
                x1_lahze988,x2_lahze988,x3_lahze988,x4_lahze988
                x1_lahze989,x2_lahze989,x3_lahze989,x4_lahze989
                x1_lahze990,x2_lahze990,x3_lahze990,x4_lahze990
                x1_lahze991,x2_lahze991,x3_lahze991,x4_lahze991
                x1_lahze992,x2_lahze992,x3_lahze992,x4_lahze992
                x1_lahze993,x2_lahze993,x3_lahze993,x4_lahze993
                x1_lahze994,x2_lahze994,x3_lahze994,x4_lahze994
                x1_lahze995,x2_lahze995,x3_lahze995,x4_lahze995
                x1_lahze996,x2_lahze996,x3_lahze996,x4_lahze996
                x1_lahze997,x2_lahze997,x3_lahze997,x4_lahze997
                x1_lahze998,x2_lahze998,x3_lahze998,x4_lahze998
                x1_lahze999,x2_lahze999,x3_lahze999,x4_lahze999
                x1_lahze1000,x2_lahze1000,x3_lahze1000,x4_lahze1000
                ];
       plot(states)
       legend(' x1 ' , 'x2' , 'x3' , 'x4')
       
       writetable(Table1,'Table1.xlsx');
       writetable(Table2,'Table2.xlsx');
       writetable(Table3,'Table3.xlsx');
       writetable(Table4,'Table4.xlsx');
        
        
        
        


 