function [cost_ii, u_stari ,x1_next_chosen_lahzei , x2_next_chosen_lahzei,x3_next_chosen_lahzei,x4_next_chosen_lahzei ,  Jsii ] = function1(A,r0,r_dot0,alfa0,alfa_dot0,dr,du,xk)
%         flag = 0;
        Uk=10:-du:-10;
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
for i=1:m
                      for j=1:n
                        u(j)=Uk(j);
                       % x1_next_lahzei(j ,i)=A*dr^2 * alfa2_2d_edited(i,k)+2*r2_2d_edited(i,k)-r2_2d_edited(i,k-1) ;
                        x1_next_lahzei(j,i) = xk(i,2)*dr + xk(i,1);
                        x2_next_lahzei(j,i) = A*xk(i,3)*dr+xk(i,2);
                        x3_next_lahzei(j,i) = xk(i,4)*dr+xk(i,3);
                        x4_next_lahzei(j,i) = u(j)*dr+xk(i,4);
                        %alfa_next_lahzei(j,i) = u(j) *dr^2 + 2*alfa2_2d_edited(i,k)-alfa2_2d_edited(i,k-1);

                        Xk_next= [x1_next_lahzei(j,i)   x2_next_lahzei(j,i)   x3_next_lahzei(j,i)   x4_next_lahzei(j,i)];
                        %%%%cost = xk * xk trasndpose + zarib* sigma(u)

                        cost_ii(j,i) = Xk_next*Xk_next' + 2*u(j)^2 ;
                        %%agar gheid ha rayat nashode bood bayad in harekat gheir ghabel ghabool
                        %%talaghi shavad. cost ra inf kardam
                        if x1_next_lahzei(j,i)>max(r_gheyd) ||  x2_next_lahzei(j,i) > max(r_dot_gheyd) || x3_next_lahzei(j,i)>max(alfa_gheyd) || x4_next_lahzei(j,i)>max(alfa_dot_gheyd)
                            cost_ii(j,i)=inf;
                        elseif x1_next_lahzei(j,i)< min(r_gheyd) ||  x2_next_lahzei(j,i) < min(r_dot_gheyd) || x3_next_lahzei(j,i)<min(alfa_gheyd) || x4_next_lahzei(j,i)<min(alfa_dot_gheyd)
                            cost_ii(j,i)=inf;
                        end
                        
                          
                      end
        
        Jsii(i)=min(cost_ii(:,i),[],1);
        [a,b]=find(cost_ii(:,i)==Jsii(i));
        
              
        %%%%agar ba meghdar avaliei ghyd ha be azaye hich u rayat nashavad in system be eza in noghte avlie
        %%be 0,0  nakhad resid(ya agar dar 0,0 boode hamanja mimanad).dar halat عادی in halat
        %%agar pish biad dar mohaseba error migirim . be shomare sotooni ke kollan
   

        isinfinit =isinf(Jsii(i));
        if isinfinit==1
           

        %mitoonid dastoor zir ro uncoment konid ta agar yek radif kollan cost inf shod chap beshe va oon ro
        %bebinid
        %   cost_12
        
                        x1_next_lahzei(i) = nan;
                        x2_next_lahzei(i) = nan;
                        x3_next_lahzei(i) = nan;
                        x4_next_lahzei(i) = nan;
                        
                        
            X = sprintf('i= %d ,function1 : cost yek radif kollan inf shod.',i);
            i_saved(i)=i;     
            disp(X)
           
        end
         
        % peyda kardan u_optimal 
           u_stari(i)=u(min(a));
        if isinfinit==1 
            u_stari(i)=nan;
        end
        x1_next_chosen_lahzei(i)=x1_next_lahzei(min(a),i);
        x2_next_chosen_lahzei(i)=x2_next_lahzei(min(a),i);
        x3_next_chosen_lahzei(i)=x3_next_lahzei(min(a),i);
        x4_next_chosen_lahzei(i)=x4_next_lahzei(min(a),i);
        
        
%          %% save baraye chaap kardan
%                if (r0==xk(i,1)&& r_dot0==xk(i,2) && alfa0==xk(i,3) && alfa_dot0==xk(i,4))
%                  x1_next_i=x1_next_lahzei(j,i);
%                  x2_next_i=x2_next_lahzei(j,i);
%                  x3_next_i=x3_next_lahzei(j,i);
%                  x4_next_i=x4_next_lahzei(j,i);
%                  j_stari =Jsii(i);
%                  u_star_choseni= u_stari(i);
%                  flag = 1;
%                end
%               
%                         
%                end  
%                
% 
% 
%  if (flag~=1)
%                   i=i+1;
%                   for j=1:n
%                       x1_next_lahzei(j,i) = r_dot0*dr + r0;
%                       x2_next_lahzei(j,i) = A*alfa0*dr+r_dot0;
%                       x3_next_lahzei(j,i) = alfa_dot0*dr+alfa0;
%                       x4_next_lahzei(j,i) = u(j)*dr+alfa_dot0;
% 
%                       Xk_next_initial= [x1_next_lahzei(j,i)   x2_next_lahzei(j,i)   x3_next_lahzei(j,i)   x4_next_lahzei(j,i)];
%                       cost_ii(j,i) = Xk_next_initial*Xk_next_initial' + 2*u(j)^2 ;
% 
%                             if x1_next_lahzei(j,i)>max(r_gheyd) ||  x2_next_lahzei(j,i) > max(r_dot_gheyd) || x3_next_lahzei(j,i)>max(alfa_gheyd) || x4_next_lahzei(j,i)>max(alfa_dot_gheyd)
%                                 cost_ii(j,i)=inf;
%                             elseif x1_next_lahzei(j,i)< min(r_gheyd) ||  x2_next_lahzei(j,i) < min(r_dot_gheyd) || x3_next_lahzei(j,i)<min(alfa_gheyd) || x4_next_lahzei(j,i)<min(alfa_dot_gheyd)
%                                 cost_ii(j,i)=inf;
%                             end
%                   end
%                         Jsii(i)=min(cost_ii(:,i),[],1);
%                         [a1,b1]=find(cost_ii(:,i)==Jsii(i));
% 
%                         isinfinit =isinf(Jsii(i));
%                         if isinfinit==1
% 
% 
%                         mitoonid dastoor zir ro uncoment konid ta agar yek radif kollan cost inf shod chap beshe va oon ro
%                         bebinid
%                           cost_12
% 
%                                         x1_next_lahzei(i) = nan;
%                                         x2_next_lahzei(i)= nan;
%                                         x3_next_lahze(i)= nan;
%                                         x4_next_lahzei(i) = nan;
% 
% 
%                             X = sprintf('i= %d ,cost yek radif kollan inf shod.',i);
%                             i_saved(i)=i;     
%                             disp(X)
% 
%                         end
%                            u_stari(i)=u(min(a));
%                            if isinfinit==1 
%                              u_stari(i)=nan;
%                            end
%                  x1_next_i=x1_next_lahzei(a1,i);
%                  x2_next_i=x2_next_lahzei(a1,i);
%                  x3_next_i=x3_next_lahzei(a1,i);
%                  x4_next_i=x4_next_lahzei(a1,i);
%                  j_stari =Jsii(i);
%                  u_star_choseni= u_stari(i);
% 
%   end
 
 
end