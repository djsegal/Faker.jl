
    @generated random_int(min=0, max=9999)= string(rand(min : max))

     

    @generated random_digit()= string(rand(0:9))
       

    @generated random_digit_not_null()= string(rand(1:9))
        

    @generated random_digit_or_empty()= rand(0:1)==1? string(rand(0:9)) : " "
       
    @generated random_digit_not_null_or_empty()= rand(0:1)==1? string(rand(1:9)) : " "
        

    @generated random_number( digits= 1 ) = string(rand(0 : (10^digits) - 1))
       

    @generated random_letter()= rand(0:1)>=0.5? string(rand('a':'z')) : string(rand('A':'Z'))
        
    @generated random_element( elements=("a", "b", "b"))= elements[rand(1: length(elements))]
        
    @generated function randomize_nb_elements( number=10, le=false, ge=false) 
                if le==true && ge==true
                    return string(number) 
                end 
                if ge==true 
                    min = 100 
                else  
                    min=60 
                end 

                if le==true 
                    max = 100 
                else 
                    max=140 
                end

                 string(((rand(min : max))number / 100) + 1 )  
            end

    @generated function numerify( text = "####")
                    for i in text  
                    text= replace(text,"#","$(rand(0:9))",1) 
                    end 
                return text
                end

    
    @generated lexify( text="????")= (for i=text  text= replace(text,"?","$(random_letter())",1) end ; return text)
       

    @generated bothify( text="## ??")=lexify(numerify(text))