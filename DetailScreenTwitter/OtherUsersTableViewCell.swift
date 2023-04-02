//
//  OtherUsersTableViewCell.swift
//  DetailScreenTwitter
//
//  Created by Barış Savaş on 3.04.2023.
//

import UIKit
import SnapKit

class OtherUsersTableViewCell: UITableViewCell {
    
    static let identifier = "OtherUsersTableViewCell"
    //MARK: UI Components
    //ProfileImage
    private let profileImage: UIImageView = {
        let profileImage = UIImageView()
        profileImage.image = UIImage(named: "ProfileImage2")
        profileImage.contentMode = .scaleAspectFill
        profileImage.layer.cornerRadius = 30
        profileImage.clipsToBounds = true
        return profileImage
    }()
    //UserName
    private let userName: UILabel = {
       let userName = UILabel()
        userName.text = "Barissavass 🍎"
        userName.font = UIFont(name: "AppleSDGothicNeo-Medium", size: 19.0)
        return userName
    }()
    //UserNickName
    private let userNickName:UILabel = {
       let userNickName = UILabel()
        userNickName.text = "@barisavas"
        userNickName.font = UIFont(name: "AppleSDGothicNeo-Medium", size: 15.0)
        return userNickName
    }()
    //Tweets
    private let tweets:UILabel =  {
        let tweets = UILabel()
        tweets.text = " Abi dediklerini en iyi sekilde yapmaya calısıyoruz bol bol ekstralarla kendimizi gelistiriyoruz sabah aksam kodddd jr.iOS developerlar geliyor"
        tweets.numberOfLines = 0
        tweets.font = UIFont(name: "AppleSDGothicNeo-Medium", size: 19.0)
        return tweets
    }()
    //Date
    //likeButtons
    private let likeButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "LikeIcon"), for: .normal)
         return button
    }()
    //retweetButton
    private let retweetButton: UIButton = {
        let button = UIButton()
         button.setImage(UIImage(named: "RetweetIcon"), for: .normal)
         return button
    }()
    //sharedButton
    private let sharedButton: UIButton = {
        let button = UIButton()
         button.setImage(UIImage(named: "ShareIcon"), for: .normal)
         return button
    }()
    //commentButton
    private let commentButton: UIButton = {
       let button = UIButton()
        button.setImage(UIImage(named: "CommentIcon"), for: .normal)
        return button
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    //MARK: UI Constraints
    private func configureUI(){
        contentView.addSubview(profileImage)
        contentView.addSubview(userName)
        contentView.addSubview(userNickName)
        contentView.addSubview(tweets)
        contentView.addSubview(likeButton)
        contentView.addSubview(retweetButton)
        contentView.addSubview(sharedButton)
        contentView.addSubview(commentButton)
        profileImage.snp.makeConstraints { make in
            make.height.equalTo(60)
            make.width.equalTo(60)
            make.top.equalToSuperview().offset(30)
            make.leading.equalToSuperview().offset(10)
        }
        userName.snp.makeConstraints { make in
            make.top.equalTo(profileImage.snp.top)
            make.leading.equalTo(profileImage.snp.trailing).offset(10)
        }
        userNickName.snp.makeConstraints { make in
            make.top.equalTo(profileImage.snp.top)
            make.leading.equalTo(userName.snp.trailing).offset(10)
        }
        tweets.snp.makeConstraints { make in
            make.top.equalTo(profileImage.snp.bottom).offset(15)
            make.leading.equalToSuperview().offset(10)
            make.trailing.equalToSuperview().offset(-5)
        }
        likeButton.snp.makeConstraints { make in
            make.top.equalTo(tweets.snp.bottom).offset(20)
            make.bottom.equalToSuperview().offset(-5)
            make.leading.equalToSuperview().offset(55)
        }
        retweetButton.snp.makeConstraints { make in
            make.top.equalTo(tweets.snp.bottom).offset(20)
            make.bottom.equalToSuperview().offset(-5)
            make.leading.equalTo(likeButton.snp.trailing).offset(55)
        }
        sharedButton.snp.makeConstraints { make in
            make.top.equalTo(tweets.snp.bottom).offset(20)
            make.bottom.equalToSuperview().offset(-5)
            make.leading.equalTo(retweetButton.snp.trailing).offset(55)
        }
        commentButton.snp.makeConstraints { make in
            make.top.equalTo(tweets.snp.bottom).offset(20)
            make.bottom.equalToSuperview().offset(-5)
            make.leading.equalTo(sharedButton.snp.trailing).offset(55)
        }
    }

}
