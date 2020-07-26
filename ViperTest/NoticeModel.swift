private let ID = "id"
private let TITLE = "title"
private let BRIEF = "brief"
private let FILESOURCE = "filesource"

class NoticeModel: Decodable{

    internal var id:String?
    internal var title:String?
    internal var brief:String?
    internal var filesource:String?
}
