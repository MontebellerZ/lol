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
    
end
