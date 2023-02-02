//
//  Extension.swift
//  MidaseClass
//
//  Created by ramesh prajapati on 7/28/20.
//  Copyright © 2020 Ramesh. All rights reserved.
//

import Foundation
import UIKit
import AnimatedField

extension UIButton{
    func pulsate(){
        let pul = CASpringAnimation(keyPath: "transform.scale")
        pul.duration = 0.6
        pul.fromValue = 0.95
        pul.toValue = 1.0
        pul.autoreverses = true
        pul.repeatCount = Float.infinity
        pul.initialVelocity = 0.5
        pul.damping = 1.0
        layer.add(pul, forKey: nil)
    }
    func addRightImage(image: UIImage, offset: CGFloat) {
        self.setImage(image, for: .normal)
        self.imageView?.translatesAutoresizingMaskIntoConstraints = false
        self.imageView?.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 0.0).isActive = true
        self.imageView?.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -offset).isActive = true
    }
    
}
extension UIFont {
    class func regular(ofSize size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: UIFont.Weight.regular)
    }
    class func medium(ofSize size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: UIFont.Weight.medium)
    }
    
    class func semibold(ofSize size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: UIFont.Weight.semibold)
    }
    class func bold(ofSize size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: UIFont.Weight.bold)
    }
}




extension String {
    
    static let MOBILE_NUMBER_CANNOT_BE_EMPTY: String = String("Mobile number cannot be empty")
    static let INVALID_MOBILE_NUMBER: String = String("Invalid Mobile number")
    static let INSERT_HOSPITAL_OPD_NUMBER: String = String("Hospital number cannot be empty")

    static let USERNAME_CANNOT_BE_EMPTY: String = String("Username cannot be empty")
    static let PASSWORD_CANNOT_BE_EMPTY: String = String("Password cannot be empty")
    static let SOMETHING_WENT_WRONG_TRY_AGIAN_LATER: String = String("Something went wrong. Try again later")
    static let DATE_FORMATE: String = String("yyyy/MM/dd")
    static let NO_INTERNET_CONNECTION_MESSAGE: String = String("No Internet Connection.")
    static let NO_INTERNET: String = String("No Internet!")
    static let PLEASE_CHECK_YOUR_INTERNET_CONNECTION: String = String("Please check your internet\nconnection.")
    
    static let COMMENT_DELETE: String = String("Comment delete successfully.")
    static let INSERT_VALID_MOBILE_NUMBER: String = String("Please insert a valid mobile number")
    static let CURRENT_PASSWORD_EMPTY: String = String("Current Password cannot be empty")
    static let NEW_PASSWORD_EMPTY: String = String("New Password cannot be empty")
    static let CONFIRM_PASSWORD_EMPTY: String = String("Confirm Password cannot be empty")

    static let CURRENT_PASSWORD_NOT_LESS: String = String("Current Password must be atlest 6 characters")
    static let NEW_PASSWORD_NOT_LESS: String = String("New Password must be atlest 6 characters")
    static let CONFIRM_PASSWORD_NOT_LESS: String = String("Confirm Password must be atlest 6 characters")
    static let PASSWORD_NOT_LESS: String = String("Password must be atlest 6 characters")

    static let I_Have_NOT_VISITED_THIS_HOSPITAL: String = String("I have not visited this hospital or I do not have Hospital No.")
    static let I_HAVE_VISITED_THIS_HOSPITAL: String = String("I have visited this hospital before and have Hospital No.")

    static let SOME_BODY_ALREADY_WITH: String = String("Somebody already with an OPD number from previous appointments.")
    static let SOME_BODY_BOOKING_AN_APPOINTMENT: String = String("Somebody booking an appointment n this hospital for the first time.")

    
    static let YOU_CAN_FIND_HOSPITAL_NUM: String = String("Note: You can find Hospital No. an OPD Card/Book.")
    static let NEW_PATIENT: String = String("New Patient")
    static let OLD_PATIENT: String = String("Old Patient")
    static let OLD_OR_NEW_PATIENT: String = String("Old or New Patient?")
    
    static let NEW_REGISTRATION_OR_FOLLOW_UP: String = String("New Registration or Follow Up?")
    static let NEW_REGISTRATION: String = String("New Registration")
    static let FOLLOW_UP: String = String("Follow Up")
    static let THIS_NUMBER_IS_ALREADY_REGISTERED: String = String("This number is already registered with Mero Doctor.")

    
    
    
    static let NAYA_DARTA_WA_PURANO_DARTA: String = String("नयाँ दर्ता वा पुरानो दर्ता?")
    static let NAYA_DARTA: String = String("नयाँ दर्ता")
    static let PURANO_DARTA: String = String("पुरानो दर्ता?")

    
    
    
    static let NAMAST_SELF_APPOINTMENT: String = String("नमस्ते! तपाई ओपिडी टिकट आफै काट्ने ठाउँमा आइपुग्नुभएको छ ।")
    static let WHICH_SERVICE_DO_YOU_WANT_TO_TAKE: String = String("तपाई कुन सेवा लिन खोज्नु भएको हो?")
    static let ROUTINE_OPD: String = String("दैनिक नियमित ओपिडी")
    static let PRIVATE_OPD: String = String("प्राइभेट ओपिडी")
    static let CHECK_UP_TIME: String = String("जचाउँने समय")
    static let REGISTRATION_FEE: String = String("दर्ता शुल्क")
    static let DOCTOR_SELECTION_SERVICE: String = String("यस सेवामा आफुले चहाएको चिकित्सक छानेर उपचार गराउन पाइन्छ।")
    static let DOCTOR_AVAILABLE: String = String("यस सेवामा आफुले चाहेको चिकित्स छानेर उपचार पाईन्छ।")
    static let PACKAGE_OPD: String = String("पप्याकेज ओपिडी")
    static let AVAILABLE_DOCTOR: String = String("उपलब्द चिकित्सकहरु")
    static let NOTICE: String = String("उल्लेखित सबै चिकित्सकहरु हरेक दिन उपलब्ध नहुन पनि सक्नुहुनेछ। तर सबै बिरामिहरुले पाउनु पर्ने उचित सेवा, परिक्षण र सल्लाहमा यसले कुनै बाधा पुग्ने छैन।")
    static let NEW_OR_OLD_PATIENT: String = String("नयाँ वा पुरानो बिरामि?")
    static let TAPAI_NAYA_BIRAMI_KI_PURANO: String = String("तपाई यो सेन्टरको लागि नयाँ बिरामी हुनुहुन्छ कि पुरानो?")
    static let NOTE_OPD_CARD_NUMBER: String = String("अस्पताल न. ओपिडि कार्ड / किताबमा हुन्छ।")
    static let PURANO_BIRAMI: String = String("पुरानो बिरामि")
    static let NAYA_BIRAMI: String = String("नयाँ बिरामि")


