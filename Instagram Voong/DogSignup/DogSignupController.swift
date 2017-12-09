//
//  DogSignupController.swift
//  Instagram Voong
//
//  Created by Puroof on 9/18/17.
//  Copyright © 2017 ModalApps. All rights reserved.
//

import UIKit
import UIKit
import Firebase
import LBTAComponents


class DogSignupController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    let takePhotoButton: UIButton = {
        let button = UIButton(type: UIButtonType.system)
        button.backgroundColor = UIColor.orange
        //button.setTitle("Take Photo", for: UIControlState.normal)
    
        let attributedTitle = NSMutableAttributedString(string: "TAKE ", attributes: [NSAttributedStringKey.font : UIFont.systemFont(ofSize: 14), NSAttributedStringKey.foregroundColor: UIColor.lightGray])
        
        
        attributedTitle.append(NSMutableAttributedString(string: "PHOTO", attributes: [NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 14), NSAttributedStringKey.foregroundColor : UIColor.lightGray]))
        button.setAttributedTitle(attributedTitle, for: .normal)
        
        //
        // https://stackoverflow.com/questions/604632/how-do-you-add-multi-line-text-to-a-uibutton
        button.titleLabel?.numberOfLines = 0
        button.titleLabel?.textAlignment = NSTextAlignment.center
        button.sizeToFit()
        //button.contentVerticalAlignment = .center
        button.setTitleColor(UIColor.black, for: UIControlState.normal)
        button.addTarget(self, action: #selector(handleTakePhoto), for: UIControlEvents.touchUpInside)
        return button
    }()
    
    let browsePhotoButton: UIButton = {
        let button = UIButton(type: UIButtonType.system)
        button.backgroundColor = UIColor.purple
        //button.setTitle("Take Photo", for: UIControlState.normal)
        
        let attributedTitle = NSMutableAttributedString(string: "BROWSE ", attributes: [NSAttributedStringKey.font : UIFont.systemFont(ofSize: 14), NSAttributedStringKey.foregroundColor: UIColor.lightGray])
        
        
        attributedTitle.append(NSMutableAttributedString(string: "PHOTOS", attributes: [NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 14), NSAttributedStringKey.foregroundColor : UIColor.lightGray]))
        button.setAttributedTitle(attributedTitle, for: .normal)
        
        //
        // https://stackoverflow.com/questions/604632/how-do-you-add-multi-line-text-to-a-uibutton
        button.titleLabel?.numberOfLines = 0
        button.titleLabel?.textAlignment = NSTextAlignment.center
        button.sizeToFit()
        //button.contentVerticalAlignment = .center
        button.setTitleColor(UIColor.black, for: UIControlState.normal)
        button.addTarget(self, action: #selector(handleBrowsePhoto), for: UIControlEvents.touchUpInside)
        return button
    }()
    
    @objc func handleTakePhoto() {
        print("Handle Take Photo")
    }
    
    @objc func handleBrowsePhoto() {
        print("Handle Browse Photo")
    }
    
    let maleButton: UIButton = {
        let button = UIButton(type: UIButtonType.system)
        button.frame = CGRect(x: 0, y: 0, width: 75, height: 75)
        button.clipsToBounds = true
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.black.cgColor
        button.setTitle("M", for: UIControlState.normal)
        button.titleLabel?.textAlignment = NSTextAlignment.center
        //button.sizeToFit()
        button.layer.cornerRadius = button.frame.size.width / 2
        button.layer.masksToBounds = true
        //button.contentVerticalAlignment = .center
        button.setTitleColor(UIColor.black, for: UIControlState.normal)
        button.addTarget(self, action: #selector(handleTakePhoto), for: UIControlEvents.touchUpInside)

        return button
    }()
    
    let femaleButton: UIButton = {
        let button = UIButton(type: UIButtonType.system)
        button.frame = CGRect(x: 0, y: 0, width: 75, height: 75)
        button.clipsToBounds = true
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.black.cgColor
        button.setTitle("F", for: UIControlState.normal)
        button.titleLabel?.textAlignment = NSTextAlignment.center
        //button.sizeToFit()
        button.layer.cornerRadius = button.frame.size.width / 2
        button.layer.masksToBounds = true
        //button.contentVerticalAlignment = .center
        button.setTitleColor(UIColor.black, for: UIControlState.normal)
        button.addTarget(self, action: #selector(handleTakePhoto), for: UIControlEvents.touchUpInside)
        
        return button
    }()
    
    let spayCheckbox: UIButton = {
        let button = UIButton(type: UIButtonType.system)
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.black.cgColor
        button.sizeToFit()
        button.contentVerticalAlignment = .center
        button.setTitleColor(UIColor.black, for: UIControlState.normal)
        button.addTarget(self, action: #selector(handleTakePhoto), for: UIControlEvents.touchUpInside)
        return button
    }()
    
    let logoImageView: UIImageView = {
        let image = UIImage(named: "dog_shadow")
        let imageView = UIImageView(image: image)
        return imageView
    }()
    
    let plusPhotoButton: UIButton = {
        let button = UIButton()
        button.imageView?.image = UIImage(named: "dog_shadow")
        //button.setImage(#imageLiteral(resourceName: "dog_no_shadow").withRenderingMode(.alwaysOriginal), for: .normal)
        button.addTarget(self, action: #selector(handlePlusButton), for: .touchUpInside)
        button.imageView?.backgroundColor = UIColor.red
        return button
    }()
    
    
    @objc func handlePlusButton() {
//        let imagePickerController = UIImagePickerController()
//        imagePickerController.delegate = self
//        imagePickerController.allowsEditing = true
//        present(imagePickerController, animated: true, completion: nil)
        print("handling plus button")
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
//
//        if let editedImage = info["UIImagePickerControllerEditedImage"] as? UIImage {
//            plusPhotoButton.setImage(editedImage.withRenderingMode(.alwaysOriginal), for: .normal)
//
//        } else if let originalImage = info["UIImagePickerControllerOriginalImage"] as? UIImage {
//            plusPhotoButton.setImage(originalImage.withRenderingMode(.alwaysOriginal), for: .normal)
//        }
//
//        plusPhotoButton.layer.cornerRadius = plusPhotoButton.frame.width/2
//        plusPhotoButton.layer.masksToBounds = true
//        plusPhotoButton.layer.borderColor = UIColor.black.cgColor
//        plusPhotoButton.layer.borderWidth = 3
    
        dismiss(animated: true, completion: nil)
    }
    
    let dogBreedTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Dog Breed"
        tf.backgroundColor = UIColor(white: 0, alpha: 0.03)
        tf.borderStyle = .roundedRect
        tf.font = UIFont.systemFont(ofSize: 14)
        tf.addTarget(self, action: #selector(handleTextInputChange), for: .editingChanged)
        tf.textAlignment = .center
        return tf
    }()
    
    let weightTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Weight"
        tf.isSecureTextEntry = true
        tf.backgroundColor = UIColor(white: 0, alpha: 0.03)
        tf.borderStyle = .roundedRect
        tf.font = UIFont.systemFont(ofSize: 14)
        tf.addTarget(self, action: #selector(handleTextInputChange), for: .editingChanged)
        tf.textAlignment = .center
        return tf
    }()
    
    let dogNameTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Name"
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.backgroundColor = UIColor(white: 0, alpha: 0.03)
        tf.borderStyle = .roundedRect
        tf.font = UIFont.systemFont(ofSize: 14)
        tf.textAlignment = .center
        
        tf.addTarget(self, action: #selector(handleTextInputChange), for: .editingChanged)
        return tf
    }()
    
    
    @objc func handleBackButton() {
        print("Handle Back Button")
        dismiss(animated: true)
    }
    
    @objc func handleSignInButton() {
        print("Handle Sign In Button")
        dismiss(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        navigationItem.title = "Create Profile"
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Back", style: UIBarButtonItemStyle.plain, target: self, action: #selector(handleBackButton))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Sign In", style: UIBarButtonItemStyle.plain, target: self, action: #selector(handleSignInButton))
        
        
        //view.addSubview(plusPhotoButton)
        //view.addSubview(alreadyHaveAccountButton)
        
//        plusPhotoButton.anchor(view.topAnchor, left: nil, bottom: nil, right: nil, topConstant: 40, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 300, heightConstant: 300)
//
//        plusPhotoButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(logoImageView)
        
        _ = logoImageView.anchor(view.centerYAnchor, left: nil, bottom: nil, right: nil, topConstant: -230, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 140, heightConstant: 140)
        
        // Centers in the middle
        logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
        //alreadyHaveAccountButton.anchor(nil, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 50)
        
        
        view.addSubview(signUpButton)
        signUpButton.anchor(nil, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 50)
        setupInputFields()
        
        
    }
    
    @objc func handleTextInputChange() {
        let isFormValid = dogNameTextField.text?.characters.count ?? 0 > 0 &&
            dogBreedTextField.text?.characters.count ?? 0 > 0 &&
            weightTextField.text?.characters.count ?? 0 > 0
        
        if isFormValid {
            signUpButton.isEnabled = true
            signUpButton.backgroundColor = UIColor.rgb(red: 17, green: 154, blue: 237)
        } else {
            signUpButton.isEnabled = false
            signUpButton.backgroundColor = UIColor.rgb(red: 149, green: 204, blue: 244)
        }
    }
    
    let signUpButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sign Up", for: .normal)
        button.backgroundColor = UIColor.rgb(red: 149, green: 204, blue: 244)
        button.layer.cornerRadius = 5
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(.white, for: .normal)
        
        button.addTarget(self, action: #selector(handleSignUp), for: .touchUpInside)
        
        button.isEnabled = false
        return button
    }()
    
    @objc func handleSignUp() {
        print("handling signup button")
    }
    
    
    
    let alreadyHaveAccountButton: UIButton = {
        let button = UIButton(type: UIButtonType.system)
        
        let attributedTitle = NSMutableAttributedString(string: "Already have an account?  ", attributes: [NSAttributedStringKey.font : UIFont.systemFont(ofSize: 14), NSAttributedStringKey.foregroundColor: UIColor.lightGray])
        
        attributedTitle.append(NSMutableAttributedString(string: "Sign In", attributes: [NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 14), NSAttributedStringKey.foregroundColor : UIColor.rgb(red: 149, green: 204, blue: 244)]))
        
        
        button.setAttributedTitle(attributedTitle, for: .normal)
        button.addTarget(self, action: #selector(handleAlreadyHaveAccount), for: .touchUpInside)
        
        return button
    }()
    
    @objc func handleAlreadyHaveAccount() {
        navigationController?.popViewController(animated: true)
        print(123)
    }
    
    let spayLabel: UILabel = {
        let label = UILabel()
        label.text = "Spayed/neutered?"
        return label
    }()
    
    
    fileprivate func setupInputFields() {
        let genderStackView = UIStackView(arrangedSubviews: [maleButton, femaleButton])
        genderStackView.axis = .horizontal
        genderStackView.alignment = .center
        
//        https://stackoverflow.com/questions/32551890/how-to-add-leading-padding-to-view-added-inside-an-uistackview
        genderStackView.layoutMargins = UIEdgeInsets(top: 0, left: 30, bottom: 0, right: 30)
        genderStackView.isLayoutMarginsRelativeArrangement = true
        genderStackView.distribution = .fillEqually
        
        let spayStackView = UIStackView(arrangedSubviews: [spayCheckbox, spayLabel])
        spayStackView.axis = .horizontal
        spayStackView.alignment = .center
        genderStackView.layoutMargins = UIEdgeInsets(top: 0, left: 2, bottom: 0, right: 2)
        genderStackView.isLayoutMarginsRelativeArrangement = true
        genderStackView.setCustomSpacing(5, after: spayCheckbox)
        spayStackView.distribution = .fillProportionally
        
        
        let genderSpayStackView = UIStackView(arrangedSubviews: [genderStackView, spayStackView])
        genderSpayStackView.axis = .horizontal
        genderSpayStackView.distribution = .fillEqually
        
        
        let breedWeightStackView = UIStackView(arrangedSubviews: [dogBreedTextField, weightTextField])
        breedWeightStackView.distribution = .fillEqually
        breedWeightStackView.axis = .horizontal
        breedWeightStackView.spacing = 10
        
        
        let stackView = UIStackView(arrangedSubviews: [dogNameTextField, breedWeightStackView, genderSpayStackView])
        
        
        
        
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        stackView.spacing = 10
    
        view.addSubview(stackView)
        
        stackView.anchor(logoImageView.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 20, leftConstant: 20, bottomConstant: 0, rightConstant: 20, widthConstant: 200, heightConstant: 200)
        
        view.addSubview(takePhotoButton)
        view.addSubview(browsePhotoButton)
        
        takePhotoButton.anchor(nil, left: stackView.leftAnchor, bottom: stackView.topAnchor, right: logoImageView.leftAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 20, rightConstant: 20, widthConstant: 0, heightConstant: 70)
        
        browsePhotoButton.anchor(nil, left: logoImageView.rightAnchor, bottom: stackView.topAnchor, right: stackView.rightAnchor, topConstant: 0, leftConstant: 20, bottomConstant: 20, rightConstant: 0, widthConstant: 0, heightConstant: 70)
    
        
        
    }
    
 
    
}
