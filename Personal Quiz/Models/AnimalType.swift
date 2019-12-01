//
//  AnimalType.swift
//  Personal Quiz
//
//  Created by Stepan Vasilyeu on 12/1/19.
//  Copyright © 2019 Stepan Vasilyeu. All rights reserved.
//

enum AnimalType: Character {
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "Вам нравится быть с друзьями. Вы окружаете себя людьми, которые вам нравятся и всегда готовы помочь другим."
        case .cat:
            return "Вы себе на уме. Любите гулять сами по себе. Вы цените одиночество."
        case .rabbit:
            return "Вам нравится все мягкое. Вы здоровы и полны энергии."
        case .turtle:
            return "Ваша сила - в мутдрости. Медленный и вдумчивый выигрывает на больших дистанциях."
        }
    }
}