    static let OLD_PATIENT_DETAIL: String = String("यो अस्पतालमा म पहिले पनि आएको छु र म सँग अस्पताल न. छ।")
    static let NEW_PATIENT_DETAIL: String = String("यो अस्पतालमा म पहिले पनि आएको छैन वा म सँग अस्पताल न. छैन।")

    static let PHILENAI_EAKPATAK_TICKET_KATEKO: String = String("पहिले नै एकपटक टिकट काटेर ओपिडि नम्बर लिइसकेको ब्यक्ति")
    static let YES_HOSPITALMA_PAHILO_PATAK_TICKET_KATEKO: String = String("यस अस्पतालमा पहिलो पटक टिकट लिदै गरेको ब्यक्ति")

    static let SABAI_PURANO_BIRAMI_HARULE_AANAI_PURANO_OPD: String = String("सबै पुरानो बिरामीहरुले आफ्नै पुरानो ओपिडी नम्बर प्रयोग गर्नाले यहाँहरुको मेडिकल रेकर्ड सधैंलाई सुरक्षित राख्न मदत हुन्छ।")
    static let TAPAI_AFAI_BIRAMI_HUNUHUNCHA_WA_ARU: String = String("तपाई आफै बिरामी हुनुहुन्छ? वा अरु कोही?")

    static let AFFAI: String = String("आफै")
    static let ARU_BIRAMI_PURANO_BIRAMI_BIWARAN: String = String("अरु बिरामी(पुरानो बिरामीको बिवरण भर्नुहोस)")

    static let BIRAMIKO_NAAM_CHHANUHOS: String = String("बिरामीको नाम छान्नुहोस्")
    static let ASAPATAL_NUMBER: String = String("अस्पताल नम्बर")
    static let KRIPAYA_AAFNO_OPD_NUMBER_HALNUHOS: String = String("कृपया आफ्नो ओपिडी नम्बर हाल्नुहोस्।")
    static let BIRAMI: String = String("बिरामी")

    
    
    static let PATHOLOGY: String = String("pathology")
    static let ECG: String = String("ecg")
    static let PRESCRIPTION: String = String("prescription")
    static let OTHER: String = String("other")
    static let SELECT_DATE: String = String("दिन छान्नुहोस्")
    static let SAMAYA_CHHANUHOS: String = String("समय छान्नुहोस्")
    
    static let PLEASE_MAKE_SURE: String = String("Please make sure the OPD number you enter matches with the previously registered mobile number, else you may be barred from proceeding. We suggest you to contact the medical record section at the hospital to upgrade to your new number.\n\n(ओ.पि.डी नम्बर र मोबाइल नम्बर हाल्दा विशेष ध्यान पुर्‍याउनुहोला । मोबाइल नम्बर परिवर्तन भएमा अस्पातलमा सम्पर्क राखी सच्याउनुहोला । ओ.पि.डी नम्बर र सुरुमा टिकट लिँदा टिपाएको नम्बर परस्पर नमिलेमा टिकट काट्ने प्रक्रिया अघि बढ्ने छैन।)")
    
    static let APPOINTMENT_LINUHOS: String = String("एपोइन्टमेन्ट् लिनुहोस्।")
    static let Bhuktani: String = String("भुक्तानी")
    static let PLEASE_SELECT_ANY_ONE_TO_PAY: String = String("Please select any one to pay.\n(भुक्तानी गर्न कुनै एक छान्नुहोस्।)")

    static let BIBHAGA_CHHANNUHOS: String = String("विभाग छान्नुहोस्।")
    static let CHIKTSAK_CHANNUHOS: String = String("चिकित्सक् छान्नुहोस्")
    
    static let BIRAMIKO_BIWARAN_BHARNUHOS: String = String("ADD PATIENT DETAIL\nबिरामीको बिवरण भर्नुहोस")
    static let NAYA_BIRAMI_THAPNUHOS: String = String("नयाँ बिरामी थप्नुहोस्")
    static let NAYA_PASSWORD_BANAUNUHOS: String = "नयाँ पासर्वोड बनाउनुहोस्।"

    
    static let Liegga: String = String("लिङ्ग")
    static let PURUS: String = String("पुरुष")
    static let MAHILA: String = String("महिला")
    static let PLEASE_ENTER_MOBILE_NUMBER: String = String("Please enter mobile number\n")
    static let AFUNO_MOBILE_NUMBER_HALNUHOS: String = String("(आफ्नो मोबाईल नम्बर हाल्नुहोस्)")
    static let TOKEN_NO: String = String("टोकन नं.")
    static let HOSPITAL_VISIT_TIME: String = String("अस्पतालमा जाने समय")
    static let DOCTOR_VETNE_SAMAYA: String = String("चिकित्सक भेट्ने समय")
    static let DUR_UPACHAR: String = String("दूर - उपचार")
    
    var isBlank: Bool {
        get {
            let trimmed = trimmingCharacters(in: CharacterSet.whitespaces)
            return trimmed.isEmpty
        }
    }
    
    func getHeight(with width: CGFloat, font: UIFont) -> CGFloat {
        let maxSize = CGSize(width: width, height: CGFloat.greatestFiniteMagnitude)
        let actualSize = self.boundingRect(with: maxSize, options: [.usesLineFragmentOrigin], attributes: [NSAttributedString.Key.font: font], context: nil)
        return actualSize.height
    }
    
    
    func getWidth(with height: CGFloat, font: UIFont) -> CGFloat {
        let maxSize = CGSize(width: CGFloat.greatestFiniteMagnitude, height: height)
        let actualSize = self.boundingRect(with: maxSize, options: [.usesLineFragmentOrigin], attributes: [NSAttributedString.Key.font: font], context: nil)
        return actualSize.width
    }
    
