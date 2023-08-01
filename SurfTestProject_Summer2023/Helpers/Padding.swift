//
//  Padding.swift
//  SurfTestProject_Summer2023
//
//  Created by Марк Райтман on 01.08.2023.
//

import Foundation
import UIKit

//Это класс `PaddedLabel` на языке Swift, который наследуется от класса `UILabel`.
class PaddedLabel: UILabel {
    
    //Определяет переменную экземпляра padding типа UIEdgeInsets.
    //По умолчанию он инициализируется нулевым отступом.
    var padding = UIEdgeInsets.zero
    
    //Переопределяет метод drawText класса `UILabel`, чтобы рисовать текст внутри указанного прямоугольника
    //после применения дополнительных внутренних отступов, заданных в `padding`.
    override func drawText(in rect: CGRect) {
        //Вызывает базовую реализацию метода drawText,
        //но использует прямоугольник с отступами, прежде чем рисовать текст.
        super.drawText(in: rect.inset(by: padding))
    }
    
    //Переопределяет метод intrinsicContentSize класса `UILabel`,
    //чтобы рассчитать размер метки, если бы она была нарисована с текстом и отступами.
    override var intrinsicContentSize: CGSize {
        //Получает размер содержимого на основе текущего текста метки без каких-либо отступов.
        var size = super.intrinsicContentSize
        //Добавляет левый и правый отступы к вычисленной ширине размера содержимого.
        size.width += padding.left + padding.right
        //Добавляет верхний и нижний отступы к вычисленной высоте размера содержимого.
        size.height += padding.top + padding.bottom
        //Возвращает новый размер метки с добавленными отступами.
        return size
    }
}
