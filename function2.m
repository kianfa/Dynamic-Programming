function [cost_ii, u_stari ,x1_next_chosen_lahzei , x2_next_chosen_lahzei, x3_next_chosen_lahzei ,x4_next_chosen_lahzei ,Jsii,i_saved_i] = function2(A,r,r_dot,alfa,alfa_dot,dr,du,xk,Js_entrance)
        Uk=1:-du:-10;
        m=length(xk);
        n=length(Uk);
        x1_next_lahzei=zeros(n,m);
        x2_next_lahzei=zeros(n,m);
        x3_next_lahzei=zeros(n,m);
        x4_next_lahzei=zeros(n,m);
        r_gheyd=[-500 , 500];
        r_dot_gheyd=[-500 , 500];
        alfa_gheyd = [-400 +400];
        alfa_dot_gheyd = [-500 500];
% r = (5:-dr:-5)';
% r_dot=( linspace(-8, 8 ,length(r)))';
% alfa=(linspace(-3, 3 ,length(r)))';
% alfa_dot=(linspace(-5, 5 ,length(r)))';
    for i=1:m
                      for j=1:n
                           u(j)=Uk(j);
                           x1_next_lahzei(j,i) = xk(i,2)*dr + xk(i,1);
                           x2_next_lahzei(j,i) = A*xk(i,3)*dr+xk(i,2);
                           x3_next_lahzei(j,i) = xk(i,4)*dr+xk(i,3);
                           x4_next_lahzei(j,i) = u(j)*dr+xk(i,4);
% if i==37
%   aqua=0;  
% end
                                if find(r== x1_next_lahzei(j,i) & r_dot== x2_next_lahzei(j,i) & alfa== x3_next_lahzei(j,i) & alfa_dot== x4_next_lahzei(j,i) )
                                [h,f]=find( r== x1_next_lahzei(j,i) & r_dot== x2_next_lahzei(j,i) & alfa== x3_next_lahzei(j,i) & alfa_dot== x4_next_lahzei(j,i));
                                Js_E=Js_entrance(1,f);
                                elseif x1_next_lahzei(j,i)>max(r_gheyd) || x2_next_lahzei(j,i)> max(r_dot_gheyd) || x3_next_lahzei(j,i)> max(alfa_gheyd) || x4_next_lahzei(j,i) >max(alfa_dot_gheyd) 
                                Js_E=inf;
                                elseif x1_next_lahzei(j,i)<min(r_gheyd) || x2_next_lahzei(j,i)< min(r_dot_gheyd) || x3_next_lahzei(j,i)<min(alfa_gheyd) || x4_next_lahzei(j,i) <min(alfa_dot_gheyd)
                                Js_E=inf;
                                else
                                %daroon yabi dar soorat lozoom   

                                [h1,f1]=find(x1_next_lahzei(j,i)<=xk(:,1) & x2_next_lahzei(j,i)<=xk(:,2) & x3_next_lahzei(j,i)<=xk(:,3) & x4_next_lahzei(j,i)<=xk(:,4));
                                for pp=length(h1):-1:1
                                    
                                f_after=h1(pp);
                                if isinf(Js_entrance(f_after))
                                    continue;
                                else 
                                    break;
                                end
                                end
                                [h2,f2]=find(x1_next_lahzei(j,i)>=xk(:,1) & x2_next_lahzei(j,i)>=xk(:,2) & x3_next_lahzei(j,i)>=xk(:,3) & x4_next_lahzei(j,i)>=xk(:,4));
                                if not(isempty(h2))&&not(isempty(h1))
                                for pp=1:length(h2)
                                    
                                f_before=h2(pp);
                                
                                
                                if isinf(Js_entrance(f_before))
                                    continue;
                                else 
                                    break;
                                end
                                end
                                 