    var base64Decoded: String? {
            guard let base64 = Data(base64Encoded: self) else { return nil }
            let utf8 = String(data: base64, encoding: .utf8)
            return utf8
        }

        /// Returns a base64 representation of the current string, or nil if the
        /// operation fails.
        var base64Encoded: String? {
            let utf8 = self.data(using: .utf8)
            let base64 = utf8?.base64EncodedString()
            return base64
        }
}

extension UIViewController {
    
    func toastMessage(message: String?, toastType: ToastType){
        guard let window = UIApplication.shared.keyWindow else {return}
        let messageLbl = UILabel()
        messageLbl.numberOfLines = 0 
        messageLbl.text = message
        messageLbl.textAlignment = .center
        messageLbl.font = toastType.font
        messageLbl.textColor = toastType.textColor
        messageLbl.backgroundColor = toastType.backgroundColor?.withAlphaComponent(1.0)

        let textSize:CGSize = messageLbl.intrinsicContentSize
        let labelWidth = min(textSize.width, window.frame.width - 40)

        messageLbl.frame = CGRect(x: 20, y: window.frame.height - 120, width: labelWidth + 30, height: textSize.height + 20)
        messageLbl.center.x = window.center.x
        messageLbl.layer.cornerRadius = messageLbl.frame.height/2
        messageLbl.layer.masksToBounds = true
        window.addSubview(messageLbl)

        messageLbl.alpha = 0
        
        DispatchQueue.main.asyncAfter(deadline: .now()) {
            
            UIView.animate(withDuration: 2.0, delay: 0.2, options: .curveEaseOut, animations: {
                messageLbl.alpha = 1.0
            }, completion: { _ in
                messageLbl.removeFromSuperview()
            })
        }
        
    }
    
    func popupAlert(title: String, message: String, actionTitles: [String], perferredType:UIAlertController.Style, actionStyle:[UIAlertAction.Style], action:[((UIAlertAction) -> Void)]){
        let alert = UIAlertController(title: title, message: message, preferredStyle: perferredType)
        for (index, title) in actionTitles.enumerated() {
            let action = UIAlertAction(title: title, style: actionStyle[index], handler: action[index])
            alert.addAction(action)
        }
        self.present(alert, animated: true, completion: nil)
    }
    
    func showHud(withTitle title: String, and Description:String) {
//       let Indicator = MBProgressHUD.showAdded(to: self.view, animated: true)
//       Indicator.label.text = title
//       Indicator.isUserInteractionEnabled = false
//       Indicator.detailsLabel.text = Description
//       Indicator.show(animated: true)
         ProgressHud.showProgressHUD()
    }
    func hideHud() {
      // MBProgressHUD.hide(for: self.view, animated: true)
        ProgressHud.hideProgressHUD()
    }
    
    
    @objc func releaseStatus(tokenid: String, type: String){
        ApiManager.sendRequest(toApi: Api.Endpoint.releaseStatus(tokenid: tokenid, type: type)) { [weak self](status, data)
            in
            guard let strongSelf = self else { return }
            NSObject.cancelPreviousPerformRequests(withTarget: self, selector: #selector(strongSelf.releaseStatus), object: nil)

        } onError: { (error) in
            self.toastMessage(message: error.localizedDescription, toastType: .message)
        }

    }
    
    
    func removeUpcomingArray(){
        upcomingArray.relationname = ""
        upcomingArray.midasid = ""
        upcomingArray.mobileno = ""
        upcomingArray.fullname = ""
        upcomingArray.gender = ""
        upcomingArray.dobbs = ""
        upcomingArray.email = ""
        upcomingArray.dob = ""

        upcomingArray.skipforgeneral = ""
        upcomingArray.doct_docname = ""
        upcomingArray.appo_callstatus = ""
        upcomingArray.orgcode = ""
        upcomingArray.appointmenttype = ""
        upcomingArray.isurgent = ""
        upcomingArray.doct_docid = ""
        upcomingArray.regtime = ""
        upcomingArray.orna_address = ""
        upcomingArray.timeskipforehs = ""
        upcomingArray.doctime = ""
        upcomingArray.aptime = ""
        upcomingArray.depid = ""
        upcomingArray.isgovernment = ""
        upcomingArray.prate = ""
        upcomingArray.type = ""
        upcomingArray.bannerimage = ""
        upcomingArray.appo_queueno = ""
        upcomingArray.premiumqty = ""
        upcomingArray.timeskipforgeneral = ""
        upcomingArray.orna_orgname = ""
        upcomingArray.tokentype = ""
        upcomingArray.depimage = ""
        upcomingArray.appo_appid = ""
        upcomingArray.appo_midasid = ""
        upcomingArray.appo_appdate = ""
        upcomingArray.day = ""
        upcomingArray.ispremium = ""
        upcomingArray.generalfee = ""
        upcomingArray.ehsfee = ""
        upcomingArray.ehsfee_followup = ""
        upcomingArray.depname = ""
        upcomingArray.appo_apptime = ""
        upcomingArray.isdummy = ""
        upcomingArray.gdepid = ""
        upcomingArray.norgname = ""
        upcomingArray.apptime = ""
        upcomingArray.docmeettime = ""
        upcomingArray.ndepname = ""
        upcomingArray.premiumtype = ""
        upcomingArray.doct_desig = ""
        upcomingArray.datebs = ""
        upcomingArray.image = ""
        upcomingArray.tokenid = ""
        upcomingArray.appo_patientid = ""
        upcomingArray.orna_orgid = ""
        upcomingArray.currenttime = ""
    }
    
    
    

}


enum ToastType{
    
    case success
    case failure
    case message
    
    var backgroundColor: UIColor? {
        switch self {
        case .success:
            return UIColor.from(hex: "#70D4B4")
        case .failure:
            return UIColor.from(hex: "#DD3E3E")
        case .message:
            return UIColor.from(hex: "#EBEBEB")
        }
    }
    
