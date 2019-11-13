module ApplicationHelper
    
    def comma(date)
        if date==nil
            a='indefinido'
            a
        else
            # formatting date: 31, Aug 2007
            date.strftime("%e, %b %Y")
        end
    end
    
    def comma_number(date)
        if date==nil
            a='indefinido'
            a
        else
            # formatting date: 31, 8, 2007
            date.strftime("%e, %_m, %Y")
        end
    end
    
    def bars(date)
        if date==nil
            a='indefinido'
            a
        else
            # formatting date: 31 / Aug / 2007
            date.strftime("%e / %b / %Y")
        end
    end
    
    def bars_number(date)
        if date==nil
            a='indefinido'
            a
        else
            # formatting date: 31 / 8 / 2007
            date.strftime("%e / %_m / %Y")
        end
    end
    
    def age(data)
        if data==nil
            a='indefinido'
        else
            fuso = Date.today.in_time_zone('Brasilia')
            a = fuso.year - data.year
            a = a - 1 if (
                data.month > fuso.month or (data.month >= fuso.month and data.day > fuso.day)
            )
        end
        a
    end
    
    def hora
       Time.now.in_time_zone('Brasilia')
    end
    
end