%                                 Js_E=Js_entrance(f_before)+[((r(f_before)-(x1_next_lahzei(j,i))))*(Js_entrance(f_after)-Js_entrance(f_before))/(r(f_before)-r(f_after))];
                                if isinf(Js_entrance(f_before)) && isinf(Js_entrance(f_after)) 
                                   Js_E = inf;
                                elseif  isinf(Js_entrance(f_before))==1 && isinf(Js_entrance(f_after)) ~=1
                                 Js_E=Js_entrance(f_after) ;  
                                elseif  isinf(Js_entrance(f_before))~=1 && isinf(Js_entrance(f_after)) ==1
                                 Js_E=Js_entrance(f_before) ;  
                                else
                                    if x1_next_lahzei(j,i)~= xk(f_before,1)
                                        Js_E=Js_entrance(f_before)+((( x1_next_lahzei(j,i)-xk(f_before,1) )/(xk(f_before,1)-xk(f_after,1))))*(Js_entrance(f_after)-Js_entrance(f_before));
                                    elseif x2_next_lahzei(j,i)~= xk(f_before,2)
                                        Js_E=Js_entrance(f_before)+((( x2_next_lahzei(j,i)-xk(f_before,2) )/(xk(f_before,1)-xk(f_after,1))))*(Js_entrance(f_after)-Js_entrance(f_before));
                                    elseif x3_next_lahzei(j,i)~= xk(f_before,3)
                                        Js_E=Js_entrance(f_before)+((( x3_next_lahzei(j,i)-xk(f_before,3) )/(xk(f_before,1)-xk(f_after,1))))*(Js_entrance(f_after)-Js_entrance(f_before));
                                    else 
                                        Js_E=Js_entrance(f_before)+((( x4_next_lahzei(j,i)-xk(f_before,4) )/(xk(f_before,1)-xk(f_after,1))))*(Js_entrance(f_after)-Js_entrance(f_before));
                                    end
                                end
%                                     [h1,f1]=find(alfa_next_lahzei(j,i)<alfa);
%                                     f_after=max(f1);
%                                     [h2,f2]=find(alfa_next_lahzei(j,i)>alfa);
%                                     f_before=min(f2);  
%                                      if isempty(f_before)||isempty(f_after)
%                                          JJs2_12 = inf;
% 
%                                     else 
%                                     JJs2_12=Js_entrance(1,f_before)+((( alfa_next_lahzei(j,i)-alfa(1,f_before) )/dr))*(Js_entrance(1,f_after)-Js_entrance(1,f_before));
%                                      end
%                                 if isempty(JJs1_12)==1
%                                    Js_E = JJs2_12; 
%                                 elseif isnan(JJs1_12) || isinf(JJs1_12) ||isempty(JJs1_12)==1
%                                 Js_E = JJs2_12;
%                                 elseif isempty(JJs2_12)==0
%                                     Js_E = JJs1_12;
%                                 elseif isnan(JJs2_12) || isinf(JJs2_12)
%                                 Js_E = JJs1_12;
%                                 else
%                                 Js_E=(JJs2_12+JJs1_12)/2;
%                                 end
                                else 
                                    Js_E = inf;
                                    cost_ii(j,i)=inf;
                                end
                                end
                                
                                
                                if isempty(Js_E)==1
                                   cost_ii(j,i) = inf;
                                elseif isnan(Js_E) ||isinf(Js_E)
                                   cost_ii(j,i) = inf;
                                else
                                   cost_ii(j,i)=Js_E+2*u(j)^2;
                                end
                                
%                                 if x1_next_lahzei(j,i)>max(r) || alfa_next_lahzei(j,i) > max(alfa)
%                                 cost_ii(j,i)=inf;
%                                 elseif r_next_lahzei(j,i)<min(r) || alfa_next_lahzei(j,i)<min(alfa)
%                                 cost_ii(j,i)=inf;
%                                 end
                           
                           
                      
                 end

       
        Jsii(i)=min(cost_ii(:,i),[],1);
        [a,b]=find(cost_ii(:,i)==Jsii(i));
        
        
        isinfinit =isinf(Jsii(i));
        if isinfinit==1
            X = sprintf('i= %d , function2: yek radif dar jadval  kollan inf shod.',i);
            i_saved_i=i;
            x1_next_lahzei(:,i)=nan;
            x2_next_lahzei(:,i)=nan;
            x3_next_lahzei(:,i)=nan;
            x4_next_lahzei(:,i)=nan;
            disp(X)
            
        end
        u_stari(i)=u(min(a));
        if isinfinit==1 
           u_stari(i)=nan;
        end
        x1_next_chosen_lahzei(i) = x1_next_lahzei(min(a),i);
        x2_next_chosen_lahzei(i) = x2_next_lahzei(min(a),i);
        x3_next_chosen_lahzei(i) = x3_next_lahzei(min(a),i);
        x4_next_chosen_lahzei(i) = x4_next_lahzei(min(a),i);
       
   end