    var textColor: UIColor? {
        switch self {
        case .failure,.success:
            return Theme.Color.white
        case .message:
            return Theme.Color.darkGray
        }
    }
    
    var font: UIFont? {
        return UIFont.medium(ofSize: 13) //systemFont(ofSize: 17)
    }
    
    var blurEffect: UIBlurEffect? {
        return nil
    }
}
extension UIView {
   func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
    func addShadow(view: UIView,width: Int, height: Int,shadowRadius: CGFloat, shadowOpacity: Float) {
        view.layer.shadowOffset = CGSize(width: width,
                                          height: height)
        view.layer.shadowRadius = shadowRadius
        view.layer.shadowOpacity = shadowOpacity
        view.layer.shadowColor = UIColor.lightGray.cgColor
    }
}
extension String {
    func height(withConstrainedWidth width: CGFloat, font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: width, height: .greatestFiniteMagnitude)
        let boundingBox = self.boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: font], context: nil)
    
        return ceil(boundingBox.height)
    }

    func width(withConstrainedHeight height: CGFloat, font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: .greatestFiniteMagnitude, height: height)
        let boundingBox = self.boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: font], context: nil)

        return ceil(boundingBox.width)
    }
}

extension UIApplication {
//    var statusBarView: UIView? {
//        if #available(iOS 13.0, *) {
//            let tag = 38482
//            let keyWindow = UIApplication.shared.windows.filter {$0.isKeyWindow}.first
//
//            if let statusBar = keyWindow?.viewWithTag(tag) {
//                return statusBar
//            } else {
//                guard let statusBarFrame = keyWindow?.windowScene?.statusBarManager?.statusBarFrame else { return nil }
//                let statusBarView = UIView(frame: statusBarFrame)
//                statusBarView.tag = tag
//                keyWindow?.addSubview(statusBarView)
//                return statusBarView
//            }
//        } else if responds(to: Selector(("statusBar"))) {
//            return value(forKey: "statusBar") as? UIView
//        } else {
//            return nil
//        }
//    }
    
    var statusBarUIView: UIView? {

        if #available(iOS 13.0, *) {
            let tag = 3848245

            let keyWindow = UIApplication.shared.connectedScenes
                .map({$0 as? UIWindowScene})
                .compactMap({$0})
                .first?.windows.first

            if let statusBar = keyWindow?.viewWithTag(tag) {
                return statusBar
            } else {
                let height = keyWindow?.windowScene?.statusBarManager?.statusBarFrame ?? .zero
                let statusBarView = UIView(frame: height)
                statusBarView.tag = tag
                statusBarView.layer.zPosition = 999999

                keyWindow?.addSubview(statusBarView)
                return statusBarView
            }

        } else {

            if responds(to: Selector(("statusBar"))) {
                return value(forKey: "statusBar") as? UIView
            }
        }
        return nil
      }
}


extension Notification.Name {
    static let Get_Profile_Image = Notification.Name("GET_PROFILE_IMAGE")
    static let ChangeUser = Notification.Name("ChangeUser")
    static let reloadDashboard = Notification.Name("ReloadDashboard")

}

extension UIView {
    
    func statusBarHeight() -> CGFloat {
        let statusBarSize = UIApplication.shared.statusBarFrame.size
        return Swift.min(statusBarSize.width, statusBarSize.height)
    }
    
    class var stringIdentifier: String {
        return String(describing: self)
    }
    
    func addRoundedCorner(corner: UIRectCorner,radius: CGFloat) {
        
        let maskPath = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corner, cornerRadii: CGSize(width: radius, height: radius))
        
        let maskLayer = CAShapeLayer()
        maskLayer.path = maskPath.cgPath
        
