//
//  ViewController.swift
//  ThreeObjectsAR
//
//  Created by dam2 on 22/5/24.
//

import UIKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate {
    
    @IBOutlet weak var sceneView: ARSCNView!
    let configuration = ARWorldTrackingConfiguration()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.sceneView.debugOptions = [ARSCNDebugOptions.showWorldOrigin, ARSCNDebugOptions.showFeaturePoints]
        
        self.configuration.planeDetection = .horizontal
        self.sceneView.session.run(configuration)
        
    }
    
    
    
    func addNode(){
        let medusaScene = SCNScene(named: "art.scnassets/medusa.scn")
        let medusaNode = medusaScene?.rootNode.childNode(withName: "", recursively: false)
    }


}

