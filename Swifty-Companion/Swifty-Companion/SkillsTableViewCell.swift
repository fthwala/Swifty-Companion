//
//  SkillsTableViewCell.swift
//  Swifty-Companion
//
//  Created by Asahel RANGARIRA on 2018/10/22.
//  Copyright © 2018 Khomotjo. All rights reserved.
//

import UIKit

class SkillsTableViewCell: UITableViewCell {

    @IBOutlet weak var skillsLabel: UILabel!
    @IBOutlet weak var skillsPercentageLabel: UILabel!
    @IBOutlet weak var skillsProgressBar: UIProgressView!
    
    
    var skill : (Skills)? {
        didSet {
            if let s = skill {
                skillsLabel?.text = s.name
                skillsPercentageLabel?.text = String(s.level)
                skillsProgressBar?.progress = Float(s.level)
            }
        }
    }
}

//import UIKit
//
//class ProjectsTableViewCell: UITableViewCell {
//    
//    @IBOutlet weak var projectLabel: UILabel!
//    
//    @IBOutlet weak var projectPercentageLabel: UILabel!
//    
//    var project : (Projects_users)?
//    {
//        didSet{
//            if let s = project {
//                projectLabel.text = s.project?.name
//                projectPercentageLabel.text = String(s.final_mark)
//            }
//        }
//    }
//}