        self.layer.mask = maskLayer
    }
    
    func addRoundedCorner(radius:CGFloat) {
        self.layer.cornerRadius = radius
        self.layer.masksToBounds = false
        self.clipsToBounds = true
    }
    
    func addBorder(color:UIColor) {
        
        self.layer.borderColor = color.cgColor
        self.layer.borderWidth = 1
    }
    
    public func addGradient(color1: CGColor, color2: CGColor) {
        
        //        let gradientView = UIView(frame: .zero)
        let gradientLayer:CAGradientLayer = CAGradientLayer()
        gradientLayer.frame.size = self.frame.size
        gradientLayer.colors =
            [color1,color2]
        //Use diffrent colors
        self.layer.insertSublayer(gradientLayer, at:0)
        
        
        
        
        
        //        let gradientLayer = CAGradientLayer()
        //        gradientLayer.colors = [
        //            color1,
        //            color2
        //        ]
        //        gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
        //        gradientLayer.endPoint = CGPoint(x: 1, y: 0.5)
        //        gradientLayer.masksToBounds = true
        //        gradientLayer.frame = self.bounds
        //
        //        self.layer.insertSublayer(gradientLayer, at: 0)
        //        self.clipsToBounds = true
    }
    
    //    func addShadowWithRoundingCorner(cornerRadius: CGFloat) {
    //
    //    }
    
    func dropShadow(scale: Bool = true) {
        
        self.layer.masksToBounds = false
        self.layer.shadowColor = UIColor.lightGray.cgColor
        self.layer.shadowOpacity = 0.8
        self.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        self.layer.shadowRadius = 1
        
        //self.layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
        self.layer.shouldRasterize = true
        self.layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
    
    func shakeView() {
        
        let animation = CAKeyframeAnimation()
        animation.keyPath = "position.x"
        animation.values = [0, 10, -10, 10, -5, 5, -5, 0 ]
        animation.keyTimes = [0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.75, 0.875, 1]
        animation.duration = 0.4
        animation.isAdditive = true
        
        self.layer.add(animation, forKey: "shake")
    }
    
    
    // Autolayout Constraints
    
    func setupForAutolayout() {
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func setHeight(height: CGFloat) {
        NSLayoutConstraint(item: self, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: height).isActive = true
    }
    
    func setWidth(width: CGFloat) {
        NSLayoutConstraint(item: self, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: width).isActive = true
    }
    
    func pinToTop(of parentView:UIView,constant:CGFloat = 0) {
        NSLayoutConstraint(item: self, attribute: .top, relatedBy: .equal, toItem: parentView, attribute: .top, multiplier: 1, constant: constant).isActive = true
    }
    
    func pinToBottom(of parentView:UIView,constant:CGFloat = 0) {
        NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .equal, toItem: parentView, attribute: .bottom, multiplier: 1, constant: constant).isActive = true
    }
    
    func pinToLeading(of parentView:UIView,constant:CGFloat = 0) {
        NSLayoutConstraint(item: self, attribute: .leading, relatedBy: .equal, toItem: parentView, attribute: .leading, multiplier: 1, constant: constant).isActive = true
    }
    
    func pinToTrailing(of parentView:UIView,constant: CGFloat = 0) {
        NSLayoutConstraint(item: self, attribute: .trailing, relatedBy: .equal, toItem: parentView, attribute: .trailing, multiplier: 1, constant: constant).isActive = true
    }
    
    func pin(attribute:NSLayoutConstraint.Attribute,to parentAttr:NSLayoutConstraint.Attribute,of parentView:UIView,constant:CGFloat = 0) {
        NSLayoutConstraint(item: self, attribute: attribute, relatedBy: .equal, toItem: parentView, attribute: parentAttr, multiplier: 1, constant: constant).isActive = true
    }
    
    func pinToCenterVertically(of parentView:UIView) {
        NSLayoutConstraint(item: self, attribute: .centerY, relatedBy: .equal, toItem: parentView, attribute: .centerY, multiplier: 1, constant: 0).isActive = true
    }
    
    func pinToCenterHorizontally(of parentView:UIView) {
        NSLayoutConstraint(item: self, attribute: .centerX, relatedBy: .equal, toItem: parentView, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
    }
    
    // Embedded Message Label
    
    func showMessageLabel(embeddedLabel:UILabel, message:String, textColor:UIColor = Theme.Color.black) {
        
        //self.backgroundColor = UIColor.white
        
        embeddedLabel.text = message
        embeddedLabel.numberOfLines = 0
        embeddedLabel.translatesAutoresizingMaskIntoConstraints = false
        embeddedLabel.textAlignment = .center
        embeddedLabel.font = UIFont.systemFont(ofSize: 16)
        embeddedLabel.textColor = textColor
        
        self.addSubview(embeddedLabel)
        
        NSLayoutConstraint(item: embeddedLabel, attribute: .centerY, relatedBy: .equal, toItem: self, attribute: .centerY, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: embeddedLabel, attribute: .leading, relatedBy: .equal, toItem: self, attribute: .leading, multiplier: 1, constant: 16).isActive = true
        NSLayoutConstraint(item: embeddedLabel, attribute: .trailing, relatedBy: .equal, toItem: self, attribute: .trailing, multiplier: 1, constant: -16).isActive = true
        NSLayoutConstraint(item: embeddedLabel, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        
        self.bringSubviewToFront(embeddedLabel)
    }
    
    func hideMessageLabel(embeddedLabel:UILabel?) {
        embeddedLabel?.removeFromSuperview()
    }
    
    // Embedded Activity Indicator
    
    func showLoadingIndicator(activityIndicator: UIActivityIndicatorView) {
        
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(activityIndicator)
        
        NSLayoutConstraint(item: activityIndicator, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: activityIndicator, attribute: .centerY, relatedBy: .equal, toItem: self, attribute: .centerY, multiplier: 1, constant: 0).isActive = true
        
        activityIndicator.startAnimating()
        self.bringSubviewToFront(activityIndicator)
    }
    
    func hideLoadingIndicator(activityIndicator: UIActivityIndicatorView?) {
        
        activityIndicator?.stopAnimating()
        activityIndicator?.removeFromSuperview()
    }
    
    func addGradient(with layer: CAGradientLayer, gradientFrame: CGRect? = nil, colorSet: [UIColor],
                     locations: [Double], startEndPoints: (CGPoint, CGPoint)? = nil) {
        layer.frame = gradientFrame ?? self.bounds
        layer.frame.origin = .zero
        
        let layerColorSet = colorSet.map { $0.cgColor }
        let layerLocations = locations.map { $0 as NSNumber }
        
        layer.colors = layerColorSet
        layer.locations = layerLocations
        
        if let startEndPoints = startEndPoints {
            layer.startPoint = startEndPoints.0
            layer.endPoint = startEndPoints.1
        }
        
        self.layer.insertSublayer(layer, above: self.layer)
    }
    
    
    
    
}



extension UIButton {
    func underline() {
        guard let text = self.titleLabel?.text else { return }
        let attributedString = NSMutableAttributedString(string: text)
        //NSAttributedStringKey.foregroundColor : UIColor.blue
        attributedString.addAttribute(NSAttributedString.Key.underlineColor, value: self.titleColor(for: .normal)!, range: NSRange(location: 0, length: text.count))
        attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: self.titleColor(for: .normal)!, range: NSRange(location: 0, length: text.count))
        attributedString.addAttribute(NSAttributedString.Key.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: text.count))
        self.setAttributedTitle(attributedString, for: .normal)
    }
    
    func alignTextBelow(spacing: CGFloat = 10.0) {
        if let image = self.imageView?.image {
            let imageSize: CGSize = image.size
            self.titleEdgeInsets = UIEdgeInsets(top: spacing, left: -imageSize.width, bottom: -(imageSize.height), right: 0.0)
            let labelString = NSString(string: self.titleLabel!.text!)
            let titleSize = labelString.size(withAttributes: [NSAttributedString.Key.font: self.titleLabel?.font as Any])
            self.imageEdgeInsets = UIEdgeInsets(top: -(titleSize.height - 5), left: 0.0, bottom: 0.0, right: -titleSize.width)
        }
    }
    
    func leftImage(image: UIImage, renderMode: UIImage.RenderingMode) {
        self.setImage(image.withRenderingMode(renderMode), for: .normal)
        self.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: image.size.width / 2)
        self.contentHorizontalAlignment = .left
        self.imageView?.contentMode = .scaleAspectFit
    }
    
    func rightImage(image: UIImage, renderMode: UIImage.RenderingMode){
        self.setImage(image.withRenderingMode(renderMode), for: .normal)
        self.imageEdgeInsets = UIEdgeInsets(top: 0, left:image.size.width / 2, bottom: 0, right: 0)
        self.contentHorizontalAlignment = .right
        self.imageView?.contentMode = .scaleAspectFit
    }
}

