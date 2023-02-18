function [ x1_lahzei, x2_lahzei, x3_lahzei, x4_lahzei,Js_E] = function4(xk,dr,A, x1_lahze1,x2_lahze1,x3_lahze1,x4_lahze1,x1_next_chosen_lahzei,x2_next_chosen_lahzei,x3_next_chosen_lahzei,x4_next_chosen_lahzei,ustar_last,Js_entrance)
% r0=1;
% r_dot0=1;
% alfa0=1;
% alfa_dot0=1;
GG_nna=1;
%[h11,f11]=find(x1_lahze1==xk(:,1) & x2_lahze1==xk(:,2) &  x3_lahze1==xk(:,3) & x4_lahze1==xk(:,4));
    %    if isempty(h11)
        for num=1:length(ustar_last)
            if isnan(ustar_last(num))
                xk(num,:)=nan;
            end
        end
       [h11,f11]= find(x1_lahze1<=xk(:,1) & x2_lahze1<=xk(:,2) & x3_lahze1<=xk(:,3) & x4_lahze1<=xk(:,4));
       
           f_after = max(h11);
           
          [h22,f22]=find(x1_lahze1>=xk(:,1) & x2_lahze1>=xk(:,2) & x3_lahze1>=xk(:,3) & x4_lahze1>=xk(:,4));
           f_before = min(h22);         
           
           
           
           if f_before<f_after
               GG =f_before:f_after;
           elseif f_before>f_after 
                GG =f_after:f_before;
           elseif isempty(f_after)
               GG=f_before;
           elseif isempty(f_before)
                GG=f_after;
           end
           
                                    for GG=GG(1):GG(end)
                                         GG_nna=GG;
                                         if not(isnan(ustar_last(GG)))
                                             
%                                              x1_lahzei = x1_next_chosen_lahzei(1,GG);
%                                              x2_lahzei = x2_next_chosen_lahzei(1,GG);
%                                              x3_lahzei = x3_next_chosen_lahzei(1,GG);
%                                              x4_lahzei = x4_next_chosen_lahzei(1,GG);
                                               x1_lahzei = x2_lahze1*dr + x1_lahze1;
                                               x2_lahzei = A*x3_lahze1*dr+x2_lahze1;
                                               x3_lahzei = x4_lahze1*dr+x3_lahze1;
                                               x4_lahzei = ustar_last(GG)*dr+x4_lahze1;
                                               
                                             show = GG
                                             ustar_last(GG)
                                             break;
                                         end
                                    end
                                     if GG_nna~=1
                                     if isnan(ustar_last(GG_nna))
                                     u_p=-0.5;
                                            x1_lahzei = r_dot0*dr + r0;
                                            x2_lahzei = A*alfa0*dr+r_dot0;
                                            x3_lahzei = alfa_dot0*dr+alfa0;
                                            x4_lahzei = (u_p)*dr+alfa_dot0;
                                     end
                                     end
end
%                  else
%                    
%                   x1_lahzei = x1_next_chosen_lahze1(1,h11);
%                   x2_lahzei = x2_next_chosen_lahze1(1,h11);
%                   x3_lahzei = x3_next_chosen_lahze1(1,h11);
%                   x4_lahzei = x4_next_chosen_lahze1(1,h11);
%         end