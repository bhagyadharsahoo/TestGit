protocol AdvanceLifeSupport{
    func doCpr()
}

class EmergencyCAllHandler {
    var delegate :AdvanceLifeSupport?
    
    func Asssist(){
        print("What is te situation Right now")
    }
    func doToGetlife(){
        delegate?.doCpr()
    }
    
}
struct Paramdic: AdvanceLifeSupport {
        
        init(handler:EmergencyCAllHandler) {

            handler.delegate=self
        }
  
        func doCpr() {
            print("Hey i am the paramedic And")
            print("I am doing cpr through 30 per sec")
        }
        
        
    }
    

var happy = EmergencyCAllHandler()
var angel = Paramdic(handler: happy)
happy.Asssist()
happy.doToGetlife()



 