extension UITextField: UITextFieldDelegate {
    
    public func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        //        let newTextField = UITextField()
        
        let maxLength = 10
        let currentString: NSString = textField.text! as NSString
        let newString: NSString =
            currentString.replacingCharacters(in: range, with: string) as NSString
        return newString.length <= maxLength
    }
}



extension UIView {
    
    func applyGradient(colors: [UIColor], gradient orientation: GradientOrientation) {
        //        self.backgroundColor = nil
        self.layoutIfNeeded()
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = colors.map { $0.cgColor }

        gradientLayer.startPoint = orientation.startPoint
        gradientLayer.endPoint = orientation.endPoint
        gradientLayer.frame = self.bounds
        gradientLayer.masksToBounds = false
        
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    enum Direction: Int {
        case topToBottom = 0
        case bottomToTop
        case leftToRight
        case rightToLeft
    }
    
    func applViewGradient(colors: [Any]?, locations: [NSNumber]? = [0.0, 1.0], direction: Direction = .topToBottom) {
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.bounds
        gradientLayer.colors = colors
        gradientLayer.locations = locations
        
        switch direction {
        case .topToBottom:
            gradientLayer.startPoint = CGPoint(x: 0.5, y: 0.0)
            gradientLayer.endPoint = CGPoint(x: 0.5, y: 1.0)
            
        case .bottomToTop:
            gradientLayer.startPoint = CGPoint(x: 0.5, y: 1.0)
            gradientLayer.endPoint = CGPoint(x: 0.5, y: 0.0)
            
        case .leftToRight:
            gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
            gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
            
        case .rightToLeft:
            gradientLayer.startPoint = CGPoint(x: 1.0, y: 0.5)
            gradientLayer.endPoint = CGPoint(x: 0.0, y: 0.5)
        }
        
        //        self.layer.addSublayer(gradientLayer)
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    
    /*
    func addCellGradient (colorArray: [CGColor], startPoint: CGPoint, endpoint: CGPoint){
        let gradient: CAGradientLayer = CAGradientLayer()
        let colors = colorArray
        gradient.frame = bounds
        gradient.colors = colors
        gradient.startPoint = startPoint
        gradient.endPoint = endpoint
//        gradient.locations = [0.0,0.2]
        self.layer.insertSublayer(gradient, at: 0)
    }
*/
}


extension DispatchQueue {

    static func background(delay: Double = 0.0, background: (()->Void)? = nil, completion: (() -> Void)? = nil) {
        DispatchQueue.global(qos: .background).async {
            background?()
            if let completion = completion {
                DispatchQueue.main.asyncAfter(deadline: .now() + delay, execute: {
                    completion()
                })
            }
        }
    }

}



typealias GradientPoints = (startPoint: CGPoint, endPoint: CGPoint)

enum GradientOrientation {
    case topRightBottomLeft
    case topLeftBottomRight
    case horizontal
    case vertical
    
    var startPoint: CGPoint {
        return points.startPoint
    }
    
    var endPoint: CGPoint {
        return points.endPoint
    }
    
    var points: GradientPoints {
        switch self {
        case .topRightBottomLeft:
            return (CGPoint(x: 0.0, y: 1.0), CGPoint(x: 1.0, y: 0.0))
        case .topLeftBottomRight:
            return (CGPoint(x: 0.0, y: 0.0), CGPoint(x: 1, y: 1))
        case .horizontal:
            return (CGPoint(x: 0.0, y: 0.5), CGPoint(x: 1.0, y: 0.5))
        case .vertical:
            return (CGPoint(x: 0.0, y: 0.0), CGPoint(x: 0.0, y: 1.0))
        }
    }
}


extension CALayer {
    func addLineBorder(edge: UIRectEdge, color: UIColor, thickness: CGFloat) {
        let border = CALayer()
        switch edge {
        case UIRectEdge.top:
            border.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: 1)
            break
        case UIRectEdge.bottom:
            border.frame = CGRect(x: 0, y: self.frame.height - 1, width: self.frame.width, height: 1)
            break
        case UIRectEdge.left:
            border.frame = CGRect(x: 0, y: 0, width: 1, height: self.frame.height)
            break
        case UIRectEdge.right:
            border.frame = CGRect(x: self.frame.width - 1, y: 0, width: 1, height: self.frame.height)
            break
        default:
            break
        }
        border.backgroundColor = color.cgColor;
        self.addSublayer(border)
    }
}
class UnderlinedLabel: UILabel {

override var text: String? {
    didSet {
        guard let text = text else { return }
        let textRange = NSMakeRange(0, text.count)
        let attributedText = NSMutableAttributedString(string: text)
        attributedText.addAttribute(NSAttributedString.Key.underlineStyle , value: NSUnderlineStyle.single.rawValue, range: textRange)
        // Add other attributes if needed
        self.attributedText = attributedText
        }
    }
}
extension UICollectionView {

    func setEmptyMessage(_ message: String) {
        let messageLabel = UILabel(frame: CGRect(x: 0, y: 0, width: self.bounds.size.width, height: self.bounds.size.height))
        messageLabel.text = message
        messageLabel.textColor = .red
        messageLabel.numberOfLines = 0;
        messageLabel.textAlignment = .center;
        messageLabel.font = UIFont(name: "TrebuchetMS", size: 15)
        messageLabel.sizeToFit()
        self.backgroundView = messageLabel;
    }

    func restore() {
        self.backgroundView = nil
    }
}
extension UIButton {
    func setbuttonImage(image: String) {
        let button = UIButton()
        button.setImage(UIImage(named: image)?.withRenderingMode(.alwaysTemplate), for: .normal)
        button.tintColor = .white
        
    }
}
//extension UIView {
//   func roundCorners(corners: UIRectCorner, radius: CGFloat) {
//        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
//        let mask = CAShapeLayer()
//        mask.path = path.cgPath
//        layer.mask = mask
//    }
//}
extension UITextField {
    
