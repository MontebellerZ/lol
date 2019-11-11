module ApplicationHelper
    
    def comma(date)
        # formatting date: 31, Aug 2007
        date.strftime("%e, %b %Y")
    end
    
    def comma_number(date)
        # formatting date: 31, 8, 2007
        date.strftime("%e, %_m, %Y")
    end
    
    def bars(date)
        # formatting date: 31 / Aug / 2007
        date.strftime("%e / %b / %Y")
    end
    
    def bars_number(date)
        # formatting date: 31 / 8 / 2007
        date.strftime("%e / %_m / %Y")
    end
    
    def age(data)
        a = Date.today.year - data.year
        a = a - 1 if (
            data.month > Date.today.month or (data.month >= Date.today.month and data.day > Date.today.day)
        )
        a = "indefinido" if (a >= 99)
        a
    end
    
    def hora
       Time.now.in_time_zone('Brasilia')
    end
    
end
