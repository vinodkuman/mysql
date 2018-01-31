create procedure mic

@C_ID int,
          @C_NAME varchar(50),
           @C_ADD1 varchar(50),
           @C_ADD2 varchar(50),
           @C_CITY varchar(50),
           @C_STATE varchar(50),
           @C_MOBILE_NO numeric(18,0),
           @C_ZIPCODE numeric(18,0),
           @C_EMAIL varchar(50)
           
     as
     if(@C_ID=0)
     begin
    insert into MF_Customer_Master(C_NAME,C_ADD1,C_ADD2,C_CITY,C_STATE,C_MOBILE_NO,C_ZIPCODE,C_EMAIL)values(@C_NAME,@C_ADD1,@C_ADD2,@C_CITY,@C_STATE,@C_MOBILE_NO,@C_ZIPCODE,@C_EMAIL)
    
      end     
           
           
   else
   begin
update MF_Customer_Master set C_NAME=@C_NAME,C_ADD1=@C_ADD1,C_ADD2=@C_ADD2,C_CITY=@C_CITY,C_STATE=@C_STATE,C_MOBILE_NO=@C_MOBILE_NO,C_ZIPCODE=@C_ZIPCODE,C_EMAIL=@C_EMAIL where C_ID=@C_ID 
end


exec mic '2','kumar','ddd','dddd','dddd','asdf','99999999','555544','hhhh'

select * from MF_Customer_Master