    func addUnderLine () {
        let bottomLine = CALayer()
        
        bottomLine.frame = CGRect(x: 0.0, y: self.bounds.height + 3, width: self.bounds.width, height: 1.5)
        bottomLine.backgroundColor = UIColor.lightGray.cgColor
        
        self.borderStyle = UITextField.BorderStyle.none
        self.layer.addSublayer(bottomLine)
    }
    
}
extension UIButton {
    func addBakcBtnImage() {
        self.setImage(UIImage(named: "iconLeftArrow")?.withRenderingMode(.alwaysTemplate), for: .normal)
        self.tintColor = .white
        
    }
}
extension UIImageView {
    func applyBlurEffect() {
        let blurEffect = UIBlurEffect(style: .light)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        addSubview(blurEffectView)
    }
}
extension UILabel {
    func setHeaderTitle(title: String,color: UIColor) {
        self.text = title
        self.font = UIFont(name: FontsType.SFProDisplayBoldNavTitle.rawValue, size: 17)
        self.textColor = color
    }
}
extension UIView {
  func addTopBorderWithColor(color: UIColor, width: CGFloat) {
    let border = CALayer()
    border.backgroundColor = color.cgColor
    border.frame = CGRect(x: 0, y: 0, width: self.frame.size.width, height: width)
    self.layer.addSublayer(border)
  }

  func addRightBorderWithColor(color: UIColor, width: CGFloat) {
    let border = CALayer()
    border.backgroundColor = color.cgColor
    border.frame = CGRect(x: self.frame.size.width - width, y: 0, width: width, height: self.frame.size.height)
    self.layer.addSublayer(border)
  }

  func addBottomBorderWithColor(color: UIColor, width: CGFloat) {
    let border = CALayer()
    border.backgroundColor = color.cgColor
    border.frame = CGRect(x: 0, y: self.frame.size.height - width, width: self.frame.size.width, height: width)
    self.layer.addSublayer(border)
  }

  func addLeftBorderWithColor(color: UIColor, width: CGFloat) {
    let border = CALayer()
    border.backgroundColor = color.cgColor
    border.frame = CGRect(x: 0, y: 0, width: width, height: self.frame.size.height)
    self.layer.addSublayer(border)
  }
}
extension UILabel {

    func retrieveTextHeight () -> CGFloat {
        let attributedText = NSAttributedString(string: self.text!, attributes: [NSAttributedString.Key.font:self.font!])

        let rect = attributedText.boundingRect(with: CGSize(width: self.frame.size.width, height: CGFloat.greatestFiniteMagnitude), options: .usesLineFragmentOrigin, context: nil)

        return ceil(rect.size.height)
    }

}
func hexStringToUIColor (hex:String) -> UIColor {
    var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

    if (cString.hasPrefix("#")) {
        cString.remove(at: cString.startIndex)
    }

    if ((cString.count) != 6) {
        return UIColor.gray
    }

    var rgbValue:UInt64 = 0
    Scanner(string: cString).scanHexInt64(&rgbValue)

    return UIColor(
        red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
        alpha: CGFloat(1.0)
    )
}
extension UIButton {
    //MARK:- Animate check mark
    func checkboxAnimation(closure: @escaping () -> Void){
        guard let image = self.imageView else {return}
        
        UIView.animate(withDuration: 0.1, delay: 0.1, options: .curveLinear, animations: {
            image.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
            
        }) { (success) in
            UIView.animate(withDuration: 0.1, delay: 0, options: .curveLinear, animations: {
                self.isSelected = !self.isSelected
                //to-do
                closure()
                image.transform = .identity
            }, completion: nil)
        }
        
    }
}
extension Date {

    func offsetFrom(date: Date) -> String {

        let dayHourMinuteSecond: Set<Calendar.Component> = [.day, .hour, .minute, .second]
        let difference = NSCalendar.current.dateComponents(dayHourMinuteSecond, from: date, to: self)

        let seconds = "\(difference.second ?? 0)s"
        let minutes = "\(difference.minute ?? 0)m" + " " + seconds
        let hours = "\(difference.hour ?? 0)h" + " " + minutes
        let days = "\(difference.day ?? 0)d" + " " + hours

        if let day = difference.day, day          > 0 { return days }
        if let hour = difference.hour, hour       > 0 { return hours }
        if let minute = difference.minute, minute > 0 { return minutes }
        if let second = difference.second, second > 0 { return seconds }
        return ""
    }

}
extension Date {
    /// Returns the amount of years from another date
    func years(from date: Date) -> Int {
        return Calendar.current.dateComponents([.year], from: date, to: self).year ?? 0
    }
    /// Returns the amount of months from another date
    func months(from date: Date) -> Int {
        return Calendar.current.dateComponents([.month], from: date, to: self).month ?? 0
    }
    /// Returns the amount of weeks from another date
    func weeks(from date: Date) -> Int {
        return Calendar.current.dateComponents([.weekOfMonth], from: date, to: self).weekOfMonth ?? 0
    }
    /// Returns the amount of days from another date
    func days(from date: Date) -> Int {
        return Calendar.current.dateComponents([.day], from: date, to: self).day ?? 0
    }
    /// Returns the amount of hours from another date
    func hours(from date: Date) -> Int {
        return Calendar.current.dateComponents([.hour], from: date, to: self).hour ?? 0
    }
    /// Returns the amount of minutes from another date
    func minutes(from date: Date) -> Int {
        return Calendar.current.dateComponents([.minute], from: date, to: self).minute ?? 0
    }
    /// Returns the amount of seconds from another date
    func seconds(from date: Date) -> Int {
        return Calendar.current.dateComponents([.second], from: date, to: self).second ?? 0
    }
    /// Returns the a custom time interval description from another date
    func offset(from date: Date) -> String {
        if years(from: date)   > 0 { return "\(years(from: date))y"   }
        if months(from: date)  > 0 { return "\(months(from: date))M"  }
        if weeks(from: date)   > 0 { return "\(weeks(from: date))w"   }
        if days(from: date)    > 0 { return "\(days(from: date))d"    }
        if hours(from: date)   > 0 { return "\(hours(from: date))h"   }
        if minutes(from: date) > 0 { return "\(minutes(from: date))m" }
        if seconds(from: date) > 0 { return "\(seconds(from: date))s" }
        return ""
    }
}
extension UITableView {

