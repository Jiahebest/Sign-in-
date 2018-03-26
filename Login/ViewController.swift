//
//  ViewController.swift
//  Login
//
//  Created by gdcp on 2018/3/26.
//  Copyright © 2018年 gdcp. All rights reserved.
//

import UIKit
let SCREEN_SIZE = UIScreen.main.bounds.size

class ViewController: UIViewController {
    //创建控件
    var loginText:UITextField?
    var passwordText:UITextField?
    //获取屏幕尺寸
        override func viewDidLoad() {
        super.viewDidLoad()
        //为控件的属性赋值
            loginText = UITextField(frame: CGRect(x: 20, y: 80, width: SCREEN_SIZE.width-40, height: 30))
        loginText?.borderStyle = .roundedRect
        loginText?.placeholder = "请输入用户名"
        let loginImage = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        loginImage.image = UIImage(named: "login_user")
        loginText?.leftView = loginImage
        loginText?.leftViewMode = .always
        
        
        //为passwordTextfiled属性赋值
        passwordText = UITextField(frame: CGRect(x: 20, y: 130, width: SCREEN_SIZE.width-40, height: 30))
        passwordText?.borderStyle = .roundedRect
        passwordText?.placeholder = "请输入用户名"
        let passwordImage = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        passwordImage.image = UIImage(named: "login_pwdico")
        passwordText?.leftView = passwordImage
        passwordText?.leftView = passwordImage
        passwordText?.leftViewMode = .always
        self.view.addSubview(loginText!)
        self.view.addSubview(passwordText!)
        
        //创建登录按钮和注册按钮
            
        let btn = UIButton(type: .system)
        btn.frame = CGRect(x: SCREEN_SIZE.width/4-50, y: 180, width: 100, height: 30)
        btn.setTitle("登录", for: .normal)
        btn.layer.masksToBounds = true
        btn.layer.cornerRadius = 10
        btn.backgroundColor = UIColor.cyan
        btn.addTarget(self, action: #selector(login), for: .touchUpInside)
        
        let btn2 = UIButton(type: .system)
        btn2.frame = CGRect(x: SCREEN_SIZE.width/4*3-50, y: 180, width: 100, height: 30)
        btn2.setTitle("注册", for: .normal)
        btn2.layer.masksToBounds = true
        btn2.layer.cornerRadius = 10
        btn2.backgroundColor = UIColor.cyan
        btn2.addTarget(self, action: #selector(regis), for: .touchUpInside)
        self.view.addSubview(btn)
        self.view.addSubview(btn2)
    }
    func regis(){
        //实例化视图控制器
        let regisController = RegisControllerViewController()
        //切换视图
        self.present(regisController, animated: true, completion: nil)
    }
    
    func login(){
        //判断loginText控件是否为空
        if loginText!.text!.isEmpty{
            let alertCon = UIAlertController(title: "温馨提示", message: "请输入用户名", preferredStyle: .alert)
            let action = UIAlertAction(title: "好的",style:.default,handler:nil)
            alertCon.addAction(action)
            self.present(alertCon, animated: true, completion: nil)
            return
        }
        //判断passwordText控件是否为空
        if passwordText!.text!.isEmpty{
            let alertCon = UIAlertController(title: "温馨提示", message: "请输入密码", preferredStyle: .alert)
            let action = UIAlertAction(title: "好的",style:.default,handler:nil)
            alertCon.addAction(action)
            self.present(alertCon, animated: true, completion: nil)
            return
        }
        let alertCon = UIAlertController(title: "温馨提示", message: "登录成功", preferredStyle: .alert)
        let action = UIAlertAction(title: "好的",style:.default,handler:nil)
        alertCon.addAction(action)
        self.present(alertCon, animated: true, completion: nil)
        return
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

