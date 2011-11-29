# encoding: UTF-8

Post.delete_all
4.times do |_|
  Post.create(permalink: "samij-malenkiy-v-mire-robot",
              title: "Самый маленький в мире робот на радиоуправлении",
              preview: %{Известный своими передовыми игрушками японский 
                         производитель Takara Tomy недавно показал миру 
                         свою новейшую разработку: самого маленького 
                         радиоуправляемого в мире робота под кодовым именем Robo-Q},
              content: %{Известный своими передовыми игрушками японский производитель 
                          Takara Tomy недавно показал миру свою новейшую разработку: 
                          самого маленького радиоуправляемого в мире робота под 
                          кодовым именем Robo-Q. Несмотря на мизерный размер, 
                          Robo-Q обладает кое-каким интеллектом — к примеру, 
                          он может сам избегать препятствий на пути, выбираться
                           из несложных лабиринтов и пинать мини-мячик с другими 
                          минироботами. Последнее делает его отличной офисной игрушкой. 
                          Так как каждый Robo-Q может работать на своей собственной 
                          частоте, ничто не мешает проводить футбольные баталии 
                          с участием нескольких роботов.},
              visible: true)

  Post.create(permalink: "zhizn-na-marse-mogla",
              title: "Жизнь на марсе могла существовать только под землей",
              preview: "Изучение глинистых минералов на Марсе показало, что условия, пригодные для жизни, были только в подповерхностном слое, где присутствовали гидротермальные воды, говорится в статье, опубликованной в журнале Nature американскими и европейскими учеными.",
              content: "Изучение глинистых минералов на Марсе показало, что условия, пригодные для жизни, были только в подповерхностном слое, где присутствовали гидротермальные воды, говорится в статье, опубликованной в журнале Nature американскими и европейскими учеными.

  Взаимодействие между водой и породой вулканического происхождения приводит к появлению глинистых минералов, филлосиликатов, в состав которых входят молекулы воды или гидроксильные группы OH. Исследование процесса формирования таких пород может помочь понять, каким был климат в этом месте в прошлом. С 2005 года филлосиликаты были обнаружены в тысячах различных точек на Марсе.

  Ученые под руководством Бетани Эльманн (Bethany Ehlmann) из парижского Института космической астрофизики проанализировали данные о 350 районах Марса, собранные европейскими и американскими автоматическим станциями, чтобы выяснить, как образовались здесь глинистые минералы. На Земле такие минералы формируются у поверхности под действием атмосферной воды или в океанах.",
              visible: true)
end    