    func setEmptyMessage(_ message: String) {
        let image = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        image.image = UIImage(named: "iconMeroDoctorError")
        let messageLabel = UILabel(frame: CGRect(x: 0, y: 0, width: self.bounds.size.width, height: self.bounds.size.height))
        messageLabel.text = message
        messageLabel.textColor = Theme.Color.Dark_Red_Color
        messageLabel.numberOfLines = 0
        messageLabel.textAlignment = .center
        messageLabel.font = UIFont(name: "TrebuchetMS", size: 15)
        messageLabel.sizeToFit()

        self.backgroundView = messageLabel
        self.separatorStyle = .none
    }

    func restore() {
        self.backgroundView = nil
        self.separatorStyle = .singleLine
    }
}
extension Data {
    var hexString: String {
        let hexString = map { String(format: "%02.2hhx", $0) }.joined()
        return hexString
    }
}
extension String {

    func toDate(withFormat format: String = "MMM d, yyyy")-> Date?{

        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = TimeZone(identifier: "Asia/Tehran")
        dateFormatter.locale = Locale(identifier: "fa-IR")
        dateFormatter.calendar = Calendar(identifier: .gregorian)
        dateFormatter.dateFormat = format
        dateFormatter.amSymbol = "AM"
        dateFormatter.pmSymbol = "PM"
        let date = dateFormatter.date(from: self)

        return date

    }
}
extension String {

    func toDatetwo(withFormat format: String = "yyyy-MM-dd")-> Date?{

        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = TimeZone(identifier: "Asia/Tehran")
        dateFormatter.locale = Locale(identifier: "fa-IR")
        dateFormatter.calendar = Calendar(identifier: .gregorian)
        dateFormatter.dateFormat = format
        let date = dateFormatter.date(from: self)

        return date

    }
}

extension String {
    func removingWhitespaces() -> String {
        return components(separatedBy: .whitespaces).joined()
    }
    func convertDateFormat() -> String {

        var Msg_Date_ = self

           let dateFormatterGet = DateFormatter()
           dateFormatterGet.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
           let dateFormatterPrint = DateFormatter()
           dateFormatterPrint.dateFormat = "EEEE, MMM d, yyyy a"  //"MMM d, h:mm a" for  Sep 12, 2:11 PM
           let datee = dateFormatterGet.date(from: Msg_Date_)
           Msg_Date_ =  dateFormatterPrint.string(from: datee ?? Date())
        return Msg_Date_
    }
}
extension UINavigationController {
  func popToViewController(ofClass: AnyClass, animated: Bool = true) {
    if let vc = viewControllers.last(where: { $0.isKind(of: ofClass) }) {
      popToViewController(vc, animated: animated)
    }
  }
}
extension Sequence where Element: Hashable {
    func uniqued() -> [Element] {
        var set = Set<Element>()
        return filter { set.insert($0).inserted }
    }
}
extension AnimatedField {
    func validatedText(validationType: ValidatorType) throws -> String {
        let validator = ValidatorFactory.validatorFor(type: validationType)
        return try validator.validated(self.text!)
    }
}
extension UITextField {
    func validatedText(validationType: ValidatorType) throws -> String {
        let validator = ValidatorFactory.validatorFor(type: validationType)
        return try validator.validated(self.text!)
    }
}
extension UISearchBar {

func change(textFont : UIFont?) {

    for view : UIView in (self.subviews[0]).subviews {

        if let textField = view as? UITextField {
            textField.font = textFont
        }
    }
} }
enum viewBorder: String {
    case Left = "borderLeft"
    case Right = "borderRight"
    case Top = "borderTop"
    case Bottom = "borderBottom"
}

extension UIView {

    func addBorder(vBorder: viewBorder, color: UIColor, width: CGFloat) {
        let border = CALayer()
        border.backgroundColor = color.cgColor
        border.name = vBorder.rawValue
        switch vBorder {
            case .Left:
            border.frame = CGRect(x: 0, y: 0, width: width, height: self.frame.size.height)
            case .Right:
            border.frame = CGRect(x: self.frame.size.width - width, y: 0, width: width, height: self.frame.size.height)
            case .Top:
            border.frame = CGRect(x: 0, y: 0, width: self.frame.size.width, height: width)
            case .Bottom:
            border.frame = CGRect(x: 0, y: self.frame.size.height - width, width: self.frame.size.width, height: width)
        }
        self.layer.addSublayer(border)
    }

    func removeBorder(border: viewBorder) {
        var layerForRemove: CALayer?
        for layer in self.layer.sublayers! {
            if layer.name == border.rawValue {
                layerForRemove = layer
            }
        }
        if let layer = layerForRemove {
            layer.removeFromSuperlayer()
        }
    }

}
extension UITableView {

    func isLast(for indexPath: IndexPath) -> Bool {

        let indexOfLastSection = numberOfSections > 0 ? numberOfSections - 1 : 0
        let indexOfLastRowInLastSection = numberOfRows(inSection: indexOfLastSection) - 1

        return indexPath.section == indexOfLastSection && indexPath.row == indexOfLastRowInLastSection
    }
}
extension UIImage {
    func imageWithColor(color1: UIColor) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(self.size, false, self.scale)
        color1.setFill()

        let context = UIGraphicsGetCurrentContext()
        context?.translateBy(x: 0, y: self.size.height)
        context?.scaleBy(x: 1.0, y: -1.0)
        context?.setBlendMode(CGBlendMode.normal)

        let rect = CGRect(origin: .zero, size: CGSize(width: self.size.width, height: self.size.height))
        context?.clip(to: rect, mask: self.cgImage!)
        context?.fill(rect)

        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return newImage!
    }
}


