//
//  FlowLayout.swift
//  myOffice
//
//  Created by Вавилов Илья on 3/5/26.
//

import Foundation
import SwiftUI

// Завайбкодено !!!
struct FlowLayout: Layout {
    
    var spacing: CGFloat = 8
    
    func sizeThatFits(
        proposal: ProposedViewSize,
        subviews: Subviews,
        cache: inout ()
    ) -> CGSize {
        
        let maxWidth = proposal.width ?? 0
        
        var x: CGFloat = 0
        var y: CGFloat = 0
        var rowHeight: CGFloat = 0
        
        for view in subviews {
            
            let size = view.sizeThatFits(.unspecified)
            
            if x + size.width > maxWidth {
                
                x = 0
                y += rowHeight + spacing
                rowHeight = 0
            }
            
            rowHeight = max(
                rowHeight,
                size.height
            )
            
            x += size.width + spacing
        }
        
        return CGSize(
            width: maxWidth,
            height: y + rowHeight
        )
    }
    
    func placeSubviews(
        in bounds: CGRect,
        proposal: ProposedViewSize,
        subviews: Subviews,
        cache: inout ()
    ) {
        
        var x = bounds.minX
        var y = bounds.minY
        var rowHeight: CGFloat = 0
        
        for view in subviews {
            
            let size = view.sizeThatFits(.unspecified)
            
            if x + size.width > bounds.maxX {
                
                x = bounds.minX
                y += rowHeight + spacing
                rowHeight = 0
            }
            
            view.place(
                at: CGPoint(
                    x: x,
                    y: y
                ),
                proposal: .unspecified
            )
            
            x += size.width + spacing
            
            rowHeight = max(
                rowHeight,
                size.height
            )
        }
    }
}
// ----------------------------------------
