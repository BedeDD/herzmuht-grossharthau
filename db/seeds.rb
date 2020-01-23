User.create!([
                 {email: "benni@herzmuth-grossharthau.de", encrypted_password: "$2a$12$Yn8AySq.xVv4caR4UXltSOpJq5Y1IIC5XwgE/QdMD67Be7Wor4x3G", confirmation_token: nil, remember_token: "f61bf5bd85fd18b4d78e2e63539c93cf20bf5b1c"},
                 {email: "christin@herzmuth-grossharthau.de", encrypted_password: "$2a$12$oRXRf2OZNBRhR4WxsZsuOuL2q.6tLdm7N.9dcDYHGtQxW6WE.NERm", confirmation_token: nil, remember_token: "1a4eb5dd4e819c43790ee25356996620dcf1c326"}
             ])

Page.create!([
                 {seo_url: "ueber-mich", nav_name: "Über mich", title: "Über mich - Ich stelle mich vor", heading: "Über mich", rank: 0},
                 {seo_url: "projekt-herzmuht", nav_name: "Projekt HerzMuht", title: "Projetk HerzMuht", heading: "Projetk HerzMuht", rank: 1},
                 {seo_url: "veranstaltung", nav_name: "Veranstaltung", title: "Veranstaltung", heading: "Unser nächstes Hoffest", rank: 4},
                 {seo_url: "galerie", nav_name: "Galerie", title: "Galerie", heading: "Galerie", rank: 2},
                 {seo_url: "faq", nav_name: "FAQ", title: "FAQ", heading: "FAQ", rank: 3},
                 {seo_url: "kontakt", nav_name: "Kontakt", title: "Kontakt", heading: "Kontakt", rank: 5},
                 {seo_url: "impressum", nav_name: "Impressum", title: "Impressum", heading: "Impressum", rank: 999}
             ])

