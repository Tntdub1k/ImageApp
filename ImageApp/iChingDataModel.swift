//
//  IChing_BookDataModel.swift
//  ImageApp
//
//  Created by Nick on 2/5/18.
//  Copyright © 2018 Nick. All rights reserved.
//

import Foundation


public class IChingNumber
{
    public var EngTitle, ChiTitle, ChiSymbol, AltTitles, Hex, Above, Below, AboveSymbol, BelowSymbol, Intro1, TheJudgment, Intro2, TheImage, Intro3, Read1,Read2,Read3, Read4,Read5, Read6, Place1ChangesToTitle,Place2ChangesToTitle,Place3ChangesToTitle,Place4ChangesToTitle,Place5ChangesToTitle,Place6ChangesToTitle, SquareCircle1,SquareCircle2, SquareCircle3, SquareCircle4, SquareCircle5, SquareCircle6  : String
    public var Place1ChangesToNumber, Place2ChangesToNumber, Place3ChangesToNumber, Place4ChangesToNumber, Place5ChangesToNumber, Place6ChangesToNumber: Int
    public var Code: [Int]
    init(){
        

    EngTitle = ""
    ChiTitle = ""
    ChiSymbol = ""
    AltTitles = ""
    Hex = ""
    Above = ""
    Below = ""
    AboveSymbol = ""
    BelowSymbol = ""
    Intro1 = ""
    TheJudgment = ""
    Intro2 = ""
    TheImage = ""
    Intro3 = ""
    Read1 = ""
    Read2 = ""
    Read3 = ""
    Read4 = ""
    Read5 = ""
    Read6 = ""
    Place1ChangesToNumber = 0
    Place2ChangesToNumber = 0
    Place3ChangesToNumber = 0
    Place4ChangesToNumber = 0
    Place5ChangesToNumber = 0
    Place6ChangesToNumber = 0
    Place1ChangesToTitle = ""
    Place2ChangesToTitle = ""
    Place3ChangesToTitle = ""
    Place4ChangesToTitle = ""
    Place5ChangesToTitle = ""
    Place6ChangesToTitle = ""
    SquareCircle1 = ""
    SquareCircle2 = ""
    SquareCircle3 = ""
    SquareCircle4 = ""
    SquareCircle5 = ""
    SquareCircle6 = ""
    Code = Array(repeating:0, count:6)
 }
 
    
    
    }

public class IChing
{
    var IChing_Book = Array(repeating:IChingNumber(), count:65)
    
    init(){
        for i in (0...63)
        {
            IChing_Book[i] = IChingNumber();
        }
        
      

        
        var Hexagram:Int
                
        Hexagram = 1;
        IChing_Book[Hexagram].EngTitle = "The Creative (Heaven)"

        IChing_Book[Hexagram].ChiTitle = "Ch'ien "

        IChing_Book[Hexagram].ChiSymbol = " 乾 "


        IChing_Book[Hexagram].AltTitles = "The Creative, The Symbol of Heaven, The Creative Principle, Force, The Key, Creativity, The Originating, Creative Power, Primal Power, Yang, The Life Force, Kundalini, God the Father "

        IChing_Book[Hexagram].Hex = "䷀ "

        IChing_Book[Hexagram].Code = [ 1, 1, 1, 1, 1, 1 ]
        IChing_Book[Hexagram].Above =
                    
        """
         CH'IEN / THE CREATIVE, HEAVEN 
        """

        IChing_Book[Hexagram].Below =
                    
        """
         CH'IEN / THE CREATIVE, HEAVEN 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☰ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☰ 
        """

        IChing_Book[Hexagram].Intro1 =
                    
        """
         The first hexagram is made up of six unbroken lines.  These unbroken lines stand for the primal power, which is light–giving, active, strong, and of the spirit.  The hexagram is consistently strong in character, and since it is without weakness, its essence is power or energy.  Its image is heaven.  Its energy is represented as unrestricted by any fixed conditions in space and is therefore conceived of as motion.  Time is regarded as the basis of this motion.  Thus the hexagram includes also the power of time and the power of persisting in time, that is, duration. The power represented by the hexagram is to be interpreted in a dual sense—in terms of its action on the universe and of its action on the world of men.  In relation to the universe, the hexagram expresses the strong, creative action of the Deity.  In relation to the human world, it denotes the creative action of the holy man or sage, of the ruler or leader of men, who through his power awakens and develops their higher nature. 
        """

        IChing_Book[Hexagram].TheJudgment =
                    
        """
         THE CREATIVE works sublime success,  Furthering through perseverance. 
        """

        IChing_Book[Hexagram].Intro2 =
                    
        """
         According to the original meaning, the attributes [sublimity, potentiality of success, power to further, perseverance] are paired.  When an individual draws this oracle, it means that success will come to him from the primal depths of the universe and that everything depends upon his seeking his happiness and that of others in one way only, that is, by perseverance in what is right. The specific meanings of the four attributes became the subject of speculation at an early date.  The Chinese word here rendered by “sublime” means literally “head,” “origin,” “great.”  This is why Confucius says in explaining it: “Great indeed is the generating power of the Creative; all beings owe their beginning to it.  This power permeates all heaven.”  For this attribute inheres in the other three as well. The beginning of all things lies still in the beyond in the form of ideas that have yet to become real.  But the Creative furthermore has power to lend form to these archetypes of ideas.  This is indicated in the word success, and the process is represented by an image from nature: “The clouds pass and the rain does its work, and all individual beings flow into their forms.” Applied to the human world, these attributes show the great man the way to notable success: “Because he sees with great clarity causes and effects, he completes the six steps at the right time and mounts toward heaven on them at the right time, as though on six dragons.”  The six steps are the six different positions given in the hexagram, which are represented later by the dragon symbol.  Here it is shown that the way to success lies in apprehending and giving actuality to the way of the universe [tao], which, as a law running through end and beginning, brings about all phenomena in time.  Thus each step attained forthwith becomes a preparation for the next.  Time is no longer a hindrance but the means of making actual what is potential. The act of creation having found expression in the two attributes sublimity and success, the work of conservation is shown to be a continuous actualization and differentiation of form.  This is expressed in the two terms “furthering” (literally, “creating that which accords with the nature of a given being”) and “persevering” (literally, “correct and firm”).  “The course of the Creative alters and shapes beings until each attains its true, specific nature, then it keeps them in conformity with the Great Harmony.  Thus does it show itself to further through perseverance.” In relation to the human sphere, this shows how the great man brings peace and security to the world through his activity in creating order: “He towers high above the multitude of beings, and all lands are united in peace.” Another line of speculation goes still further in separating the words “sublime,” “success,” “furthering,” “perseverance,” and parallels them with the four cardinal virtues in humanity.  To sublimity, which, as the fundamental principle, embraces all the other attributes, it links love.  To the attribute success are linked the mores, which regulate and organize expressions of love and thereby make them successful.  The attribute furthering is correlated with justice, which creates the conditions in which each receives that which accords with his being, that which is due him and which constitutes his happiness.  The attribute perseverance is correlated with wisdom, which discerns the immutable laws of all that happens and can therefore bring about enduring conditions.  These speculations, already broached in the commentary called Wên Yen, later formed the bridge connecting the philosophy of the “five stages (elements) of change,” as laid down in the Book of History (Shu Ching) with the philosophy of the Book of Changes, which is based solely on the polarity of positive and negative principles.  In the course of time this combination of the two systems of thought opened the way for an increasingly intricate number symbolism. 
        """

        IChing_Book[Hexagram].TheImage =
                    
        """
         The movement of heaven is full of power.  Thus the superior man makes himself strong and untiring. 
        """

        IChing_Book[Hexagram].Intro3 =
                    
        """
         Since there is only one heaven, the doubling of the trigram Ch’ien, of which heaven is the image, indicates the movement of heaven.  One complete revolution of heaven makes a day, and the repetition of the trigram means that each day is followed by another.  This creates the idea of time.  Since it is the same heaven moving with untiring power, there is also created the idea of duration both in and beyond time, a movement that never stops nor slackens, just as one day follows another in an unending course.  This duration in time is the image of the power inherent in the Creative.\nWith this image as a model, the sage learns how best to develop himself so that his influence may endure.  He must make himself strong in every way, by consciously casting out all that is inferior and degrading.  Thus he attains that tirelessness which depends upon consciously limiting the fields of his activity. 
        """

        IChing_Book[Hexagram].Read1 =
                    
        """
         Nine in the beginning means:  Hidden Dragon. Do not act. 
        """

        IChing_Book[Hexagram].Read2 =
                    
        """
         Nine in the second place means:  Dragon appearing in the field.  It furthers one to see the great man. 
        """

        IChing_Book[Hexagram].Read3 =
                    
        """
         Nine in the third place means:  All day long the superior man is creatively active.  At nightfall his mind is still beset with cares.  Danger. No blame. 
        """

        IChing_Book[Hexagram].Read4 =
                    
        """
         Nine in the fourth place means:  Wavering flight over the depths.  No blame. 
        """

        IChing_Book[Hexagram].Read5 =
                    
        """
         Nine in the fifth place means:  Flying Dragon in the heavens.  It furthers one to see the great man. 
        """

        IChing_Book[Hexagram].Read6 =
                    
        """
         Nine at the top means:  Arrogant Dragon will have cause to repent.

         When all the lines are nines,  it means:  There appears a flight of dragons without heads.  Good fortune. 
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 44;
        IChing_Book[Hexagram].Place1ChangesToTitle =
                    
        """
         Coming to Meet ䷫ 
        """

        IChing_Book[Hexagram].Place2ChangesToNumber = 13;
        IChing_Book[Hexagram].Place2ChangesToTitle =
                    
        """
         Fellowship with Men ䷌ 
        """

        IChing_Book[Hexagram].Place3ChangesToNumber = 10;
        IChing_Book[Hexagram].Place3ChangesToTitle =
                    
        """
         Treading (Conduct) ䷉ 
        """

        IChing_Book[Hexagram].Place4ChangesToNumber = 9;
        IChing_Book[Hexagram].Place4ChangesToTitle =
                    
        """
         The Taming Power of the Small ䷈ 
        """

        IChing_Book[Hexagram].Place5ChangesToNumber = 14;
        IChing_Book[Hexagram].Place5ChangesToTitle =
                    
        """
         Possesion in Great Measure ䷍ 
        """

        IChing_Book[Hexagram].Place6ChangesToNumber = 43;
        IChing_Book[Hexagram].Place6ChangesToTitle =
                    
        """
         Break-Through (Resoluteness) ䷪ 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
         ○ 
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

                
        Hexagram = 2;
        IChing_Book[Hexagram].EngTitle = "The Receptive (Earth) "

        IChing_Book[Hexagram].ChiTitle = "K'un "

        IChing_Book[Hexagram].ChiSymbol = "坤 "

        IChing_Book[Hexagram].AltTitles = "The Receptive, The Symbol of Earth, Submission, The Passive Principle, Field, The Flow, Responsive Service, Yin, Natural Response, The Bearer "

        IChing_Book[Hexagram].Hex = "䷁ "

        IChing_Book[Hexagram].Code = [ 0, 0, 0, 0, 0, 0 ];
        IChing_Book[Hexagram].Above =
                    
        """
         K’UN  /  THE RECEPTIVE, EARTH 
        """

        IChing_Book[Hexagram].Below =
                    
        """
         K’UN  /  THE RECEPTIVE, EARTH 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☷ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☷ 
        """

        IChing_Book[Hexagram].Intro1 =
                    
        """
         This hexagram is made up of broken lines only.  The broken line represents the dark, yielding, receptive primal power of yin.  The attribute of the hexagram is devotion; its image is the earth.  It is the perfect complement of THE CREATIVE—the complement, not the opposite, for the Receptive does not combat the Creative but completes it.  It represents nature in contrast to spirit, earth in contrast to heaven, space as against time, the female–maternal as against the male–paternal.  However, as applied to human affairs, the principle of this complementary relationship is found not only in the relation between man and woman, but also in that between prince and minister and between father and son.  Indeed, even in the individual this duality appears in the coexistence of the spiritual world and the world of the senses. But strictly speaking there is no real dualism here, because there is a clearly defined hierarchic relationship between the two principles.  In itself of course the Receptive is just as important as the Creative, but the attribute of devotion defines the place occupied by this primal power in relation to the Creative.  For the Receptive must be activated and led by the Creative; then it is productive of good.  Only when it abandons this position and tries to stand as an equal side by side with the Creative, does it become evil.  The result then is opposition to and struggle against the Creative, which is productive of evil to both. 
        """

        IChing_Book[Hexagram].TheJudgment =
                    
        """
         THE RECEPTIVE brings about sublime success,  Furthering through the perseverance of a mare.  If the superior man undertakes something and tries to lead,  He goes astray; But if he follows, he finds guidance.  It is favorable to find friends in the west and south,  To forego friends in the east and north.  Quiet perseverance brings good fortune. 
        """

        IChing_Book[Hexagram].Intro2 =
                    
        """
         The four fundamental aspects of the Creative—“sublime success, furthering through perseverance”—are also attributed to the Receptive.  Here, however, the perseverance is more closely defined: it is that of a mare.  The Receptive connotes spatial reality in contrast to the spiritual potentiality of the Creative.  The potential becomes real and the spiritual becomes spatial through a specifically qualifying definition.  Thus the qualification, “of a mare,” is here added to the idea of perseverance.  The horse belongs to earth just as the dragon belongs to heaven.  Its tireless roaming over the plains is taken as a symbol of the vast expanse of the earth.  This is the symbol chosen because the mare combines the strength and swiftness of the horse with the gentleness and devotion of the cow.
                
                 Only because nature in its myriad forms corresponds with the myriad impulses of the Creative can it make these impulses real.  Nature’s richness lies in its power to nourish all living things; its greatness lies in its power to give them beauty and splendor.  Thus it prospers all that lives.  It is the Creative that begets things, but they are brought to birth by the Receptive.  Applied to human affairs, therefore, what the hexagram indicates is action in conformity with the situation.  The person in question is not in an independent position, but is acting as an assistant.  This means that he must achieve something.  It is not his task to try to lead—that would only make him lose the way—but to let himself be led.  If he knows how to meet fate with an attitude of acceptance, he is sure to find the right guidance.  The superior man lets himself be guided; he does not go ahead blindly, but learns from the situation what is demanded of him and then follows this intimation from fate. Since there is something to be accomplished, we need friends and helpers in the hour of toil and effort, once the ideas to be realized are firmly set.  The time of toil and effort is indicated by the west and south, for west and south symbolize the place where the Receptive works for the Creative, as nature does in summer and autumn.  If in that situation one does not mobilize all one’s powers, the work to be accomplished will not be done.  Hence to find friends there means to find guidance.  But in addition to the time of toil and effort, there is also a time of planning, and for this we need this solitude.  The east symbolized the place where a man receives orders from his master, and the north the place where he reports on what he has done.  At that time he must be alone and objective.  In this sacred hour he must do without companions, so that the purity of the moment may not be spoiled by fictional hates and favoritism. 
        """

        IChing_Book[Hexagram].TheImage =
                    
        """
         The earth’s condition is receptive devotion.  Thus the superior man who has breadth of character  Carries the outer world. 
        """

        IChing_Book[Hexagram].Intro3 =
                    
        """
         Just as there is only one heaven, so too there is only one earth.  In the hexagram of heaven the doubling of the trigram implies duration in time, but in the hexagram of earth the doubling connotes the solidity and extension in space by virtue of which the earth is able to carry and preserve all things that live and move upon it.  The earth in its devotion carries all things, good and evil, without exception.  In the same way the superior man gives to his character breadth, purity, and sustaining power, so that he is able both to support and to bear with people and things. 
        """

        IChing_Book[Hexagram].Read1 =
                    
        """
         Six at the beginning means:  When there is hoarfrost underfoot,  Solid ice is not far off. 
        """

        IChing_Book[Hexagram].Read2 =
                    
        """
         Six in the second place means:  Straight, square, great.  Without purpose,  Yet nothing remains unfurthered. 
        """

        IChing_Book[Hexagram].Read3 =
                    
        """
         Six in the third place means:  Hidden lines.  One is able to remain persevering.  If by chance you are in the service of a king,  Seek not works, but bring to completion. 
        """

        IChing_Book[Hexagram].Read4 =
                    
        """
         Six in the fourth place means:  A tied–up sack.  No blame, no praise. 
        """

        IChing_Book[Hexagram].Read5 =
                    
        """
         Six in the fifth place means:  A yellow lower garment brings supreme good fortune. 
        """

        IChing_Book[Hexagram].Read6 =
                    
        """
         Six at the top means:  Dragons fight in the meadow.  Their blood is black and yellow.
        
         When all the lines are sixes, it means:  Lasting perseverance furthers. 
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 24;
        IChing_Book[Hexagram].Place1ChangesToTitle =
                    
        """
         Return (The Turning Point) ䷗ 
        """

        IChing_Book[Hexagram].Place2ChangesToNumber = 7;
        IChing_Book[Hexagram].Place2ChangesToTitle =
                    
        """
         The Army ䷆ 
        """

        IChing_Book[Hexagram].Place3ChangesToNumber = 15;
        IChing_Book[Hexagram].Place3ChangesToTitle =
                    
        """
         Modesty ䷎ 
        """

        IChing_Book[Hexagram].Place4ChangesToNumber = 16;
        IChing_Book[Hexagram].Place4ChangesToTitle =
                    
        """
         Enthusiasm ䷏ 
        """

        IChing_Book[Hexagram].Place5ChangesToNumber = 8;
        IChing_Book[Hexagram].Place5ChangesToTitle =
                    
        """
         Holding Together (Union) ䷇ 
        """

        IChing_Book[Hexagram].Place6ChangesToNumber = 23;
        IChing_Book[Hexagram].Place6ChangesToTitle =
                    
        """
         Splitting Apart ䷖ 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
          
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

                
        Hexagram = 3;
        IChing_Book[Hexagram].EngTitle = "Difficulty in the Beginning"

        IChing_Book[Hexagram].ChiTitle = "Chun "

        IChing_Book[Hexagram].ChiSymbol = "屯 "

        IChing_Book[Hexagram].AltTitles = "Difficulty at the Beginning, The Symbol of Bursting, Sprouting, Hoarding, Distress, Organizational Growth Pains, Difficult Beginnings, Growing Pains, Initial Obstacles, Initial Hardship"

        IChing_Book[Hexagram].Hex = "䷂ "

        IChing_Book[Hexagram].Code = [ 1, 0, 0, 0, 1, 0 ];
        IChing_Book[Hexagram].Above =
                    
        """
         K’AN  /  THE ABYSMAL, WATER 
        """

        IChing_Book[Hexagram].Below =
                    
        """
         CHÊN  /  THE AROUSING, THUNDER 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☵ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☳ 
        """

        IChing_Book[Hexagram].Intro1 =
                    
        """
         The name of the hexagram, Chun, really connotes a blade of grass pushing against an obstacle as it sprouts out of the earth—hence the meaning, “difficulty at the beginning.”  The hexagram indicates the way in which heaven and earth bring forth individual beings.  It is their first meeting, which is beset with difficulties.  The lower trigram Chên is the Arousing; its motion is upward and its image is thunder.  The upper trigram K’an stands for the Abysmal, the dangerous.  Its motion is downward and its image is rain.  The situation points to teeming, chaotic profusion; thunder and rain fill the air.  But the chaos clears up.  While the Abysmal sinks, the upward movement eventually passes beyond the danger.  A thunderstorm brings release from tension, and all things breathe freely again. 
        """

        IChing_Book[Hexagram].TheJudgment =
                    
        """
         DIFFICULTY AT THE BEGINNING works supreme success,  Furthering through perseverance.  Nothing should be undertaken.  It furthers one to appoint helpers. 
        """

        IChing_Book[Hexagram].Intro2 =
                    
        """
         Times of growth are beset with difficulties.  They resemble a first birth.  But these difficulties arise from the very profusion of all that is struggling to attain form.  Everything is in motion: therefore if one perseveres there is a prospect of great success, in spite of the existing danger.  When it is a man’s fate to undertake such new beginnings, everything is still unformed, dark.  Hence he must hold back, because any premature move might bring disaster.  Likewise, it is very important not to remain alone; in order to overcome the chaos he needs helpers.  This is not to say, however, that he himself should look on passively at what is happening.  He must lend his hand and participate with inspiration and guidance. 
        """

        IChing_Book[Hexagram].TheImage =
                    
        """
         Clouds and thunder:  The image of DIFFICULTY AT THE BEGINNING.  Thus the superior man  Brings order out of confusion. 
        """

        IChing_Book[Hexagram].Intro3 =
                    
        """
         Clouds and thunder are represented by definite decorative lines; this means that in the chaos of difficulty at the beginning, order is already implicit.  So too the superior man has to arrange and organize the inchoate profusion of such times of beginning, just as one sorts out silk threads from a knotted tangle and binds them into skeins.  In order to find one’s place in the infinity of being, one must be able both to separate and to unite. 
        """

        IChing_Book[Hexagram].Read1 =
                    
        """
         Nine at the beginning means:  Hesitation and hindrance.  It furthers one to remain persevering.  It furthers one to appoint helpers. 
        """

        IChing_Book[Hexagram].Read2 =
                    
        """
         Six in the second place means:  Difficulties pile up.  Horse and wagon part.  He is not a robber;  He wants to woo when the time comes.  The maiden is chaste,  She does not pledge herself.  Ten years—then she pledges herself. 
        """

        IChing_Book[Hexagram].Read3 =
                    
        """
         Six in the third place means:  Whoever hunts deer without the forester  Only loses his way in the forest.  The superior man understands the signs of the time  And prefers to desist.  To go on brings humiliation. 
        """

        IChing_Book[Hexagram].Read4 =
                    
        """
         Six in the fourth place means:  Horse and wagon part.  Strive for union.  To go brings good fortune.  Everything acts to further. 
        """

        IChing_Book[Hexagram].Read5 =
                    
        """
         Nine in the fifth place means:  Difficulties in blessing.  A little perseverance brings good fortune.  Great perseverance brings misfortune. 
        """

        IChing_Book[Hexagram].Read6 =
                    
        """
         Six at the top means:  Horse and wagon part.  Bloody tears flow. 
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 8;
        IChing_Book[Hexagram].Place1ChangesToTitle =
                    
        """
         Holding Together (Union) ䷇ 
        """

        IChing_Book[Hexagram].Place2ChangesToNumber = 60;
        IChing_Book[Hexagram].Place2ChangesToTitle =
                    
        """
         Limitation ䷻ 
        """

        IChing_Book[Hexagram].Place3ChangesToNumber = 63;
        IChing_Book[Hexagram].Place3ChangesToTitle =
                    
        """
         After Completion ䷾ 
        """

        IChing_Book[Hexagram].Place4ChangesToNumber = 17;
        IChing_Book[Hexagram].Place4ChangesToTitle =
                    
        """
         Following ䷐ 
        """

        IChing_Book[Hexagram].Place5ChangesToNumber = 24;
        IChing_Book[Hexagram].Place5ChangesToTitle =
                    
        """
         Return (The Turning Point) ䷗ 
        """

        IChing_Book[Hexagram].Place6ChangesToNumber = 42;
        IChing_Book[Hexagram].Place6ChangesToTitle =
                    
        """
         Increase ䷩ 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
         ○ 
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

                
        Hexagram = 4;
        IChing_Book[Hexagram].EngTitle = "Youthful Folly "

        IChing_Book[Hexagram].ChiTitle = "Mêng "

        IChing_Book[Hexagram].ChiSymbol = "蒙 "

        IChing_Book[Hexagram].AltTitles = "Youthful Folly, The Symbol of Covering, Immaturity, Uncultivated Growth, Youth, Acquiring Experience, Youthful Ignorance, Enveloping, Folly, Darkness"

        IChing_Book[Hexagram].Hex = "䷃ "

        IChing_Book[Hexagram].Code = [ 0, 1, 0, 0, 0, 1 ];
        IChing_Book[Hexagram].Above =
                    
        """
         KÊN  /  KEEPING STILL, MOUNTAIN 
        """

        IChing_Book[Hexagram].Below =
                    
        """
         K’AN  /  THE ABYSMAL, WATER 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☶ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☵ 
        """

        IChing_Book[Hexagram].Intro1 =
                    
        """
         In this hexagram we are reminded of youth and folly in two different ways.  The image of the upper trigram, Kên, is the mountain, that of the lower, K’an, is water; the spring rising at the foot of the mountain is the image of inexperienced youth.  Keeping still is the attribute of the upper trigram; that of the lower is the abyss, danger.  Stopping in perplexity on the brink of a dangerous abyss is a symbol of the folly of youth.  However, the two trigrams also show the way of overcoming the follies of youth.  Water is something that of necessity flows on.  When the spring gushes forth, it does not know at first where it will go.  But its steady flow fills up the deep place blocking its progress, and success is attained. 
        """

        IChing_Book[Hexagram].TheJudgment =
                    
        """
         YOUTHFUL FOLLY has success.  It is not I who seek the young fool;  The young fool seeks me.  At the first oracle I inform him.  If he asks two or three times, it is importunity.  If he importunes, I give him no information.  Perseverance furthers. 
        """

        IChing_Book[Hexagram].Intro2 =
                    
        """
         In the time of youth, folly is not an evil.  One may succeed in spite of it, provided one finds an experienced teacher and has the right attitude toward him.  This means, first of all, that the youth himself must be conscious of his lack of experience and must seek out the teacher.  Without this modesty and this interest there is no guarantee that he has the necessary receptivity, which should express itself in respectful acceptance of the teacher.  This is the reason why the teacher must wait to be sought out instead of offering himself.  Only thus can the instruction take place at the right time and in the right way.


         A teacher’s answer to the question of a pupil ought to be clear and definite like that expected from an oracle; thereupon it ought to be accepted as a key for resolution of doubts and a basis for decision.  If mistrustful or unintelligent questioning is kept up, it serves only to annoy the teacher.  He does well to ignore it in silence, just as the oracle gives one answer only and refuses to be tempted by questions implying doubt. Given addition a perseverance that never slackens until the points are mastered one by one, real success is sure to follow.  Thus the hexagram counsels the teacher as well as the pupil. 
        """

        IChing_Book[Hexagram].TheImage =
                    
        """
         A spring wells up at the foot of the mountain:  The image of YOUTH.  Thus the superior man fosters his character  By thoroughness in all that he does. 
        """

        IChing_Book[Hexagram].Intro3 =
                    
        """
         A spring succeeds in flowing on and escapes stagnation by filling up all the hollow places in its path.  In the same way character is developed by thoroughness that skips nothing but, like water, gradually and steadily fills up all gaps and so flows onward. 
        """

        IChing_Book[Hexagram].Read1 =
                    
        """
         Six at the beginning means:  To make a fool develop  It furthers one to apply discipline.  The fetters should be removed.  To go on in this way brings humiliation. 
        """

        IChing_Book[Hexagram].Read2 =
                    
        """
         Nine in the second place means:  To bear with fools in kindliness brings good fortune.  To know how to take women  Brings good fortune.  The son is capable of taking charge of the household. 
        """

        IChing_Book[Hexagram].Read3 =
                    
        """
         Six in the third place means:  Take not a maiden who, when she sees a man of bronze,  Loses possession of herself.  Nothing furthers. 
        """

        IChing_Book[Hexagram].Read4 =
                    
        """
         Six in the fourth place means:  Entangled folly brings humiliation. 
        """

        IChing_Book[Hexagram].Read5 =
                    
        """
         Six in the fifth place means:  Childlike folly brings good fortune. 
        """

        IChing_Book[Hexagram].Read6 =
                    
        """
         Nine at the top means:  In punishing folly  It does not further one


         To commit transgressions.


         The only thing that furthers


         Is to prevent transgressions. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
         ○ 
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 41;
        IChing_Book[Hexagram].Place1ChangesToTitle =
                    
        """
         Decrease ䷨ 
        """

        IChing_Book[Hexagram].Place2ChangesToNumber = 23;
        IChing_Book[Hexagram].Place2ChangesToTitle =
                    
        """
         Splitting Apart ䷖ 
        """

        IChing_Book[Hexagram].Place3ChangesToNumber = 18;
        IChing_Book[Hexagram].Place3ChangesToTitle =
                    
        """
         Work on what has been Spoiled (Decay) ䷑ 
        """

        IChing_Book[Hexagram].Place4ChangesToNumber = 64;
        IChing_Book[Hexagram].Place4ChangesToTitle =
                    
        """
         Before Completion ䷿ 
        """

        IChing_Book[Hexagram].Place5ChangesToNumber = 59;
        IChing_Book[Hexagram].Place5ChangesToTitle =
                    
        """
         Dispersion (Dissolution) ䷺ 
        """

        IChing_Book[Hexagram].Place6ChangesToNumber = 7;
        IChing_Book[Hexagram].Place6ChangesToTitle =
                    
        """
         The Army ䷆ 
        """

                
                
        Hexagram = 5;
        IChing_Book[Hexagram].EngTitle = "Waiting (Nourishment) "

        IChing_Book[Hexagram].ChiTitle = "Hsü "

        IChing_Book[Hexagram].ChiSymbol = "需 "

        IChing_Book[Hexagram].AltTitles = "Nourishment, Calculated Inaction, Attending, Biding One's Time, Nourishment Through Inaction, Waiting for Nourishment, Moistened "

        IChing_Book[Hexagram].Hex = "䷄ "

        IChing_Book[Hexagram].Code = [ 1, 1, 1, 0, 1, 0 ];
        IChing_Book[Hexagram].Above =
                    
        """
         K’AN  /  THE ABYSMAL, WATER  
        """

        IChing_Book[Hexagram].Below =
                    
        """
         CH’IEN  /  THE CREATIVE, HEAVEN 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☵ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☰ 
        """

        IChing_Book[Hexagram].Intro1 =
                    
        """
         All beings have need of nourishment from above.  But the gift of food comes in its own time, and for this one must wait.  This hexagram shows the clouds in the heavens, giving rain to refresh all that grows and to provide mankind with food and drink.  The rain will come in its own time.  We cannot make it come; we have to wait for it.  The idea of waiting is further suggested by the attributes of the two trigrams—strength within, danger in front.  Strength in the face of danger does not plunge ahead but bides its time, whereas weakness in the face of danger grows agitated and has not the patience to wait. 
        """

        IChing_Book[Hexagram].TheJudgment =
                    
        """
         WAITING.  If you are sincere You have light and success Perseverance brings good fortune.
            It furthers one to cross the great water. 
        """

        IChing_Book[Hexagram].Intro2 =
                    
        """
         Waiting is not mere empty hoping.  It has the inner certainty of reaching the goal.  Such certainty alone gives that light which leads to success.  This leads to the perseverance that brings good fortune and bestows power to cross the great water.

         One is faced with a danger that has to be overcome.  Weakness and impatience can do nothing.  Only a strong man can stand up to his fate, for his inner security enables him to endure to the end.  This strength shows itself in uncompromising truthfulness [with himself].  It is only when we have the courage to face things exactly as they are, without any sort of self–deception or illusion, that a light will develop out of events, by which the path to success may be recognized.  This recognition must be followed by resolute and persevering action.  For only the man who goes to meet his fate resolutely is equipped to deal with it adequately.  Then he will be able to cross the great water—that is to say, he will be capable of making the necessary decision and of surmounting the danger. 
        """
        
        IChing_Book[Hexagram].TheImage =
                    
        """
         Clouds rise up to heaven:
            The image of WAITING.
            Thus the superior man eats and drinks,
            Is joyous and of good cheer. 
        """

        IChing_Book[Hexagram].Intro3 =
                    
        """
         When clouds rise in the sky, it is a sign that it will rain.  There is nothing to do but to wait until after the rain falls.  It is the same in life when destiny is at work.  We should not worry and seek to shape the future by interfering in things before the time is ripe.  We should quietly fortify the body with food and drink and the mind with gladness and good cheer.  Fate comes when it will, and thus we are ready. 
        """

        IChing_Book[Hexagram].Read1 =
                    
        """
         Nine at the beginning means: Waiting in the meadow.       It furthers one to abide in what endures. No blame. 
        """

        IChing_Book[Hexagram].Read2 =
                    
        """
         Nine in the second place means:
            Waiting on the sand.
            There is some gossip.
            The end brings good fortune. 
        """

        IChing_Book[Hexagram].Read3 =
                    
        """
         Nine in the third place means: Waiting in the mud        Brings about the arrival of the enemy. 
        """

        IChing_Book[Hexagram].Read4 =
                    
        """
         Six in the fourth place means: Waiting in blood.        Get out of the pit. 
        """

        IChing_Book[Hexagram].Read5 =
                    
        """
         Nine in the fifth place means:     Waiting at meat and drink.       Perseverance brings good fortune.     This line references   Chien  /  OBSTRUCTION  (39) 
        """

        IChing_Book[Hexagram].Read6 =
                    
        """
         Six at the top means:    One falls into the pit.        Three uninvited guests arrive.        Honor them, and in the end there will be good fortune. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
         ○ 
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 48;
        IChing_Book[Hexagram].Place1ChangesToTitle =
                    
        """
         The Well ䷯ 
        """

        IChing_Book[Hexagram].Place2ChangesToNumber = 63;
        IChing_Book[Hexagram].Place2ChangesToTitle =
                    
        """
         After Completion ䷾ 
        """

        IChing_Book[Hexagram].Place3ChangesToNumber = 60;
        IChing_Book[Hexagram].Place3ChangesToTitle =
                    
        """
         Limitation ䷻ 
        """

        IChing_Book[Hexagram].Place4ChangesToNumber = 43;
        IChing_Book[Hexagram].Place4ChangesToTitle =
                    
        """
         Break-Through (Resoluteness) ䷪ 
        """

        IChing_Book[Hexagram].Place5ChangesToNumber = 11;
        IChing_Book[Hexagram].Place5ChangesToTitle =
                    
        """
         Peace ䷊ 
        """

        IChing_Book[Hexagram].Place6ChangesToNumber = 9;
        IChing_Book[Hexagram].Place6ChangesToTitle =
                    
        """
         The Taming Power of the Small ䷈ 
        """

                
        Hexagram = 6;
        IChing_Book[Hexagram].EngTitle = "Conflict "

        IChing_Book[Hexagram].ChiTitle = "Sung "

        IChing_Book[Hexagram].ChiSymbol = "訟 "

        IChing_Book[Hexagram].AltTitles = "Conflict, The Symbol of Contention, Strife, Litigation, Quarreling, Arguing, Lawsuit "

        IChing_Book[Hexagram].Hex = "䷅ "

        IChing_Book[Hexagram].Code = [ 0, 1, 0, 1, 1, 1 ];
        IChing_Book[Hexagram].Above =
                    
        """
         CH’IEN  /  THE CREATIVE, HEAVEN  
        """

        IChing_Book[Hexagram].Below =
                    
        """
         K’AN  /  THE ABYSMAL, WATER 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☰ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☵ 
        """

        IChing_Book[Hexagram].Intro1 =
                    
        """
         The upper trigram, whose image is heaven, has an upward movement; the lower trigram, water, in accordance with its nature, tends downward.  Thus the two halves move away from each other, giving rise to the idea of conflict.


         The attribute of the Creative is strength, that of the Abysmal is danger, guile.  Where cunning has force before it, there is conflict.


         A third indication of conflict, in terms of character, is presented by the combination of deep cunning within and fixed determination outwardly.  A person of this character will certainly be quarrelsome. 
        """

        IChing_Book[Hexagram].TheJudgment =
                    
        """
         CONFLICT.  You are sincere


         And are being obstructed.


         A cautious halt halfway brings good fortune.


         Going through to the end brings misfortune.


         It furthers one to see the great man.


         It does not further one to cross the great water. 
        """

        IChing_Book[Hexagram].Intro2 =
                    
        """
         Conflict develops when one feels himself to be in the right and runs into opposition.  If one is not convinced of being in the right, opposition leads to craftiness or high–handed encroachment but not to open conflict.


         If a man is entangled in a conflict, his only salvation lies in being so clear–headed and inwardly strong that he is always ready to come to terms by meeting the opponent halfway.  To carry one the conflict to the bitter end has evil effects even when one is the right, because the enmity is then perpetuated.  It is important to see the great man, that is, an impartial man whose authority is great enough to terminate the conflict amicably or assure a just decision.  In times of strife, crossing the great water is to be avoided, that is, dangerous enterprises are not to be begun, because in order to be successful they require concerted unity of forces.  Conflict within weakens the power to conquer danger without. 
        """

        IChing_Book[Hexagram].TheImage =
                    
        """
         Heaven and water go their opposite ways:


         The image of CONFLICT.


         Thus in all his transactions the superior man


         Carefully considers the beginning. 
        """

        IChing_Book[Hexagram].Intro3 =
                    
        """
         The image indicates that the causes of conflict are latent in the opposing tendencies of the two trigrams.  Once these opposing tendencies appear, conflict is inevitable.  To avoid it, therefore, everything must be taken carefully into consideration in the very beginning.  If rights and duties are exactly defined, or if, in a group, the spiritual trends of the individuals harmonize, the cause of conflict is removed in advance. 
        """

        IChing_Book[Hexagram].Read1 =
                    
        """
         Six at at the beginning means:


         If one does not perpetuate the affair,


         There is a little gossip.


         In the end, good fortune comes. 
        """

        IChing_Book[Hexagram].Read2 =
                    
        """
         Nine in the second place means:


         One cannot engage in conflict;


         One returns home, gives way.


         The people of his town,


         Three hundred households,


         Remain free of guilt. 
        """

        IChing_Book[Hexagram].Read3 =
                    
        """
         Six in the third place means:


         To nourish oneself on ancient virtue induces perseverance.


         Danger.  In the end, good fortune comes.


         If by chance you are in the service of a king,


         Seek not works. 
        """

        IChing_Book[Hexagram].Read4 =
                    
        """
         Nine in the fourth place means:


         One cannot engage in conflict.


         One turns back and submits to fate,


         Changes one’s attitude,


         And finds peace in perseverance.


         Good fortune. 
        """

        IChing_Book[Hexagram].Read5 =
                    
        """
         Nine in the fifth place means:


         To contend before him


         Brings supreme good fortune. 
        """

        IChing_Book[Hexagram].Read6 =
                    
        """
         Nine at the top means:


         Even if by chance a leather belt is bestowed on one,


         By the end of a morning


         It will have been snatched away three times. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
         ○ 
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 10;
        IChing_Book[Hexagram].Place1ChangesToTitle =
                    
        """
         Treading (Conduct) ䷉ 
        """

        IChing_Book[Hexagram].Place2ChangesToNumber = 12;
        IChing_Book[Hexagram].Place2ChangesToTitle =
                    
        """
         Standstill (Stagnation) ䷋ 
        """

        IChing_Book[Hexagram].Place3ChangesToNumber = 44;
        IChing_Book[Hexagram].Place3ChangesToTitle =
                    
        """
         Coming to Meet ䷫ 
        """

        IChing_Book[Hexagram].Place4ChangesToNumber = 59;
        IChing_Book[Hexagram].Place4ChangesToTitle =
                    
        """
         Dispersion (Dissolution) ䷺ 
        """

        IChing_Book[Hexagram].Place5ChangesToNumber = 64;
        IChing_Book[Hexagram].Place5ChangesToTitle =
                    
        """
         Before Completion ䷿ 
        """

        IChing_Book[Hexagram].Place6ChangesToNumber = 47;
        IChing_Book[Hexagram].Place6ChangesToTitle =
                    
        """
         Oppression (Exhaustion) ䷮ 
        """

                
                
        Hexagram = 7;
        IChing_Book[Hexagram].EngTitle = "The Army "

        IChing_Book[Hexagram].ChiTitle = "Shih "

        IChing_Book[Hexagram].ChiSymbol = "師 "

        IChing_Book[Hexagram].AltTitles = "The Army, The Symbol of Multitude and of Army, Legions/ Leading, The Troops, Collective Force, Discipline, Soldiers, Group Action, A Disciplined Multitude, Ego Discipline, Willpower "

        IChing_Book[Hexagram].Hex = "䷆ "

        IChing_Book[Hexagram].Code = [ 0, 1, 0, 0, 0, 0 ];
        IChing_Book[Hexagram].Above =
                    
        """
         K’UN  /  THE RECEPTIVE, EARTH 
        """

        IChing_Book[Hexagram].Below =
                    
        """
         K’AN  /  THE ABYSMAL, WATER 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☷ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☵ 
        """

        IChing_Book[Hexagram].Intro1 =
                    
        """
         This hexagram is made up of the trigrams K’an, water, and K’un, earth, and thus it symbolizes the ground water stored up in the earth.  In the same way military strength is stored up in the mass of the people—invisible in times of peace but always ready for use as a source of power.  The attributes of the two trigrams are danger inside and obedience outside.  This points to the nature of an army, which at the core is dangerous while discipline and obedience must prevail outside.     
        """

        IChing_Book[Hexagram].TheJudgment =
                    
        """
         THE ARMY.  The army needs perseverance  And a strong man.  Good fortune without blame. 
        """

        IChing_Book[Hexagram].Intro2 =
                    
        """
             An army is a mass that needs organization in order to become a fighting force.   Without strict discipline nothing can be accomplished, but this discipline must not be achieved by force.  It requires a strong man who captures the hearts of the people and awakens their enthusiasm.  In order that he may develop his abilities he needs the complete confidence of his ruler, who must entrust him with full responsibility as long as the war lasts.  But war is always a dangerous thing and brings with it destruction and devastation.  Therefore it should not be resorted to rashly but, like a poisonous drug, should be used as a last recourse.     The justifying cause of war, and clear and intelligible war aims, ought to be explained to the people by an experienced leader.  Unless there is a quite definite war aim to which the people can consciously pledge themselves, the unity and strength of conviction that lead to victory will not be forthcoming.  But the leader must also look to it that the passion of war and the delirium of victory do not give rise to unjust acts that will not meet with general approval..  If justice and perseverance are the basis of action, all goes well. 
        """

        IChing_Book[Hexagram].TheImage =
                    
        """
         In the middle of the earth is water:  The image of THE ARMY.      Thus the superior man increases his masses      By generosity toward the people. 
        """

        IChing_Book[Hexagram].Intro3 =
                    
        """
         Ground water is invisibly present within the earth.  In the same way the military power of a people is invisibly present in the masses.  When danger threatens, every peasant becomes a soldier; when the war ends, he goes back to his plow.  He who is generous toward the people wins their love, and a people living under a mild rule becomes strong and powerful.  Only a people economically strong can be important in military power.  Such power must therefore be cultivated by improving the economic condition of the people and by humane government.  Only when there is this invisible bond between government and people, so that the people are sheltered by their government as ground water is sheltered by the earth, is it possible to wage a victorious war.     
        """

        IChing_Book[Hexagram].Read1 =
                    
        """
         Six at the beginning means:  An army must set forth in proper order.  If the order is not good, misfortune threatens. 
        """

        IChing_Book[Hexagram].Read2 =
                    
        """
         Nine in the second place means:  In the midst of the army.      Good fortune.  No blame.      The king bestows a triple decoration.     
        """

        IChing_Book[Hexagram].Read3 =
                    
        """
         Six in the third place means:      Perchance the army carries corpses in the wagon.      Misfortune. 
        """

        IChing_Book[Hexagram].Read4 =
                    
        """
         Six in the fourth place means:      The army retreats.  No blame.     
        """

        IChing_Book[Hexagram].Read5 =
                    
        """
         Six in the fifth place means:      There is game in the field.      It furthers one to catch it.      Without blame.      Let the eldest lead the army.      The younger transports corpses;      Then perseverance brings misfortune.     
        """

        IChing_Book[Hexagram].Read6 =
                    
        """
         Six at the top means:      The great prince issues commands,      Founds states, vests families with fiefs.      Inferior people should not be employed.     
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
         ○ 
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 19;
        IChing_Book[Hexagram].Place1ChangesToTitle =
                    
        """
         Approach ䷒ 
        """

        IChing_Book[Hexagram].Place2ChangesToNumber = 2;
        IChing_Book[Hexagram].Place2ChangesToTitle =
                    
        """
         The Receptive (Earth) ䷁ 
        """

        IChing_Book[Hexagram].Place3ChangesToNumber = 46;
        IChing_Book[Hexagram].Place3ChangesToTitle =
                    
        """
         Pushing Upward ䷭ 
        """

        IChing_Book[Hexagram].Place4ChangesToNumber = 40;
        IChing_Book[Hexagram].Place4ChangesToTitle =
                    
        """
         Deliverance ䷧ 
        """

        IChing_Book[Hexagram].Place5ChangesToNumber = 29;
        IChing_Book[Hexagram].Place5ChangesToTitle =
                    
        """
         The Abysmal (Water) ䷜ 
        """

        IChing_Book[Hexagram].Place6ChangesToNumber = 4;
        IChing_Book[Hexagram].Place6ChangesToTitle =
                    
        """
         Youthful Folly ䷃ 
        """

                
        Hexagram = 8;
        IChing_Book[Hexagram].EngTitle = "Holding Together (Union) "

        IChing_Book[Hexagram].ChiTitle = "Pi "

        IChing_Book[Hexagram].ChiSymbol = "比 "

        IChing_Book[Hexagram].AltTitles = "The Symbol of Subaltern Assistance, Union, Unity, Grouping, Alliance, Co-ordination, Leadership, Merging (as with tributaries of a river), Seeking Union, Unification, Accord, Subservience, Individuation, Integration "

        IChing_Book[Hexagram].Hex = "䷇ "

        IChing_Book[Hexagram].Code = [ 0, 0, 0, 0, 1, 0 ];
        IChing_Book[Hexagram].Above =
                    
        """
         K’AN  /  THE ABYSMAL, WATER  
        """

        IChing_Book[Hexagram].Below =
                    
        """
         K’UN  /  THE RECEPTIVE, EARTH 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☵ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☷ 
        """

        IChing_Book[Hexagram].Intro1 =
                    
        """
         The waters on the surface of the earth flow together wherever they can, as for example in the ocean, where all the rivers come together.  Symbolically this connotes holding together and the laws that regulate it.  The same idea is suggested by the fact that all the lines of the hexagram except the fifth, the place of the ruler, are yielding.  The yielding lines hold together because they are influenced by a man of strong will in the leading position, a man who is their center of union.  Moreover, this strong and guiding personality in turn holds together with the others, finding in them the complement of his own nature.     
        """

        IChing_Book[Hexagram].TheJudgment =
                    
        """
         HOLDING TOGETHER brings good fortune.      Inquire of the oracle once again      Whether you possess sublimity, constancy, and perseverance;      Then there is no blame.      Those who are uncertain gradually join.      Whoever comes too late      Meets with misfortune. 
        """

        IChing_Book[Hexagram].Intro2 =
                    
        """
         What is required is that we unite with others, in order that all may complement and aid one another through holding together.  But such holding together calls for a central figure around whom other persons may unite.  To become a center of influence holding people together is a grave matter and fraught with great responsibility.  It requires greatness of spirit, consistency, and strength.  Therefore let him who wishes to gather others about him ask himself whether he is equal to the undertaking, for anyone attempting the task without a real calling for it only makes confusion worse than if no union at all had taken place.     If a man has recognized the necessity for union and does not feel strong enough to function as the center, it is his duty to become a member of some other organic fellowship.     
        """

        IChing_Book[Hexagram].TheImage =
                    
        """
         On the earth is water:      The image of HOLDING TOGETHER.      Thus the kings of antiquity      Bestowed the different states as fiefs      And cultivated friendly relations      With the feudal lords.     
        """

        IChing_Book[Hexagram].Intro3 =
                    
        """
         Water fills up all the empty places on the earth and clings fast to it.  The social organization of ancient China was based on this principle of the holding together of dependents and rulers.  Water flows to unite with water, because all parts of it are subject to the same laws.  So too should human society hold together through a community of interests that allows each individual to feel himself a member of a whole.  The central power of a social organization must see to it that every member finds that his true interest lies in holding together with it, as was the case in the paternal relationship between king and vassals in ancient China.     
        """

        IChing_Book[Hexagram].Read1 =
                    
        """
         Six at the beginning means:      Hold to him in truth and loyalty;      This is without blame.      Truth, like a full earthen bowl:      Thus in the end      Good fortune comes from without.     
        """

        IChing_Book[Hexagram].Read2 =
                    
        """
         Six in the second place means:      Hold to him inwardly.      Perseverance brings good fortune.     
        """

        IChing_Book[Hexagram].Read3 =
                    
        """
         Six in the third place means:      You hold together with the wrong people.     
        """

        IChing_Book[Hexagram].Read4 =
                    
        """
         Six in the fourth place means:      Hold to him outwardly also.      Perseverance brings good fortune.     
        """

        IChing_Book[Hexagram].Read5 =
                    
        """
         Nine in the fifth place means:      Manifestation of holding together.      In the hunt the king uses beaters on three sides only      And forgoes game that runs off in front.      The citizens need no warning.      Good fortune.     
        """

        IChing_Book[Hexagram].Read6 =
                    
        """
         Six at the top means:      He finds no head for holding together.  Misfortune.     
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
         ○ 
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 3;
        IChing_Book[Hexagram].Place1ChangesToTitle =
                    
        """
         Difficulty at the Beginning ䷂ 
        """

        IChing_Book[Hexagram].Place2ChangesToNumber = 29;
        IChing_Book[Hexagram].Place2ChangesToTitle =
                    
        """
         The Abysmal (Water) ䷜ 
        """

        IChing_Book[Hexagram].Place3ChangesToNumber = 39;
        IChing_Book[Hexagram].Place3ChangesToTitle =
                    
        """
         Obstruction ䷦ 
        """

        IChing_Book[Hexagram].Place4ChangesToNumber = 45;
        IChing_Book[Hexagram].Place4ChangesToTitle =
                    
        """
         Gathering Together (Massing) ䷬ 
        """

        IChing_Book[Hexagram].Place5ChangesToNumber = 2;
        IChing_Book[Hexagram].Place5ChangesToTitle =
                    
        """
         The Receptive (Earth) ䷁ 
        """

        IChing_Book[Hexagram].Place6ChangesToNumber = 20;
        IChing_Book[Hexagram].Place6ChangesToTitle =
                    
        """
         Contemplation (View) ䷓ 
        """

                
        Hexagram = 9;
        IChing_Book[Hexagram].EngTitle = "The Taming Power of the Small "

        IChing_Book[Hexagram].ChiTitle = "Hsiao Ch’u "

        IChing_Book[Hexagram].ChiSymbol = "小畜 "

        IChing_Book[Hexagram].AltTitles = "The Taming Power of the Small, The Symbol of Small restraint, The Lesser Nourisher, Taming the Small Powers, Small Accumulating, Small Harvest, Small Obstruction, Nurturance by the Small, Restraint by the Weak, Restrained, Minor Restraint, The Weak Force, The Force of the Small, Weak Forces Restrain Strong Forces "

        IChing_Book[Hexagram].Hex = "䷈ "

        IChing_Book[Hexagram].Code = [ 1, 1, 1, 0, 1, 1 ];
        IChing_Book[Hexagram].Above =
                    
        """
         SUN  /  THE GENTLE, WIND 
        """

        IChing_Book[Hexagram].Below =
                    
        """
         CH’IEN  /  THE CREATIVE, HEAVEN 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☴ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☰ 
        """

        IChing_Book[Hexagram].Intro1 =
                    
        """
         This hexagram means the force of the small—the power of the shadowy—that restrains, tames, impedes.  A weak line in the fourth place, that of the minister, holds the five strong lines in check.  In the Image it is the wind blowing across the sky.  The wind restrains the clouds, the rising breath of the Creative, and makes them grow dense, but as yet is not strong enough to turn them to rain.  The hexagram presents a configuration of circumstances in which a strong element is temporarily held in leash by a weak element.  It is only through gentleness that this can have a successful outcome. 
        """

        IChing_Book[Hexagram].TheJudgment =
                    
        """
         THE TAMING POWER OF THE SMALL  Has success.  Dense clouds, no rain from our western region. 
        """

        IChing_Book[Hexagram].Intro2 =
                    
        """
         This image refers to the state of affairs in China at the time when King Wên, who came originally from the west, was in the east at the court of the reigning tyrant Chou Hsin.  The moment for action on a large scale had not yet arrived.  King Wên could only keep the tyrant somewhat in check by friendly persuasion.  Hence the image of many clouds, promising moisture and blessing to the land, although as yet no rain falls.  The situation is not unfavorable; there is a prospect of ultimate success, but there are still obstacles in the way, and we can merely take preparatory measures.  Only through the small means of friendly persuasion can we exert any influence.  The time has not yet come for sweeping measures.  However, we may be able, to a limited extent, to act as a restraining and subduing influence.  To carry out our purpose we need firm determination within and gentleness and adaptability in external relations. 
        """

        IChing_Book[Hexagram].TheImage =
                    
        """
         The wind drives across heaven:  The image of THE TAMING POWER OF THE SMALL.  Thus the superior man  Refines the outward aspect of his nature. 
        """

        IChing_Book[Hexagram].Intro3 =
                    
        """
         The wind can indeed drive the clouds together in the sky; yet, being nothing but air, without solid body, it does not produce great or lasting effects.  So also an individual, in times when he can produce no great effect in the outer world, can do nothing except refine the expression of his nature in small ways. 
        """

        IChing_Book[Hexagram].Read1 =
                    
        """
         Nine at the beginning means:  Return to the way.  How could there be blame in this?  Good fortune. 
        """

        IChing_Book[Hexagram].Read2 =
                    
        """
         Nine in the second place means:  He allows himself to be drawn into returning.  Good fortune. 
        """

        IChing_Book[Hexagram].Read3 =
                    
        """
         Nine in the third place means:  The spokes burst out of the wagon wheels.  Man and wife roll their eyes. 
        """

        IChing_Book[Hexagram].Read4 =
                    
        """
         Six in the fourth place means:  If you are sincere, blood vanishes and fear gives way.  No blame. 
        """

        IChing_Book[Hexagram].Read5 =
                    
        """
         Nine in the fifth place means:  If you are sincere and loyally attached,  You are rich in your neighbor. 
        """

        IChing_Book[Hexagram].Read6 =
                    
        """
         Nine at the top means:  The rain comes, there is rest.  This is due to the lasting effect of character.  Perseverance brings the woman into danger.  The moon is nearly full.  If the superior man persists,  Misfortune comes. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
         ◻ 
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
         ○ 
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 57;
        IChing_Book[Hexagram].Place1ChangesToTitle =
                    
        """
         The Gentle (The Penetrating, Wind) ䷸ 
        """

        IChing_Book[Hexagram].Place2ChangesToNumber = 37;
        IChing_Book[Hexagram].Place2ChangesToTitle =
                    
        """
         The Family (The Clan) ䷤ 
        """

        IChing_Book[Hexagram].Place3ChangesToNumber = 61;
        IChing_Book[Hexagram].Place3ChangesToTitle =
                    
        """
         Inner Truth ䷼ 
        """

        IChing_Book[Hexagram].Place4ChangesToNumber = 1;
        IChing_Book[Hexagram].Place4ChangesToTitle =
                    
        """
         The Creative (Heaven) ䷀ 
        """

        IChing_Book[Hexagram].Place5ChangesToNumber = 26;
        IChing_Book[Hexagram].Place5ChangesToTitle =
                    
        """
         The Taming Power of the Great ䷙ 
        """

        IChing_Book[Hexagram].Place6ChangesToNumber = 5;
        IChing_Book[Hexagram].Place6ChangesToTitle =
                    
        """
         Waiting (Nourishment) 
        """

                
                
        Hexagram = 10;
        IChing_Book[Hexagram].EngTitle = "Treading (Conduct) "

        IChing_Book[Hexagram].ChiTitle = "Lü "

        IChing_Book[Hexagram].ChiSymbol = "履 "

        IChing_Book[Hexagram].AltTitles = "Treading, Conduct, The Symbol of Stepping Carefully, Proper Conduct, Cautious Treading, Proceeding Cautiously, Watch Your Step, Proceed at Your Own Risk, Advancing With Care "

        IChing_Book[Hexagram].Hex = "䷉ "

        IChing_Book[Hexagram].Code = [ 1, 1, 0, 1, 1, 1 ];
        IChing_Book[Hexagram].Above =
                    
        """
         CH’IEN  /  THE CREATIVE, HEAVEN  
        """

        IChing_Book[Hexagram].Below =
                    
        """
         TUI  /  THE JOYOUS, LAKE 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☰ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☱ 
        """

        IChing_Book[Hexagram].Intro1 =
                    
        """
         The name of the hexagram means on the one hand the right way of conducting oneself.  Heaven, the father, is above, and the lake, the youngest daughter, is below.  This shows the difference between high and low, upon which composure correct social conduct, depends.  On the other hand, the word for the name of the hexagram, TREADING, means literally treading upon something.  The small and cheerful [Tui] treads upon the large and strong [Ch’ien].  The direction of movement of the two primary trigrams is upward.  The fact that the strong treads on the weak is not mentioned in the Book of Changes, because it is taken for granted.  For the weak to take a stand against the strong is not dangerous here, because it happens in good humor [Tui] and without presumption, so that the strong man is not irritated but takes it all in good part. 
        """

        IChing_Book[Hexagram].TheJudgment =
                    
        """
         TREADING.  Treading upon the tail of the tiger.  It does not bite the man.  Success. 
        """

        IChing_Book[Hexagram].Intro2 =
                    
        """
         The situation is really difficult.  That which is strongest and that which is weakest are close together.  The weak follows behind the strong and worries it.  The strong, however, acquiesces and does not hurt the weak, because the contact is in good humor and harmless. In terms of a human situation, one is handling wild, intractable people.  In such a case one’s purpose will be achieved if one behaves with decorum.  Pleasant manners succeed even with irritable people. 
        """

        IChing_Book[Hexagram].TheImage =
                    
        """
         Heaven above, the lake below:  The image of TREADING.  Thus the superior man discriminates between high and low,  And thereby fortifies the thinking of the people. 
        """

        IChing_Book[Hexagram].Intro3 =
                    
        """
         Heaven and the lake show a difference of elevation that inheres in the natures of the two, hence no envy arises.  Among mankind also there are necessarily differences of elevation; it is impossible to bring about universal equality.  But it is important that differences in social rank should not be arbitrary and unjust, for if this occurs, envy and class struggle are the inevitable consequences.  If, on the other hand, external differences in rank correspond with differences in inner worth, and if inner worth forms the criterion of external rank, people acquiesce and order reigns in society. 
        """

        IChing_Book[Hexagram].Read1 =
                    
        """
         Nine at the beginning means:  Simple conduct.  Progress without blame. 
        """

        IChing_Book[Hexagram].Read2 =
                    
        """
         Nine in the second place means:  Treading a smooth, level course.  The perseverance of a dark man  Brings good fortune. 
        """

        IChing_Book[Hexagram].Read3 =
                    
        """
         Six in the third place means:  A one–eyed man is able to see,  A lame man is able to tread.  He treads on the tail of the tiger.  The tiger bites the man.  Misfortune.  Thus does a warrior act on behalf of his great prince. 
        """

        IChing_Book[Hexagram].Read4 =
                    
        """
         Nine in the fourth place means:  He treads on the tail of the tiger.  Caution and circumspection  Lead ultimately to good fortune. 
        """

        IChing_Book[Hexagram].Read5 =
                    
        """
         Nine in the fifth place means:  Resolute conduct.  Perseverance with awareness of danger. 
        """

        IChing_Book[Hexagram].Read6 =
                    
        """
         Nine at the top means:  Look to your conduct and weigh the favorable signs.  When everything is fulfilled, supreme good fortune comes. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
         ◻ 
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
         ○ 
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 6;
        IChing_Book[Hexagram].Place1ChangesToTitle =
                    
        """
         Conflict ䷅ 
        """

        IChing_Book[Hexagram].Place2ChangesToNumber = 25;
        IChing_Book[Hexagram].Place2ChangesToTitle =
                    
        """
         Innocence (The Unexpected) ䷘ 
        """

        IChing_Book[Hexagram].Place3ChangesToNumber = 1;
        IChing_Book[Hexagram].Place3ChangesToTitle =
                    
        """
         The Creative (Heaven) ䷀ 
        """

        IChing_Book[Hexagram].Place4ChangesToNumber = 61;
        IChing_Book[Hexagram].Place4ChangesToTitle =
                    
        """
         Inner Truth ䷼ 
        """

        IChing_Book[Hexagram].Place5ChangesToNumber = 38;
        IChing_Book[Hexagram].Place5ChangesToTitle =
                    
        """
         Opposition ䷥ 
        """

        IChing_Book[Hexagram].Place6ChangesToNumber = 58;
        IChing_Book[Hexagram].Place6ChangesToTitle =
                    
        """
         The Joyous (Lake) ䷹ 
        """

                
        Hexagram = 11;
        IChing_Book[Hexagram].EngTitle = "Peace "

        IChing_Book[Hexagram].ChiTitle = "T’ai "

        IChing_Book[Hexagram].ChiSymbol = "泰 "

        IChing_Book[Hexagram].AltTitles = "Peace, The Symbol of Successfulness, Prospering, Pervading, Greatness, Tranquility, Prosperity, Conjunction, Major Synthesis, Hieros Gamos, Holy Marriage, "

        IChing_Book[Hexagram].Hex = "䷊ "

        IChing_Book[Hexagram].Code = [ 1, 1, 1, 0, 0, 0 ];
        IChing_Book[Hexagram].Above =
                    
        """
         K’UN  /  THE RECEPTIVE, EARTH  
        """

        IChing_Book[Hexagram].Below =
                    
        """
         CH’IEN  /  THE CREATIVE, HEAVEN 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☷ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☰ 
        """

        IChing_Book[Hexagram].Intro1 =
                    
        """
         The Receptive, which moves downward, stands above; the Creative, which moves upward, is below.  Hence their influences meet and are in harmony, so that all living things bloom and prosper.  This hexagram belongs to the first month (February–March), at which time the forces of nature prepare the new spring. 
        """

        IChing_Book[Hexagram].TheJudgment =
                    
        """
         PEACE.  The small departs,  The great approaches.  Good fortune.  Success. 
        """

        IChing_Book[Hexagram].Intro2 =
                    
        """
         This hexagram denotes a time in nature when heaven seems to be on earth.  Heaven has placed itself beneath the earth, and so their powers unite in deep harmony.  Then peace and blessing descend upon all living things. In the world of man it is a time of social harmony; those in high places show favor to the lowly, and the lowly and inferior in their turn are well disposed toward the highly placed.  There is an end to all feuds. Inside, at the center, in the key position, is the light principle; the dark principle is outside.  Thus the light has a powerful influence, while the dark is submissive.  In this way each receives its due.  When the good elements of society occupy a central position and are in control, the evil elements come under their influence and change for the better.  When the spirit of heaven rules in man, his animal nature also comes under its influence and takes its appropriate place. The individual lines enter the hexagram from below and leave it again at the top.  Here the small, weak, and evil elements are about to take their departure, while the great, strong, and good elements are moving up.  This brings good fortune and success. 
        """

        IChing_Book[Hexagram].TheImage =
                    
        """
         Heaven and earth unite: the image of PEACE.  Thus the ruler  Divides and completes the course of heaven and earth;  He furthers and regulates the gifts of heaven and earth,  And so aids the people. 
        """

        IChing_Book[Hexagram].Intro3 =
                    
        """
         Heaven and earth are in contact and combine their influences, producing a time of universal flowering and prosperity.  This stream of energy must be regulated by the ruler of men.  It is done by a process of division.  Thus men divide the uniform flow of time into the seasons, according to the succession of natural phenomena, and mark off infinite space by the points of the compass.  In this way nature in its overwhelming profusion of phenomena is bounded and controlled.  One the other hand, nature must be furthered in her productiveness.  This is done by adjusting the products to the right time and the right place, which increases the natural yield.  This controlling and furthering activity of man in his relation to nature is the work on nature that rewards him. 
        """

        IChing_Book[Hexagram].Read1 =
                    
        """
         Nine at the beginning means:  When ribbon grass is pulled up, the sod comes with it.  Each according to his kind.  Undertakings bring good fortune. 
        """

        IChing_Book[Hexagram].Read2 =
                    
        """
         Nine in the second place means:  Bearing with the uncultured in gentleness,  Fording the river with resolution,  Not neglecting what is distant,  Not regarding one’s companions:  Thus one may manage to walk in the middle. 
        """

        IChing_Book[Hexagram].Read3 =
                    
        """
         Nine in the third place means:  No plain not followed by a slope.  No going not followed by a return.  He who remains persevering in danger  Is without blame.  Do not complain about this truth;  Enjoy the good fortune you still possess. 
        """

        IChing_Book[Hexagram].Read4 =
                    
        """
         Six in the fourth place means:  He flutters down, not boasting of his wealth,  Together with his neighbor,  Guileless and sincere. 
        """

        IChing_Book[Hexagram].Read5 =
                    
        """
         Six in the fifth place means:  The sovereign I  Gives his daughter in marriage.  This brings blessing  And supreme good fortune. 
        """

        IChing_Book[Hexagram].Read6 =
                    
        """
         The wall falls back into the moat.  Use no army now.  Make your commands known within your own town.  Perseverance brings humiliation. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
         ○ 
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 46;
        IChing_Book[Hexagram].Place1ChangesToTitle =
                    
        """
         Pushing Upwards ䷭ 
        """

        IChing_Book[Hexagram].Place2ChangesToNumber = 36;
        IChing_Book[Hexagram].Place2ChangesToTitle =
                    
        """
         Darkening of the Light ䷣ 
        """

        IChing_Book[Hexagram].Place3ChangesToNumber = 19;
        IChing_Book[Hexagram].Place3ChangesToTitle =
                    
        """
         Approach ䷒ 
        """

        IChing_Book[Hexagram].Place4ChangesToNumber = 34;
        IChing_Book[Hexagram].Place4ChangesToTitle =
                    
        """
         The Power of the Great ䷡ 
        """

        IChing_Book[Hexagram].Place5ChangesToNumber = 5;
        IChing_Book[Hexagram].Place5ChangesToTitle =
                    
        """
         Waiting (Nourishment) ䷄ 
        """

        IChing_Book[Hexagram].Place6ChangesToNumber = 26;
        IChing_Book[Hexagram].Place6ChangesToTitle =
                    
        """
         The Taming Power of the Great ䷙ 
        """

                
        Hexagram = 12;
        IChing_Book[Hexagram].EngTitle = "Standstill (Stagnation) "

        IChing_Book[Hexagram].ChiTitle = "P’i "

        IChing_Book[Hexagram].ChiSymbol = "否 "

        IChing_Book[Hexagram].AltTitles = "Standstill, The Symbol of Closing, Stagnation, Obstruction, The Wife, Obstructed, Decadence, Disjunction, Impasse "

        IChing_Book[Hexagram].Hex = "䷋ "

        IChing_Book[Hexagram].Code = [ 0, 0, 0, 1, 1, 1 ];
        IChing_Book[Hexagram].Above =
                    
        """
         CH’IEN  /  THE CREATIVE, HEAVEN 
        """

        IChing_Book[Hexagram].Below =
                    
        """
         K’UN  /  THE RECEPTIVE, EARTH 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☰ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☷ 
        """

        IChing_Book[Hexagram].Intro1 =
                    
        """
         This hexagram is the opposite of the preceding one.  Heaven is above, drawing farther and farther away, while the earth below sinks farther into the depths.  The creative powers are not in relation.  It is a time of standstill and decline.  This hexagram is linked with the seventh month (August–September), when the year has passed its zenith and autumnal decay is setting in. 
        """

        IChing_Book[Hexagram].TheJudgment =
                    
        """
         STANDSTILL.  Evil people do not further  The perseverance of the superior man.  The great departs; the small approaches. 
        """

        IChing_Book[Hexagram].Intro2 =
                    
        """
         Heaven and earth are out of communion and all things are benumbed.  What is above has no relation to what is below, and on earth confusion and disorder prevail.  The dark power is within, the light power is without.  Weakness is within, harshness without.  Within are the inferior, and without are the superior.  The way of inferior people is in ascent; the way of superior people is one the decline.  But the superior people do not allow themselves to be turned from their principles.  If the possibility of exerting influence is closed to them, they nevertheless remain faithful to their principles and withdraw into seclusion. 
        """

        IChing_Book[Hexagram].TheImage =
                    
        """
         Heaven and earth do not unite:  The image of STANDSTILL.  Thus the superior man falls back upon his inner worth  In order to escape the difficulties.  He does not permit himself to be honored with revenue. 
        """

        IChing_Book[Hexagram].Intro3 =
                    
        """
         When, owing to the influence of inferior men, mutual mistrust prevails in public life, fruitful activity is rendered impossible, because the fundaments are wrong.  Therefore the superior man knows what he must do under such circumstances; he does not allow himself to be tempted by dazzling offers to take part in public activities.  This would only expose him to danger, since he cannot assent to the meanness of the others.  He therefore hides his worth and withdraws into seclusion. 
        """

        IChing_Book[Hexagram].Read1 =
                    
        """
         Six at the beginning means:  When ribbon grass is pulled up, the sod comes with it.  Each according to his kind.  Perseverance brings good fortune and success. 
        """

        IChing_Book[Hexagram].Read2 =
                    
        """
         Six in the second place means:  They bear and endure;  This means good fortune for inferior people.  The standstill serves to help the great man to attain success. 
        """

        IChing_Book[Hexagram].Read3 =
                    
        """
         Six in the third place means:  They bear shame. 
        """

        IChing_Book[Hexagram].Read4 =
                    
        """
         Nine in the fourth place means:  He who acts at the command of the highest  Remains without blame.  Those of like mind partake of the blessing. 
        """

        IChing_Book[Hexagram].Read5 =
                    
        """
         Nine in the fifth place means:  Standstill is giving way.  Good fortune for the great man.  “What if it should fail, what if it should fail?”  In this way he ties it to a cluster of mulberry shoots. 
        """

        IChing_Book[Hexagram].Read6 =
                    
        """
         Nine at the top means:  The standstill comes to an end.  First standstill, then good fortune. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
         ◻ 
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
         ○ 
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 25;
        IChing_Book[Hexagram].Place2ChangesToNumber = 6;
        IChing_Book[Hexagram].Place3ChangesToNumber = 33;
        IChing_Book[Hexagram].Place4ChangesToNumber = 20;
        IChing_Book[Hexagram].Place5ChangesToNumber = 35;
        IChing_Book[Hexagram].Place6ChangesToNumber = 45;
                
                
        Hexagram = 13;
        IChing_Book[Hexagram].EngTitle = "Fellowship with Men "

        IChing_Book[Hexagram].ChiTitle = "T’ung Jên "

        IChing_Book[Hexagram].ChiSymbol = "同人 "

        IChing_Book[Hexagram].AltTitles = "Fellowship with Men, The Symbol of Companionship, Lovers, Beloved Friends, Like-minded persons, Concording People, Gathering Men, Sameness with People, Universal Brotherhood, Fellowship, Community, United, Human Association, Union of Men, Integration of Forces, Minor Synthesis, Cliques, Concordance, To Be In Accord With, Confirmation "

        IChing_Book[Hexagram].Hex = "䷌ "

        IChing_Book[Hexagram].Code = [ 1, 0, 1, 1, 1, 1 ];
        IChing_Book[Hexagram].Above =
                    
        """
         CH’IEN  /  THE CREATIVE, HEAVEN 
        """

        IChing_Book[Hexagram].Below =
                    
        """
         LI  /  THE CLINGING, FLAME 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☰ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☲ 
        """

        IChing_Book[Hexagram].Intro1 =
                    
        """
         The image of the upper trigram Ch’ien is heaven, and that of the lower, Li, is flame.  It is the nature of fire to flame up to heaven.  This gives the idea of fellowship.  It is the second line that, by virtue of its central character, unites the five strong lines around it.  This hexagram forms a complement to Shih, THE ARMY (7).  In the latter, danger is within and obedience without—the character of a warlike army, which, in order to hold together, needs one strong man among the many who are weak.  Here, clarity is within and strength without—the character of a peaceful union of men, which, in order to hold together, needs one yielding nature among many firm persons. 
        """

        IChing_Book[Hexagram].TheJudgment =
                    
        """
         FELLOWSHIP WITH MEN in the open.  Success.  It furthers one to cross the great water.  The perseverance of the superior man furthers. 
        """

        IChing_Book[Hexagram].Intro2 =
                    
        """
         True fellowship among men must be based upon a concern that is universal.  It is not the private interests of the individual that create lasting fellowship among men, but rather the goals of humanity.  That is why it is said that fellowship with men in the open succeeds.  If unity of this kind prevails, even difficult and dangerous tasks, such as crossing the great water, can be accomplished.  But in order to bring about this sort of fellowship, a persevering and enlightened leader is needed—a man with clear, convincing, and inspiring aims and the strength to carry them out.  (The inner trigram means clarity; the outer, strength.) 
        """

        IChing_Book[Hexagram].TheImage =
                    
        """
         Heaven together with fire:  The image of FELLOWSHIP WITH MEN.  Thus the superior man organizes the clans  And makes distinctions between things. 
        """

        IChing_Book[Hexagram].Intro3 =
                    
        """
         Heaven has the same direction of movement as fire, yet it is different from fire.  Just as the luminaries in the sky serve for the systematic division and arrangement of time, so human society and all things that really belong together must be organically arranged.  Fellowship should not be a mere mingling of individuals or of things—that would be chaos, not fellowship.  If fellowship is to lead to order, there must be organization within diversity. 
        """

        IChing_Book[Hexagram].Read1 =
                    
        """
         Nine at the beginning means:  Fellowship with men at the gate.  No blame. 
        """

        IChing_Book[Hexagram].Read2 =
                    
        """
         Six in the second place means:  Fellowship with men in the clan.  Humiliation. 
        """

        IChing_Book[Hexagram].Read3 =
                    
        """
         Nine in the third place means:  He hides weapons in the thicket;  He climbs the high hill in front of it.  For three years he does not rise up. 
        """

        IChing_Book[Hexagram].Read4 =
                    
        """
         Nine in the fourth place means:  He climbs up on his wall; he cannot attack.  Good fortune. 
        """

        IChing_Book[Hexagram].Read5 =
                    
        """
         Nine in the fifth place means:  Men bound in fellowship first weep and lament,  But afterward they laugh.  After great struggles they succeed in meeting. 
        """

        IChing_Book[Hexagram].Read6 =
                    
        """
         Nine at the top means:  Fellowship with men in the meadow.  No remorse. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
         ○ 
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 33;
        IChing_Book[Hexagram].Place2ChangesToNumber = 1;
        IChing_Book[Hexagram].Place3ChangesToNumber = 25;
        IChing_Book[Hexagram].Place4ChangesToNumber = 37;
        IChing_Book[Hexagram].Place5ChangesToNumber = 30;
        IChing_Book[Hexagram].Place6ChangesToNumber = 49;
                
                
        Hexagram = 14;
        IChing_Book[Hexagram].EngTitle = "Possession in Great Measure "

        IChing_Book[Hexagram].ChiTitle = "Ta Yu "

        IChing_Book[Hexagram].ChiSymbol = "大有 "

        IChing_Book[Hexagram].AltTitles = "The Symbol of Great Possession, Sovereignty, Great Having, Great Possessing, The Great Possessor, Great Wealth, Abundance, Having What is Great "

        IChing_Book[Hexagram].Hex = "䷍ "

        IChing_Book[Hexagram].Code = [ 1, 1, 1, 1, 0, 1 ];
        IChing_Book[Hexagram].Above =
                    
        """
         LI  /  THE CLINGING, FLAME 
        """

        IChing_Book[Hexagram].Below =
                    
        """
         CH’IEN  /  THE CREATIVE, HEAVEN 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☲ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☰ 
        """

        IChing_Book[Hexagram].Intro1 =
                    
        """
         The fire in heaven above shines far, and all things stand out in the light and become manifest.  The weak fifth line occupies the place of honor, and all the strong lines are in accord with it.  All things come to the man who is modest and kind in a high position. 
        """

        IChing_Book[Hexagram].TheJudgment =
                    
        """
         POSSESSION IN GREAT MEASURE.  Supreme success. 
        """

        IChing_Book[Hexagram].Intro2 =
                    
        """
         The two trigrams indicate that strength and clarity unite.  Possession in great measure is determined by fate and accords with the time.  How is it possible that the weak line has power to hold the strong lines fast and to possess them?  It is done by virtue of unselfish modesty.  The time is favorable—a time of strength within, clarity and culture without.  Power is expressing itself in graceful and controlled way.  This brings supreme success and wealth. 
        """

        IChing_Book[Hexagram].TheImage =
                    
        """
         Fire in heaven above:  The image of POSSESSION IN GREAT MEASURE.  Thus the superior man curbs evil and furthers good,  And thereby obeys the benevolent will of heaven. 
        """

        IChing_Book[Hexagram].Intro3 =
                    
        """
         The sun in heaven above, shedding light over everything on earth, is the image of possession on a grand scale.  But a possession of this sort must be administered properly.  The sun brings both evil and good into the light of day.  Man must combat and curb the evil, and must favor and promote the good.  Only in this way does he fulfill the benevolent will of God, who desires only good and not evil. 
        """

        IChing_Book[Hexagram].Read1 =
                    
        """
         Nine at the beginning means:  No relationship with what is harmful;  There is no blame in this.  If one remains conscious of difficulty,  One remains without blame. 
        """

        IChing_Book[Hexagram].Read2 =
                    
        """
         Nine in the second place means:  A big wagon for loading.  One may undertake something.  No blame. 
        """

        IChing_Book[Hexagram].Read3 =
                    
        """
         Nine in the third place means:  A prince offers it to the Son of Heaven.  A petty man cannot do this. 
        """

        IChing_Book[Hexagram].Read4 =
                    
        """
         Nine in the fourth place means:  He makes a difference  Between himself and his neighbor.  No blame. 
        """

        IChing_Book[Hexagram].Read5 =
                    
        """
         Six in the fifth place means:  He whose truth is accessible, yet dignified,  Has good fortune. 
        """

        IChing_Book[Hexagram].Read6 =
                    
        """
         Nine at the top means:  He is blessed by heaven.  Good fortune.  Nothing that does not further. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
         ○ 
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 50;
        IChing_Book[Hexagram].Place2ChangesToNumber = 30;
        IChing_Book[Hexagram].Place3ChangesToNumber = 38;
        IChing_Book[Hexagram].Place4ChangesToNumber = 26;
        IChing_Book[Hexagram].Place5ChangesToNumber = 1;
        IChing_Book[Hexagram].Place6ChangesToNumber = 34;
                
        Hexagram = 15;
        IChing_Book[Hexagram].EngTitle = "Modesty "

        IChing_Book[Hexagram].ChiTitle = "Ch’ien "

        IChing_Book[Hexagram].ChiSymbol = "謙 "

        IChing_Book[Hexagram].AltTitles = "The Symbol of Humility, Moderation, Humbling, Respectful/Humble, Yielding/Retiring "

        IChing_Book[Hexagram].Hex = "䷎ "

        IChing_Book[Hexagram].Code = [ 0, 0, 1, 0, 0, 0 ];
        IChing_Book[Hexagram].Above =
                    
        """
         K’UN  /  THE RECEPTIVE, EARTH 
        """

        IChing_Book[Hexagram].Below =
                    
        """
         KÊN  /  KEEPING STILL, MOUNTAIN 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☷ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☶ 
        """

        IChing_Book[Hexagram].Intro1 =
                    
        """
         This hexagram is made up of the trigrams Kên Keeping Still, mountain, and K’un.  The mountain is the youngest son of the Creative, the representative of heaven and earth.  It dispenses the blessings of heaven, the clouds and rain that gather round its summit, and thereafter shines forth radiant with heavenly light.  This shows what modesty is and how it functions in great and strong men.  K’un, the earth, stands above.  Lowliness is a quality of the earth: this is the very reason why it appears in this hexagram as exalted, by being placed above the mountain.  This shows how modesty functions in lowly, simple people: they are lifted up by it. 
        """

        IChing_Book[Hexagram].TheJudgment =
                    
        """
         MODESTY creates success.  The superior man carries things through. 
        """

        IChing_Book[Hexagram].Intro2 =
                    
        """
         It is the law of heaven to make fullness empty and to make full what is modest; when the sun is at its zenith, it must, according to the law of heaven, turn toward its setting, and at its nadir it rises toward a new dawn.  In obedience to the same law, the moon when it is full begins to wane, and when empty of light it waxes again.  This heavenly law works itself out in the fates of men also.  It is the law of earth to alter the full and to contribute to the modest.  High mountains are worn down by the waters, and the valleys are filled up.  It is the law of fate to undermine what is full and to prosper the modest.  And men also hate fullness and love the modest. The destinies of men are subject to immutable laws that must fulfill themselves.  But man has it in his power to shape his fate, according as his behavior exposes him to the influence of benevolent or of destructive forces.  When a man holds a high position and is nevertheless modest, he shines with the light of wisdom; if he is in a lowly position and is modest, he cannot be passed by.  Thus the superior man can carry out his work to the end without boasting of what he has achieved. 
        """

        IChing_Book[Hexagram].TheImage =
                    
        """
         Within the earth, a mountain:  The image of MODESTY.  Thus the superior man reduces that which is too much,  And augments that which is too little.  He weighs things and makes them equal. 
        """

        IChing_Book[Hexagram].Intro3 =
                    
        """
         The wealth of the earth in which a mountain is hidden is not visible to the eye, because the depths are offset by the height of the mountain.  Thus high and low complement each other, and the result is the plain.  Here an effect that it took a long time to achieve, but that in the end seems easy of accomplishment and self–evident, is used as the image of modesty.  The superior man does the same thing when he establishes order in the world; he equalizes the extremes that are the source of social discontent and thereby creates just and equable conditions. 
        """

        IChing_Book[Hexagram].Read1 =
                    
        """
         Six at the beginning means:  A superior man modest about his modesty  May cross the great water.  Good fortune. 
        """

        IChing_Book[Hexagram].Read2 =
                    
        """
         Six in the second place means:  Modesty that comes to expression.  Perseverance brings good fortune. 
        """

        IChing_Book[Hexagram].Read3 =
                    
        """
         Nine in the third place means:  A superior man of modesty and merit  Carries things to conclusion.  Good fortune. 
        """

        IChing_Book[Hexagram].Read4 =
                    
        """
         Six in the fourth place means:  Nothing that would not further modesty  In movement. 
        """

        IChing_Book[Hexagram].Read5 =
                    
        """
         Six in the fifth place means:  No boasting of wealth before one’s neighbor.  It is favorable to attack with force.  Nothing that would not further. 
        """

        IChing_Book[Hexagram].Read6 =
                    
        """
         Six at the top means:  Modesty that comes to expression.  It is favorable to set armies marching  To chastise one’s own city and one’s country. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
          
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 36;
        IChing_Book[Hexagram].Place2ChangesToNumber = 46;
        IChing_Book[Hexagram].Place3ChangesToNumber = 2;
        IChing_Book[Hexagram].Place4ChangesToNumber = 62;
        IChing_Book[Hexagram].Place5ChangesToNumber = 39;
        IChing_Book[Hexagram].Place6ChangesToNumber = 52;
                
        Hexagram = 16;
        IChing_Book[Hexagram].EngTitle = "Enthusiasm "

        IChing_Book[Hexagram].ChiTitle = "Yü "

        IChing_Book[Hexagram].ChiSymbol = "豫 "

        IChing_Book[Hexagram].AltTitles = "The Symbol of Harmonious Joy, Repose, Happiness, Providing-for/Provision, Excess, Merriment, Self-confidence, Contentment, Harmonize, Excitement, Intemperance, Self-deception "

        IChing_Book[Hexagram].Hex = "䷏ "

        IChing_Book[Hexagram].Code = [ 0, 0, 0, 1, 0, 0 ];
        IChing_Book[Hexagram].Above =
                    
        """
         CHÊN  /  THE AROUSING, THUNDER 
        """

        IChing_Book[Hexagram].Below =
                    
        """
         K’UN  /  THE RECEPTIVE, EARTH 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☳ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☷ 
        """

        IChing_Book[Hexagram].Intro1 =
                    
        """
         The strong line in the fourth place, that of the leading official, meets with response and obedience from all the other lines, which are all weak.  The attribute of the upper trigram, Chên, is movement; the attributes of K’un, the lower, are obedience and devotion.  This begins a movement that meets with devotion and therefore inspires enthusiasm, carrying all with it.  Of great importance, furthermore, is the law of movement along the line of least resistance, which in this hexagram is enunciated as the law for natural events and for human life. 
        """

        IChing_Book[Hexagram].TheJudgment =
                    
        """
         ENTHUSIASM.  It furthers one to install helpers  And to set armies marching. 
        """

        IChing_Book[Hexagram].Intro2 =
                    
        """
         The time of ENTHUSIASM derives from the fact that there is at hand an eminent man who is in sympathy with the spirit of the people and acts in accord with it.  Hence he finds universal and willing obedience.  To arouse enthusiasm it is necessary for a man to adjust himself and his ordinances to the character of those whom he has to lead.  The inviolability of natural laws rests on this principle of movement along the line of least resistance.  These laws are not forces external to things but represent the harmony of movement immanent in them.  That is why the celestial bodies do not deviate from their orbits and why all events in nature occur with fixed regularity.  It is the same with human society: only such laws as are rooted in popular sentiment can be enforced, while laws violating this sentiment merely arouse resentment. Again, it is enthusiasm that enables us to install helpers for the completion of an undertaking without fear of secret opposition.  It is enthusiasm too that can unify mass movements, as in war, so that they achieve victory. 
        """

        IChing_Book[Hexagram].TheImage =
                    
        """
         Thunder comes resounding out of the earth:  The image of ENTHUSIASM.  Thus the ancient kings made music  In order to honor merit,  And offered it with splendor  To the Supreme Deity,  Inviting their ancestors to be present. 
        """

        IChing_Book[Hexagram].Intro3 =
                    
        """
         When, at the beginning of summer, thunder—electrical energy—comes rushing forth from the earth again, and the first thunderstorm refreshes nature, a prolonged state of tension is resolved.  Joy and relief make themselves felt.  So too, music has power to ease tension within the heart and to loosen the grip of obscure emotions.  The enthusiasm of the heart expresses itself involuntarily in a burst of song, in dance and rhythmic movement of the body.  From immemorial times the inspiring effect of the invisible sound that moves all hearts, and draws them together, has mystified mankind.

         Rulers have made use of this natural taste for music; they elevated and regulated it.  Music was looked upon as something serious and holy, designed to purify the feelings of men.  It fell to music to glorify the virtues of heroes and thus to construct a bridge to the world of the unseen.  In the temple men drew near to God with music and pantomimes (out of this later the theater developed).  Religious feeling for the Creator of the world was united with the most sacred of human feelings, that of reverence for the ancestors.  The ancestors were invited to these divine services as guests of the Ruler of Heaven and as representatives of humanity in the higher regions.  This uniting of the human past with the Divinity in solemn moments of religious inspiration established the bond between God and man.  The ruler who revered the Divinity in revering his ancestors became thereby the Son of Heaven, in whom the heavenly and the earthly world met in mystical contact. These ideas are the final summation of Chinese culture.  Confucius has said of the great sacrifice at which these rites were performed: “He who could wholly comprehend this sacrifice could rule the world as though it were spinning on his hand.” 
        """

        IChing_Book[Hexagram].Read1 =
                    
        """
         Six at the beginning means:  Enthusiasm that expresses itself  Brings misfortune. 
        """

        IChing_Book[Hexagram].Read2 =
                    
        """
         Six in the second place means:  Firm as a rock.  Not a whole day.  Perseverance brings good fortune. 
        """

        IChing_Book[Hexagram].Read3 =
                    
        """
         Six in the third place means:  Enthusiasm that looks upward creates remorse.  Hesitation brings remorse. 
        """

        IChing_Book[Hexagram].Read4 =
                    
        """
         Nine in the fourth place means:  The source of enthusiasm.  He achieves great things.  Doubt not.  You gather friends around you  As a hair clasp gathers the hair. 
        """

        IChing_Book[Hexagram].Read5 =
                    
        """
         Six in the fifth place means:  Persistently ill, and still does not die. 
        """

        IChing_Book[Hexagram].Read6 =
                    
        """
         Six at the top means:  Deluded enthusiasm.  But if after completion one changes,  There is no blame. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
          
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 51;
        IChing_Book[Hexagram].Place2ChangesToNumber = 40;
        IChing_Book[Hexagram].Place3ChangesToNumber = 62;
        IChing_Book[Hexagram].Place4ChangesToNumber = 2;
        IChing_Book[Hexagram].Place5ChangesToNumber = 45;
        IChing_Book[Hexagram].Place6ChangesToNumber = 35;
                
        Hexagram = 17;
        IChing_Book[Hexagram].EngTitle = "Following "

        IChing_Book[Hexagram].ChiTitle = "Sui "

        IChing_Book[Hexagram].ChiSymbol = "隨 "

        IChing_Book[Hexagram].AltTitles = "According With, Acquiring Followers, Adapting, Adjusting, To Accord With, To Accompany, Concordance, Conformance to The Work "

        IChing_Book[Hexagram].Hex = "䷐ "

        IChing_Book[Hexagram].Code = [ 1, 0, 0, 1, 1, 0 ];
        IChing_Book[Hexagram].Above =
                    
        """
         TUI  /  THE JOYOUS, LAKE 
        """

        IChing_Book[Hexagram].Below =
                    
        """
         CHÊN  /  THE AROUSING, THUNDER 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☱ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☳ 
        """

        IChing_Book[Hexagram].Intro1 =
                    
        """
         The trigram Tui, the Joyous, whose attribute is gladness, is above; Chên, the Arousing, which has the attribute of movement, is below.  Joy in movement induces following.  The Joyous is the youngest daughter, while the Arousing is the eldest son.  An older man defers to a young girl and shows her consideration.  By this he moves her to follow him. 
        """

        IChing_Book[Hexagram].TheJudgment =
                    
        """
         FOLLOWING has supreme success.  Perseverance furthers.  No blame. 
        """

        IChing_Book[Hexagram].Intro2 =
                    
        """
         In order to obtain a following one must first know how to adapt oneself.  If a man would rule he must first learn to serve, for only in this way does he secure from those below him the joyous assent that is necessary if they are to follow him.  If he has to obtain a following by force or cunning, by conspiracy or by creating factions, he invariably arouses resistance, which obstructs willing adherence.  But even joyous movement can lead to evil consequences, hence the added stipulation, “Perseverance furthers”—that is, consistency in doing right—together with “No blame.”  Just as we should not ask others to follow us unless this condition is fulfilled, so it is only under this condition that we can in turn follow others without coming to harm. The thought of obtaining a following through adaptation to the demands of the time is a great and significant idea; this is why the appended judgment is so favorable. 
        """

        IChing_Book[Hexagram].TheImage =
                    
        """
         Thunder in the middle of the lake:  The image of FOLLOWING.  Thus the superior man at nightfall  Goes indoors for rest and recuperation. 
        """

        IChing_Book[Hexagram].Intro3 =
                    
        """
         In the autumn electricity withdraws into the earth again and rests.  Here it is the thunder in the middle of the lake that serves as the image—thunder in its winter rest, not thunder in motion.  The idea of following in the sense of adaptation to the demands of the time grows out of this image.  Thunder in the middle of the lake indicates times of darkness and rest.  Similarly, a superior man, after being tirelessly active all day, allows himself rest and recuperation at night.  No situation can become favorable until one is able to adapt to it and does not wear himself out with mistaken resistance. 
        """

        IChing_Book[Hexagram].Read1 =
                    
        """
         Nine at the beginning means:  The standard is changing.  Perseverance brings good fortune.  To go out of the door in company  Produces deeds. 
        """

        IChing_Book[Hexagram].Read2 =
                    
        """
         Six in the second place means:  If one clings to the little boy,  One loses the strong man. 
        """

        IChing_Book[Hexagram].Read3 =
                
        """
         Six in the third place means:  If one clings to the strong man,  One loses the little boy.  Through following one finds what one seeks.  It furthers one to remain persevering. 
        """

        IChing_Book[Hexagram].Read4 =
                    
        """
         Nine in the fourth place means:  Following creates success.  Perseverance brings misfortune.  To go one’s way with sincerity brings clarity.  How could there be blame in this? 
        """

        IChing_Book[Hexagram].Read5 =
                    
        """
         Nine in the fifth place means:  Sincere in the good.  Good fortune. 
        """

        IChing_Book[Hexagram].Read6 =
                    
        """
         Six at the top means:  He meets with firm allegiance  And is still further bound.  The king introduces him  To the Western Mountain. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
         ○ 
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 45;
        IChing_Book[Hexagram].Place2ChangesToNumber = 58;
        IChing_Book[Hexagram].Place3ChangesToNumber = 49;
        IChing_Book[Hexagram].Place4ChangesToNumber = 3;
        IChing_Book[Hexagram].Place5ChangesToNumber = 51;
        IChing_Book[Hexagram].Place6ChangesToNumber = 25;
                
        Hexagram = 18;
        IChing_Book[Hexagram].EngTitle = "Work on what has been Spoiled (Decay) "

        IChing_Book[Hexagram].ChiTitle = "Ku "

        IChing_Book[Hexagram].ChiSymbol = "蠱 "

        IChing_Book[Hexagram].AltTitles = "The Symbol of Destruction, Decay, Arresting of Decay, Work after Spoiling, Fixing, Rectifying, Corrupting, Branch, Degeneration, Misdeeds "

        IChing_Book[Hexagram].Hex = "䷑ "

        IChing_Book[Hexagram].Code = [ 0, 1, 1, 0, 0, 1 ];
        IChing_Book[Hexagram].Above =
                    
        """
         KÊN  /  KEEPING STILL, MOUNTAIN 
        """

        IChing_Book[Hexagram].Below =
                    
        """
         SUN  /  THE GENTLE, WIND 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☶ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☴ 
        """

        IChing_Book[Hexagram].Intro1 =
                    
        """
         The Chinese character ku represents a bowl in whose contents worms are breeding.  This means decay.  It is come about because the gentle indifference in the lower trigram has come together with the rigid inertia of the upper, and the result is stagnation.  Since this implies guilt, the conditions embody a demand for removal of the cause.  Hence the meaning of the hexagram is not simply “what has been spoiled” but “work on what has been spoiled.” 
        """

        IChing_Book[Hexagram].TheJudgment =
                    
        """
         WORK ON WHAT HAS BEEN SPOILED  Has supreme success.  It furthers one to cross the great water.  Before the starting point, three days.  After the starting point, three days. 
        """

        IChing_Book[Hexagram].Intro2 =
                    
        """
         What has been spoiled through man’s fault can be made good again through man’s work.  It is not immutable fate, as in the time of STANDSTILL, that has caused the state of corruption, but rather the abuse of human freedom.  Work toward improving conditions promises well, because it accords the possibilities of the time.  We must not recoil from work and danger—symbolized by crossing of the great water—but must take hold energetically.  Success depends, however, on proper deliberation.  This is expressed by the lines, “Before the starting point, three days.  After the starting point, three days.”  We must first know the causes of corruption before we can do away with them; hence it is necessary to be cautious during the time before the start.  Then we must see to it that the new way is safely entered upon, so that a relapse may be avoided; therefore we must pay attention to the time after the start.  Decisiveness and energy must take the place of inertia and indifference that have led to decay, in order that the ending may be followed by a new beginning. 
        """

        IChing_Book[Hexagram].TheImage =
                    
        """
         The wind blows low on the mountain:  The image of DECAY.  Thus the superior man stirs up the people  And strengthens their spirit. 
        """

        IChing_Book[Hexagram].Intro3 =
                    
        """
         When the wind blows low on the mountain, it is thrown back and spoils the vegetation.  This contains a challenge to improvement.  It is the same with debasing attitudes and fashions; they corrupt human society.  His methods likewise must be derived from the two trigrams, but in such a way that their effects unfold in orderly sequence.  The superior man must first remove stagnation by stirring up public opinion, as the wind stirs everything, and must strengthen and tranquillize the character of the people, as the mountain gives tranquillity and nourishment to all that grows in its vicinity. 
        """

        IChing_Book[Hexagram].Read1 =
                    
        """
         Six in the beginning means:  Setting right what has been spoiled by the father.  If there is a son,  No blame rests upon the departed father.  Danger.  In the end good fortune. 
        """

        IChing_Book[Hexagram].Read2 =
                    
        """
         Nine in the second place means:  Setting right what has been spoiled by the mother.  One must not be too persevering. 
        """

        IChing_Book[Hexagram].Read3 =
                    
        """
         Nine in the third place means:  Setting right what has been spoiled by the father.  There will be a little remorse.  No great blame. 
        """

        IChing_Book[Hexagram].Read4 =
                    
        """
         Six in the fourth place means:  Tolerating what has been spoiled by the father.  In continuing one sees humiliation. 
        """

        IChing_Book[Hexagram].Read5 =
                    
        """
         Six in the fifth place means:  Setting right what has been spoiled by the father.  One meets with praise. 
        """

        IChing_Book[Hexagram].Read6 =
                    
        """
         Nine at the top means:  He does not serve kings and princes,  Sets himself higher goals. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
         ○ 
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 26;
        IChing_Book[Hexagram].Place2ChangesToNumber = 52;
        IChing_Book[Hexagram].Place3ChangesToNumber = 4;
        IChing_Book[Hexagram].Place4ChangesToNumber = 50;
        IChing_Book[Hexagram].Place5ChangesToNumber = 57;
        IChing_Book[Hexagram].Place6ChangesToNumber = 46;
                
                
        Hexagram = 19;
        IChing_Book[Hexagram].EngTitle = "Approach "

        IChing_Book[Hexagram].ChiTitle = "Lin "

        IChing_Book[Hexagram].ChiSymbol = "臨 "

        IChing_Book[Hexagram].AltTitles = "The Symbol of Advance and Arrival, Nearing, Overseeing, Condescension, Getting Ahead, Promotion, Conduct, Drawing Near, Becoming Great "

        IChing_Book[Hexagram].Hex = "䷒ "

        IChing_Book[Hexagram].Code = [ 1, 1, 0, 0, 0, 0 ];
        IChing_Book[Hexagram].Above =
                    
        """
         K’UN  /  THE RECEPTIVE, EARTH 
        """

        IChing_Book[Hexagram].Below =
                    
        """
         TUI  /  THE JOYOUS, LAKE 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☷ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☱ 
        """

        IChing_Book[Hexagram].Intro1 =
                    
        """
         The Chinese word lin has a range of meanings that is not exhausted by any single word of another language.  The ancient explanations in the Book of Changes give as its first meaning, “becoming great.”  What becomes great are the two strong lines growing into the hexagram from below; the light–giving power expands with them.  The meaning is then further extended to include the concept of approach, especially the approach of what is strong and highly placed in relation to what is lower.  Finally the meaning includes the attitude of condescension of a man in high position toward the people, and in general the setting to work on affairs.  This hexagram is linked with the twelfth month (January–February), when, after the winter solstice, the light power begins to ascend again. 
        """

        IChing_Book[Hexagram].TheJudgment =
                    
        """
         APPROACH has supreme success.  Perseverance furthers.  When the eighth month comes,  There will be misfortune. 
        """

        IChing_Book[Hexagram].Intro2 =
                    
        """
         The hexagram as a whole points to a time of joyous, hopeful progress.  Spring is approaching.  Joy and forbearance bring high and low nearer together.  Success is certain.  But we must work with determination and perseverance to make full use of the propitiousness of the time.  And one thing more: spring does not last forever.  In the eighth month the aspects are reversed.  Then only two strong, light lines are left; these do not advance but are in retreat (see next hexagram).  We must take heed of this change in good time.  If we meet evil before it becomes reality—before it has even begun to stir—we can master it. 
        """

        IChing_Book[Hexagram].TheImage =
                    
        """
         The earth above the lake:  The image of APPROACH.  Thus the superior man is inexhaustible  In his will to teach,  And without limits  In his tolerance and protection of the people. 
        """

        IChing_Book[Hexagram].Intro3 =
                    
        """
         The earth borders upon the lake from above.  This symbolizes the approach and condescension of the man of higher position to those beneath him.  The two parts of the image indicate what his attitude toward these people will be.  Just as the lake is inexhaustible in depth, so the sage is inexhaustible in his readiness to teach mankind, and just as the earth is boundlessly wide, sustaining and caring for all creatures on it, so the sage sustains and cares for all people and excludes no part of humanity. 
        """

        IChing_Book[Hexagram].Read1 =
                    
        """
         Nine at the beginning means:  Joint approach.  Perseverance brings good fortune. 
        """

        IChing_Book[Hexagram].Read2 =
                    
        """
         Nine in the second place means:  Joint approach.  Good fortune.  Everything furthers. 
        """

        IChing_Book[Hexagram].Read3 =
                    
        """
         Six in the third place means:  Comfortable approach.  Nothing that would further.  If one is induced to grieve over it,  One becomes free of blame. 
        """

        IChing_Book[Hexagram].Read4 =
                    
        """
         Six in the fourth place means:  Complete approach.  No blame. 
        """

        IChing_Book[Hexagram].Read5 =
                    
        """
         Six in the fifth place means:  Wise approach.  This is right for a great prince.  Good fortune. 
        """

        IChing_Book[Hexagram].Read6 =
                    
        """
         Six at the top means:  Great hearted approach.  Good fortune.  No blame. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
          
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 7;
        IChing_Book[Hexagram].Place2ChangesToNumber = 24;
        IChing_Book[Hexagram].Place3ChangesToNumber = 11;
        IChing_Book[Hexagram].Place4ChangesToNumber = 54;
        IChing_Book[Hexagram].Place5ChangesToNumber = 60;
        IChing_Book[Hexagram].Place6ChangesToNumber = 41;
                
                
        Hexagram = 20;
        IChing_Book[Hexagram].EngTitle = "Contemplation (View) "

        IChing_Book[Hexagram].ChiTitle = "Kuan "

        IChing_Book[Hexagram].ChiSymbol = "觀 "

        IChing_Book[Hexagram].AltTitles = "View, The Symbol of Steady Observation, Looking Down, Observation, Viewing, Looking Up, Observing, Admiration, To Examine, Rulers and Their Subjects, Introspection, Perception, Contemplation of the Work "

        IChing_Book[Hexagram].Hex = "䷓ "

        IChing_Book[Hexagram].Code = [ 0, 0, 0, 0, 1, 1 ];
        IChing_Book[Hexagram].Above =
                    
        """
         SUN  /  THE GENTLE, WIND 
        """

        IChing_Book[Hexagram].Below =
                    
        """
         K’UN  /  THE RECEPTIVE, EARTH 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☴ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☷ 
        """

        IChing_Book[Hexagram].Intro1 =
                    
        """
         A slight variation of tonal stress gives the Chinese name for this hexagram a double meaning.  It means both contemplating and being seen, in the sense of being an example.  These ideas are suggested by the fact that the hexagram can be understood as picturing a type of tower characteristic of ancient China.


         A tower of this kind commanded a wide view of the country; at the same time, when situated on a mountain, it became a landmark that could be seen for miles around.  Thus the hexagram shows a ruler who contemplates the law of heaven above him and the ways of the people below, and who, by means of good government, sets a lofty example to the masses. This hexagram is linked with the eight month (September–October).  The light–giving power retreats and the dark power is again on the increase.  However, this aspect is not material in the interpretation of the hexagram as a whole. 
        """

        IChing_Book[Hexagram].TheJudgment =
                    
        """
         CONTEMPLATION.  The ablution has been made,  But not yet the offering.  Full of trust they look up to him. 
        """

        IChing_Book[Hexagram].Intro2 =
                    
        """
         The sacrificial ritual in China began with an ablution and a libation by which the Deity was invoked, after which the sacrifice was offered.  The moment of time between these two ceremonies is the most sacred of all, the moment of deepest inner concentration.  If piety is sincere and expressive of real faith, the contemplation of it has a transforming and awe–inspiring effect on those who witness it. Thus also in nature a holy seriousness is to be seen in the fact that natural occurrences are uniformly subject to law.  Contemplation of the divine meaning underlying the workings of the universe gives to the man who is called upon to influence others the means of producing like effects.  This requires that power of inner concentration which religious contemplation develops in great men strong in faith.  It enables them to apprehend the mysterious and divine laws of life, and by means of profoundest inner concentration they give expression to these laws in their own persons.  Thus a hidden spiritual power emanates from them, influencing and dominating others without their being aware of how it happens. 
        """

        IChing_Book[Hexagram].TheImage =
                    
        """
         The wind blows over the earth:  The image of CONTEMPLATION.  Thus the kings of old visited the regions of the world,  Contemplated the people,  And gave them instruction. 
        """

        IChing_Book[Hexagram].Intro3 =
                    
        """
         When the wind blows over the earth it goes far and wide, and the grass must bend to its power.  These two occurrences find confirmation in the hexagram.  The two images are used to symbolize a practice of the kings of old; in making regular journeys the ruler could, in the first place, survey his realm and make certain that none of the existing usages of the people escaped notice; in the second, he could exert influence through which such customs as were unsuitable could be changed All of this points to the power possessed by a superior personality.  On the one hand, such a man will have a view of the real sentiments of the great mass of humanity and therefore cannot be deceived; on the other, he will impress the people so profoundly, by his mere existence and by the impact of his personality, that they will be swayed by him as the grass by the wind. 
        """

        IChing_Book[Hexagram].Read1 =
                    
        """
         Six at the beginning means:  Boylike contemplation.  For an inferior man, no blame.  For a superior man, humiliation. 
        """

        IChing_Book[Hexagram].Read2 =
                    
        """
         Six in the second place means:  Contemplation through the crack of the door.  Furthering for the perseverance of a woman. 
        """

        IChing_Book[Hexagram].Read3 =
                    
        """
         Six in the third place means:  Contemplation of my life  Decides the choice  Between advance and retreat. 
        """

        IChing_Book[Hexagram].Read4 =
                    
        """
         Six in the fourth place means:  Contemplation of the light of the kingdom.  It furthers one to exert influence as the guest of a king 
        """

        IChing_Book[Hexagram].Read5 =
                    
        """
         Nine in the fifth place means:  Contemplation of my life.  The superior man is without blame. 
        """

        IChing_Book[Hexagram].Read6 =
                    
        """
         Nine at the top means:  Contemplation of his life.  The superior man is without blame. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
         ○ 
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 42;
        IChing_Book[Hexagram].Place2ChangesToNumber = 59;
        IChing_Book[Hexagram].Place3ChangesToNumber = 53;
        IChing_Book[Hexagram].Place4ChangesToNumber = 12;
        IChing_Book[Hexagram].Place5ChangesToNumber = 23;
        IChing_Book[Hexagram].Place6ChangesToNumber = 8;
                
        Hexagram = 21;
        IChing_Book[Hexagram].EngTitle = "Biting Through "

        IChing_Book[Hexagram].ChiTitle = "Shih Ho "

        IChing_Book[Hexagram].ChiSymbol = "噬嗑 "

        IChing_Book[Hexagram].AltTitles = "Gnawing, The Symbol of Mastication and Punishment by Pressing and Squeezing, Gnawing Bite, Severing, Chewing, Punishment, Reformation, Reform, Differentiation, Discrimination, Making a Distinction, Getting the messag "

        IChing_Book[Hexagram].Hex = "䷔ "

        IChing_Book[Hexagram].Code = [ 1, 0, 0, 1, 0, 1 ];
        IChing_Book[Hexagram].Above =
                    
        """
         LI  /  THE CLINGING, FIRE 
        """

        IChing_Book[Hexagram].Below =
                    
        """
         CHÊN  /  THE AROUSING, THUNDER 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☲ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☳ 
        """

        IChing_Book[Hexagram].Intro1 =
                    
        """
         This hexagram represents an open mouth (cf. hexagram 27) with an obstruction (in the fourth place) between the teeth.  As a result the lips cannot meet.  To bring them together one must bite energetically through the obstacle.  Since the hexagram is made up of the trigrams for thunder and for lightning, it indicates how obstacles are forcibly removed in nature.  Energetic biting through overcomes the obstacle that prevents joining of the lips; the storm with its thunder and lightning overcomes the disturbing tension in nature.  Recourse to law and penalties overcomes the disturbances of harmonious social life caused by criminals and slanderers.  The theme of this hexagram is a criminal lawsuit, in contradistinction to that of Sung, CONFLICT (6), which refers to civil suits. 
        """

        IChing_Book[Hexagram].TheJudgment =
                    
        """
         BITING THROUGH has success.  It is favorable to let justice be administered. 
        """

        IChing_Book[Hexagram].Intro2 =
                    
        """
         When an obstacle to union arises, energetic biting through brings success.  This is true in all situations.  Whenever unity cannot be established, the obstruction is due to a talebearer and traitor who is interfering and blocking the way.  To prevent permanent injury, vigorous measures must be taken at once.  Deliberate obstruction of this sort does not vanish of its own accord.  Judgment and punishment are required to deter or obviate it. However, it is important to proceed in the right way.  The hexagram combines Li, clarity, and Chên, excitement.  Li is yielding, Chên is hard.  Unqualified hardness and excitement would be too violent in meting out punishment; unqualified clarity and gentleness would be too weak.  The two together create the just measure.  It is of moment that the man who makes the decisions (represented by the fifth line) is gentle by nature, while he commands respect by his conduct in his position. 
        """

        IChing_Book[Hexagram].TheImage =
                    
        """
         Thunder and lighting:  The image of BITING THROUGH.  Thus the kings of former times made firm the laws  Through clearly defined penalties. 
        """

        IChing_Book[Hexagram].Intro3 =
                    
        """
         Penalties are the individual applications of the law.  The laws specify the penalties.  Clarity prevails when mild and severe penalties are differentiated, according to the nature of the crimes.  This is symbolized by the clarity of lightning.  The law is strengthened by a just application of penalties.  This is symbolized by the terror of thunder.  This clarity and severity have the effect of instilling respect; it is not that the penalties are ends in themselves.  The obstructions in the social life of man increase when there is a lack of clarity in the penal codes and slackness in executing them.  The only way to strengthen the law is to make it clear and to make penalties certain and swift. 
        """

        IChing_Book[Hexagram].Read1 =
                    
        """
         Nine at the beginning means:  His feet are fastened in the stocks,  So that his toes disappear.  No blame. 
        """

        IChing_Book[Hexagram].Read2 =
                    
        """
         Six in the second place means:  Bites through tender meat,  So that his nose disappears  No blame. 
        """

        IChing_Book[Hexagram].Read3 =
                    
        """
         Six in the third place means:  Bites on old dried meat  And strikes on something poisonous.  Slight humiliation.  No blame. 
        """

        IChing_Book[Hexagram].Read4 =
                    
        """
         Nine in the fourth place means:  Bites on dried gristly meat.  Receives metal arrows.  It furthers one to be mindful of difficulties  And to be persevering.  Good fortune. 
        """

        IChing_Book[Hexagram].Read5 =
                    
        """
         Six in the fifth place means:  Bites on dried lean meat.  Receives yellow gold.  Perseveringly aware of danger.  No blame. 
        """

        IChing_Book[Hexagram].Read6 =
                    
        """
         Nine at the top means:  His neck is fastened in the wooden cangue,  So that his ears disappear.  Misfortune. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
         ○ 
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 35;
        IChing_Book[Hexagram].Place2ChangesToNumber = 38;
        IChing_Book[Hexagram].Place3ChangesToNumber = 30;
        IChing_Book[Hexagram].Place4ChangesToNumber = 27;
        IChing_Book[Hexagram].Place5ChangesToNumber = 25;
        IChing_Book[Hexagram].Place6ChangesToNumber = 51;
                
                
        Hexagram = 22;
        IChing_Book[Hexagram].EngTitle = "Grace "

        IChing_Book[Hexagram].ChiTitle = "Pi "

        IChing_Book[Hexagram].ChiSymbol = "賁 "

        IChing_Book[Hexagram].AltTitles = "The Symbol of Decoration, Elegance, Gracefulness, Luxuriance, Adorning, Public Image, Adornment, Beauty, Conceit, Vanity, Veneer, Façade, Manners, Embellishment, Superficiality, Superficial Appearances, Form vs. Function, 'Art,' Ego-trips "

        IChing_Book[Hexagram].Hex = "䷕ "

        IChing_Book[Hexagram].Code = [ 1, 0, 1, 0, 0, 1 ];
        IChing_Book[Hexagram].Above =
                    
        """
         KÊN  /  KEEPING STILL, MOUNTAIN 
        """

        IChing_Book[Hexagram].Below =
                    
        """
         LI  /  THE CLINGING, FIRE 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☶ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☲ 
        """

        IChing_Book[Hexagram].Intro1 =
                    
        """
         This hexagram shows a fire that breaks out of the secret depths of the earth and, blazing up, illuminates and beautifies the mountain, the heavenly heights.  Grace—beauty of form—is necessary in any union if it is to be well ordered and pleasing rather than disordered and chaotic. 
        """

        IChing_Book[Hexagram].TheJudgment =
                    
        """
         GRACE has success.  In small matters  It is favorable to undertake something. 
        """

        IChing_Book[Hexagram].Intro2 =
                    
        """
         Grace brings success.  However, it is not the essential or fundamental thing; it is only the ornament and therefore be used sparingly and only in little things.  In the lower trigram of fire a yielding line comes between two strong lines and makes them beautiful, but the strong lines are the essential content and the weak line is the beautifying form.  In the upper trigram of the mountain, the strong line takes the lead, so that here again the strong element must be regarded as the decisive factor.  In nature we see in the sky the strong light of the sun; the life of the world depends on it.  But this strong, essential thing is changed and given pleasing variety by the moon and the stars.  In human affairs, aesthetic form comes into being when traditions exist that, strong and abiding like mountains, are made pleasing by a lucid beauty.  By contemplating the forms existing in the heavens we come to understand time and its changing demands.  Through contemplation of the forms existing in human society it becomes possible to shape the world. 
        """

        IChing_Book[Hexagram].TheImage =
                    
        """
         Fire at the foot of the mountain:  The image of GRACE.  Thus does the superior man proceed  When clearing up current affairs.  But he dare not decide controversial issues in this way. 
        """

        IChing_Book[Hexagram].Intro3 =
                    
        """
         The fire, whose light illuminates the mountain and makes it pleasing, does not shine far; in the same way, beautiful form suffices to brighten and to throw light upon matters of lesser moment, but important questions cannot be decided in this way.  They require greater earnestness. 
        """

        IChing_Book[Hexagram].Read1 =
                    
        """
         Nine at the beginning means:  He lends grace to his toes, leaves the carriage, and walks. 
        """

        IChing_Book[Hexagram].Read2 =
                    
        """
         Six in the second place means:  Lends grace to the beard on his chin. 
        """

        IChing_Book[Hexagram].Read3 =
                    
        """
         Nine in the third place means:  Graceful and moist.  Constant perseverance brings good fortune. 
        """

        IChing_Book[Hexagram].Read4 =
                    
        """
         Six in the fourth place means:  Grace or simplicity?  A white horse comes as if on wings.  He is not a robber,  He will woo at the right time. 
        """

        IChing_Book[Hexagram].Read5 =
                    
        """
         Six in the fifth place means:  Grace in hills and gardens.  The roll of silk is meager and small.  Humiliation, but in the end good fortune. 
        """

        IChing_Book[Hexagram].Read6 =
                    
        """
         Nine at the top means:  Simple grace.  No blame. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
          
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 52;
        IChing_Book[Hexagram].Place2ChangesToNumber = 26;
        IChing_Book[Hexagram].Place3ChangesToNumber = 27;
        IChing_Book[Hexagram].Place4ChangesToNumber = 30;
        IChing_Book[Hexagram].Place5ChangesToNumber = 37;
        IChing_Book[Hexagram].Place6ChangesToNumber = 36;
                
                
        Hexagram = 23;
        IChing_Book[Hexagram].EngTitle = "Splitting Apart "

        IChing_Book[Hexagram].ChiTitle = "Po "

        IChing_Book[Hexagram].ChiSymbol = "剝 "

        IChing_Book[Hexagram].AltTitles = "The symbol of Falling or Flaying, Peeling Off, Decay, Flaying, Stripping Away, Intrigue, Deterioration, Collapse, Fracturing, Tearing, Disintegration, Ruin, Unraveling "

        IChing_Book[Hexagram].Hex = "䷖ "

        IChing_Book[Hexagram].Code = [ 0, 0, 0, 0, 0, 1 ];
        IChing_Book[Hexagram].Above =
                    
        """
         KÊN  /  KEEPING STILL, MOUNTAIN 
        """

        IChing_Book[Hexagram].Below =
                    
        """
         K’UN  /  THE RECEPTIVE, EARTH 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☶ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☷ 
        """

        IChing_Book[Hexagram].Intro1 =
                    
        """
         The dark lines are about to mount upward and overthrow the last firm, light line by exerting a disintegrating influence on it.  The inferior, dark forces overcome what is superior and strong, not by direct means, but by undermining it gradually and imperceptibly, so that it finally collapses. The lines of the hexagram present the image of a house, the top line being the roof, and because the roof is being shattered the house collapses.  The hexagram belongs to the ninth month (October–November).  The yin power pushes up ever more powerfully and is about to supplant the yang power altogether. 
        """

        IChing_Book[Hexagram].TheJudgment =
                    
        """
         SPLITTING APART.  It does not further one  To go anywhere. 
        """

        IChing_Book[Hexagram].Intro2 =
                    
        """
         This pictures a time when inferior people are pushing forward and are about to crowd out the few remaining strong and superior men.  Under these circumstances, which are due to the time, it is not favorable for the superior man to undertake anything. The right behavior in such adverse times is to be deduced from the images and their attributes.  The lower trigram stands for the earth, whose attributes are docility and devotion.  The upper trigram stands for the mountain, whose attribute is stillness.  This suggests that one should submit to the bad time and remain quiet.  For it is a question not of man’s doing but of time conditions, which, according to the laws of heaven, show an alternation of increase and decrease, fullness and emptiness.  It is impossible to counteract these conditions of the time.  Hence it is not cowardice but wisdom to submit and avoid action. 
        """

        IChing_Book[Hexagram].TheImage =
                    
        """
         The mountain rests on the earth:  The image of SPLITTING APART.  Thus those above can ensure their position  Only by giving generously to those below. 
        """

        IChing_Book[Hexagram].Intro3 =
                    
        """
         The mountain rests on the earth.  When it is steep and narrow, lacking a broad base, it must topple over.  Its position is strong only when it rises out of the earth broad and great, not proud and steep.  So likewise those who rule rest on the broad foundation of the people.  They too should be generous and benevolent, like the earth that carries all.  Then they will make their position as secure as a mountain is in its tranquillity. 
        """

        IChing_Book[Hexagram].Read1 =
                    
        """
         Six at the beginning means:  The leg of the bed is split.  Those who persevere are destroyed.  Misfortune. 
        """

        IChing_Book[Hexagram].Read2 =
                    
        """
         Six in the second place means:  The bed is split at the edge.  Those who persevere are destroyed.  Misfortune. 
        """

        IChing_Book[Hexagram].Read3 =
                    
        """
         Six in the third place means:  He splits with them.  No blame. 
        """

        IChing_Book[Hexagram].Read4 =
                    
        """
         Six in the fourth place means:  The bed is split up to the skin.  Misfortune. 
        """

        IChing_Book[Hexagram].Read5 =
                    
        """
         Six in the fifth place means:  A shoal of fishes.  Favor comes through the court ladies.  Everything acts to further. 
        """

        IChing_Book[Hexagram].Read6 =
                    
        """
         Nine at the top means:  There is a large fruit still uneaten.  The superior man receives a carriage.  The house of the inferior man is split apart. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
          
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 27;
        IChing_Book[Hexagram].Place2ChangesToNumber = 4;
        IChing_Book[Hexagram].Place3ChangesToNumber = 52;
        IChing_Book[Hexagram].Place4ChangesToNumber = 35;
        IChing_Book[Hexagram].Place5ChangesToNumber = 20;
        IChing_Book[Hexagram].Place6ChangesToNumber = 2;
                
        Hexagram = 24;
        IChing_Book[Hexagram].EngTitle = "Return (The Turning Point) "

        IChing_Book[Hexagram].ChiTitle = "Fu "

        IChing_Book[Hexagram].ChiSymbol = "復 "

        IChing_Book[Hexagram].AltTitles = "The Symbol of Returning, Revival, Recovery, To Repeat, Renewal, Restore, Return to the Way, Cyclic Repetition "

        IChing_Book[Hexagram].Hex = "䷗ "

        IChing_Book[Hexagram].Code = [ 1, 0, 0, 0, 0, 0 ];
        IChing_Book[Hexagram].Above =
                    
        """
         K’UN  /  THE RECEPTIVE, EARTH 
        """

        IChing_Book[Hexagram].Below =
                    
        """
         CHÊN  /  THE AROUSING, THUNDER 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☷ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☳ 
        """

        IChing_Book[Hexagram].Intro1 =
                    
        """
         The idea of a turning point arises from the fact that after the dark lines have pushed all of the light lines upward and out of the hexagram, another light line enters the hexagram from below.  The time of darkness is past.  The winter solstice brings the victory of light.  This hexagram is linked with the eleventh month, the month of the solstice (December–January). 
        """

        IChing_Book[Hexagram].TheJudgment =
                    
        """
         RETURN.  Success.  Going out and coming in without error.  Friends come without blame.  To and fro goes the way.  On the seventh day comes return.  It furthers one to have somewhere to go. 
        """

        IChing_Book[Hexagram].Intro2 =
                    
        """
         After a time of decay comes the turning point.  The powerful light that has been banished returns.  There is movement, but it is not brought about by force.  The upper trigram K’un is characterized by devotion; thus the movement is natural, arising spontaneously.  For this reason the transformation of the old becomes easy.  The old is discarded and the new is introduced.  Both measures accord with the time; therefore no harm results.  Societies of people sharing the same views are formed.  But since these groups come together in full public knowledge and are in harmony with the time, all selfish separatist tendencies are excluded, and no mistake is made.  The idea of RETURN is based on the course of nature.  The movement is cyclic, and the course completes itself.  Therefore it is not necessary to hasten anything artificially.  Everything comes of itself at the appointed time.  This is the meaning of heaven and earth. All movements are accomplished in six stages, and the seventh brings return.  Thus the winter solstice, with which the decline of the year begins, comes in the seventh month after the summer solstice; so too sunrise comes in the seventh double hour after sunset.  Therefore seven is the number of the young light, and it arises when six, the number of the great darkness, is increased by one.  In this way the state of rest gives place to movement. 
        """

        IChing_Book[Hexagram].TheImage =
                    
        """
         Thunder within the earth:  The image of THE TURNING POINT.  Thus the kings of antiquity closed the passes  At the time of solstice.  Merchants and strangers did not go about,  And the ruler  Did not travel through the provinces. 
        """

        IChing_Book[Hexagram].Intro3 =
                    
        """
         The winter solstice has always been celebrated in China as the resting time of the year—a custom that survives in the time of rest observed at the new year.  In winter the life energy, symbolized by thunder, the Arousing, is still underground.  Movement is just at its beginning; therefore it must be strengthened by rest so that it will not be dissipated by being used prematurely.  This principle, i.e., of allowing energy that is renewing itself to be reinforced by rest, applies to all similar situations.  The return of health after illness, the return of understanding after an estrangement: everything must be treated tenderly and with care at the beginning, so that the return may lead to a flowering. 
        """

        IChing_Book[Hexagram].Read1 =
                    
        """
         Nine at the beginning means:  Return from a short distance.  No need for remorse.  Great good fortune. 
        """

        IChing_Book[Hexagram].Read2 =
                    
        """
         Six in the second place means:  Quiet return.  Good fortune. 
        """

        IChing_Book[Hexagram].Read3 =
                    
        """
         Six in the third place means:  Repeated return.  Danger.  No blame. 
        """

        IChing_Book[Hexagram].Read4 =
                    
        """
         Six in the fourth place means:  Walking in the midst of others,  One returns alone. 
        """

        IChing_Book[Hexagram].Read5 =
                    
        """
         Six in the fifth place means:  Noblehearted return.  No remorse. 
        """

        IChing_Book[Hexagram].Read6 =
                    
        """
         Six at the top means:  Missing the return.  Misfortune.  Misfortune from within and without.  If armies are set marching in this way,  One will in the end suffer a great defeat,  Disastrous for the ruler of the country.  For ten years  It will not be possible to attack again. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
          
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 2;
        IChing_Book[Hexagram].Place2ChangesToNumber = 19;
        IChing_Book[Hexagram].Place3ChangesToNumber = 36;
        IChing_Book[Hexagram].Place4ChangesToNumber = 51;
        IChing_Book[Hexagram].Place5ChangesToNumber = 3;
        IChing_Book[Hexagram].Place6ChangesToNumber = 27;
                
        Hexagram = 25;
        IChing_Book[Hexagram].EngTitle = "Innocence (The Unexpected) "

        IChing_Book[Hexagram].ChiTitle = "Wu Wang "

        IChing_Book[Hexagram].ChiSymbol = "無妄 "

        IChing_Book[Hexagram].AltTitles = "The Unintentional, The Symbol of Freedom from Error, Integrity, Without Embroiling, Pestilence, Fidelity, No Error, Freedom from Vainness, Instinctive Goodness, The Simple, Correctness, Subconscious "

        IChing_Book[Hexagram].Hex = "䷘ "

        IChing_Book[Hexagram].Code = [ 1, 0, 0, 1, 1, 1 ];
        IChing_Book[Hexagram].Above =
                    
        """
         CH’IEN  /  THE CREATIVE, HEAVEN 
        """

        IChing_Book[Hexagram].Below =
                    
        """
         CHÊN  /  THE AROUSING, THUNDER 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☰ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☳ 
        """

        IChing_Book[Hexagram].Intro1 =
                    
        """
         Ch’ien, heaven is above; Chên, movement, is below.  The lower trigram Chên is under the influence of the strong line it has received from above, from heaven.  When, in accord with this, movement follows the law of heaven, man is innocent and without guile.  His mind is natural and true, unshadowed by reflection or ulterior designs.  For wherever conscious purpose is to be seen, there the truth and innocence of nature have been lost.  Nature that is not directed by the spirit is not true but degenerate nature.  Starting out with the idea of the natural, the train of thought in part goes somewhat further and thus the hexagram includes also the idea of the unintentional or unexpected. 
        """

        IChing_Book[Hexagram].TheJudgment =
                    
        """
         INNOCENCE.  Supreme success.  Perseverance furthers.  If someone is not as he should be,  He has misfortune,  And it does not further him  To undertake anything. 
        """

        IChing_Book[Hexagram].Intro2 =
                    
        """
         Man has received from heaven a nature innately good, to guide him in all his movements.  By devotion to this divine spirit within himself, he attains an unsullied innocence that leads him to do right with instinctive sureness and without any ulterior thought of reward and personal advantage.  This instinctive certainty brings about supreme success and “furthers through perseverance.”  However, not everything instinctive is nature in this higher sense of the word, but only that which is right and in accord with the will of heaven.  Without this quality of rightness, an unreflecting, instinctive way of acting brings only misfortune.  Confucius says about this: “He who departs from innocence, what does he come to? Heaven’s will and blessing do not go with his deeds.” 
        """

        IChing_Book[Hexagram].TheImage =
                    
        """
         Under heaven thunder rolls:  All things attain the natural state of innocence.  Thus the kings of old,  Rich in virtue, and in harmony with the time,  Fostered and nourished all beings. 
        """

        IChing_Book[Hexagram].Intro3 =
                    
        """
         In springtime when thunder, life energy, begins to move again under the heavens, everything sprouts and grows, and all beings receive from the creative activity of nature the childlike innocence of their original state.  So it is with the good rulers of mankind: drawing on the spiritual wealth at their command, they take care of all forms of life and all forms of culture and do everything to further them, and at the proper time 
        """

        IChing_Book[Hexagram].Read1 =
                    
        """
         Nine at the beginning means:  Innocent behavior brings good fortune. 
        """

        IChing_Book[Hexagram].Read2 =
                    
        """
         Six in the second place means:  If one does not count on the harvest while plowing,  Nor on the use of the ground while clearing it,  It furthers one to undertake something. 
        """

        IChing_Book[Hexagram].Read3 =
                    
        """
         Six in the third place means:  Undeserved misfortune.  The cow that was tethered by someone  Is the wanderer’s gain, the citizen’s loss 
        """

        IChing_Book[Hexagram].Read4 =
                    
        """
         Nine in the fourth place means:  He who can be persevering  Remains without blame. 
        """

        IChing_Book[Hexagram].Read5 =
                    
        """
         Nine in the fifth place means:  Use no medicine in an illness  Incurred through no fault of your own.  It will pass of itself. 
        """

        IChing_Book[Hexagram].Read6 =
                    
        """
         Nine at the top means  Innocent action brings misfortune.  Nothing furthers. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
         ○ 
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 12;
        IChing_Book[Hexagram].Place2ChangesToNumber = 10;
        IChing_Book[Hexagram].Place3ChangesToNumber = 13;
        IChing_Book[Hexagram].Place4ChangesToNumber = 42;
        IChing_Book[Hexagram].Place5ChangesToNumber = 21;
        IChing_Book[Hexagram].Place6ChangesToNumber = 17;
                
                
        Hexagram = 26;
        IChing_Book[Hexagram].EngTitle = "The Taming Power of the Great "

        IChing_Book[Hexagram].ChiTitle = "Ta Ch’u "

        IChing_Book[Hexagram].ChiSymbol = "大畜 "

        IChing_Book[Hexagram].AltTitles = "The Great Nourisher, Taming the Great Powers, Great Accumulating, Great Accumulation, Great Storage, Nurturance of the Great, Great Buildup, Restraint of the Great, Restraint by the Strong, Potential Energy, The Great Taming Force, Energy Under Control, Power Restrained, Sublimation, Latent Power "

        IChing_Book[Hexagram].Hex = "䷙ "

        IChing_Book[Hexagram].Code = [ 1, 1, 1, 0, 0, 1 ];
        IChing_Book[Hexagram].Above =
                    
        """
         KÊN  /  KEEPING STILL, MOUNTAIN 
        """

        IChing_Book[Hexagram].Below =
                    
        """
         CH’IEN  /  THE CREATIVE, HEAVEN 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☶ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☰ 
        """

        IChing_Book[Hexagram].Intro1 =
                    
        """
         The Creative is tamed by Kên, Keeping Still.  This produces great power, a situation in contrast to that of the ninth hexagram, Hsiao Ch’u, THE TAMING POWER OF THE SMALL, in which the Creative is tamed by the Gentle alone.  There one weak line must tame five strong lines, but here four strong lines are restrained by two weak lines; in addition to a minister, there is a prince, and the restraining power therefore is far stronger. The hexagram has a threefold meaning, expressing different aspects of the concept “holding firm.”  Heaven within the mountain gives the idea of holding firm in the sense of holding together; the trigram Kên which holds the trigram Ch’ien still, gives the idea of holding firm in the sense of holding back; the third idea is that of holding firm in the sense of caring for and nourishing.  This last is suggested by the fact that a strong line at the top, which is the ruler of the hexagram, is honored and tended as a sage.  The third of these meanings also attaches specifically to this strong line at the top, which represents the sage. 
        """

        IChing_Book[Hexagram].TheJudgment =
                    
        """
         THE TAMING POWER OF THE GREAT.  Perseverance furthers.  Not eating at home brings good fortune.  It furthers one to cross the great water. 
        """

        IChing_Book[Hexagram].Intro2 =
                    
        """
         To hold firmly to great creative powers and store them up, as set forth in this hexagram, there is need of a strong, clear–headed man who is honored by the ruler.  The trigram Ch’ien points to strong creative power; Kên indicates firmness and truth.  Both point to light and clarity and to the daily renewal of character.  Only through such daily self–renewal can a man continue at the height of his powers.  Force of habit helps to keep order in quiet times; but in periods when there is a great storing up of energy, everything depends on the power of the personality.  However, since the worthy are honored, as in the case of the strong personality entrusted with leadership by the ruler, it is an advantage not to eat at home but rather to earn one’s bread by entering upon public office.  Such a man is in harmony with heaven; therefore even great and difficult undertakings, such as crossing the great water, succeed. 
        """

        IChing_Book[Hexagram].TheImage =
                    
        """
         Heaven within the mountain:  The image of THE TAMING POWER OF THE GREAT.  Thus the superior man acquaints himself with many sayings of antiquity  And many deeds of the past,  In order to strengthen his character thereby. 
        """

        IChing_Book[Hexagram].Intro3 =
                    
        """
         Heaven within the mountain points to hidden treasures.  In the words and deeds of the past there lies hidden a treasure that men may use to strengthen and elevate their own characters.  The way to study the past is not to confine oneself to mere knowledge of history but, through application of this knowledge, to give actuality to the past. 
        """

        IChing_Book[Hexagram].Read1 =
                    
        """
         Nine at the beginning means:  Danger is at hand.  It furthers one to desist. 
        """

        IChing_Book[Hexagram].Read2 =
                    
        """
         Nine in the second place means:  The axletrees are taken from the wagon. This line references the   third line in THE TAMING POWER OF THE SMALL  (9) 
        """

        IChing_Book[Hexagram].Read3 =
                    
        """
         Nine in the third place means:  A good horse that follows others.  Awareness of danger,  With perseverance, furthers.  Practice chariot driving and armed defense daily.  It furthers one to have somewhere to go. 
        """

        IChing_Book[Hexagram].Read4 =
                    
        """
         Six in the fourth place means:  The headboard of a young bull.  Great good fortune. 
        """

        IChing_Book[Hexagram].Read5 =
                    
        """
         Six in the fifth place means:  The tusk of a gelded boar.  Good fortune. 
        """

        IChing_Book[Hexagram].Read6 =
                    
        """
         Nine at the top means:  One attains the way of heaven.  Success. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
         ○ 
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 18;
        IChing_Book[Hexagram].Place2ChangesToNumber = 22;
        IChing_Book[Hexagram].Place3ChangesToNumber = 41;
        IChing_Book[Hexagram].Place4ChangesToNumber = 14;
        IChing_Book[Hexagram].Place5ChangesToNumber = 9;
        IChing_Book[Hexagram].Place6ChangesToNumber = 11;
                
                
        Hexagram = 27;
        IChing_Book[Hexagram].EngTitle = "Corners of the Mouth (Providing Nourishment) "

        IChing_Book[Hexagram].ChiTitle = "I "

        IChing_Book[Hexagram].ChiSymbol = "頤 "

        IChing_Book[Hexagram].AltTitles = "The Symbol of the Cheek and of Nourishment, Jaws, Lower Jaw, Nurturing, Swallowing, Sagacious Counsel, Nourishing, To Feed "

        IChing_Book[Hexagram].Hex = "䷚ "

        IChing_Book[Hexagram].Code = [ 1, 0, 0, 0, 0, 1 ];
        IChing_Book[Hexagram].Above =
                    
        """
         KÊN  /  KEEPING STILL, MOUNTAIN 
        """

        IChing_Book[Hexagram].Below =
                    
        """
         CHÊN  /  THE AROUSING, THUNDER 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☶ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☳ 
        """

        IChing_Book[Hexagram].Intro1 =
                    
        """
         This hexagram is a picture of an open mouth; above and below are firm lines of the lips, and between them the opening.  Starting with the mouth, through which we take food for nourishment, the thought leads to nourishment itself.  Nourishment of oneself, specifically of the body, is represented in the three lower lines, while the three upper lines represent nourishment and care of others, in a higher, spiritual sense. 
        """

        IChing_Book[Hexagram].TheJudgment =
                    
        """
         THE CORNERS OF THE MOUTH.  Perseverance brings good fortune.  Pay heed to the providing of nourishment  And to what a man seeks  To fill his own mouth with. 
        """

        IChing_Book[Hexagram].Intro2 =
                    
        """
         In bestowing care and nourishment, it is important that the right people should be taken care of and that we should attend to our own nourishment in the right way.  If we wish to know what anyone is like, we have only to observe on whom he bestows his care and what sides of his own nature he cultivates and nourishes.  Nature nourishes all creatures.  The great man fosters and takes care of superior men, in order to take care of all men through them.  Mencius says about this: If we wish to know whether anyone is superior or not, we need only observe what part of his being he regards as especially important.  The body has superior and inferior, important and unimportant parts.  We must not injure important parts for the sake of the unimportant, nor must we injure the superior parts for the sake of the inferior.  He who cultivates the inferior parts of his nature is an inferior man.  He who cultivates the superior parts of his nature is a superior man. 
        """

        IChing_Book[Hexagram].TheImage =
                    
        """
         At the foot of the mountain, thunder:  The image of PROVIDING NOURISHMENT.  Thus the superior man is careful of his words  And temperate in eating and drinking. 
        """

        IChing_Book[Hexagram].Intro3 =
                    
        """
         “God comes forth in the sign of the Arousing”: when in the spring the life forces stir again, all things comes into being anew.  “He brings to perfection in the sign of Keeping Still”: thus in the early spring, when the seeds fall to earth, all things are made ready.  This is an image of providing nourishment through movement and tranquillity.  The superior man takes it as a pattern for the nourishment and cultivation of his character.  Words are a movement going from within outward.  Eating and drinking are movements from without inward.  Both kinds of movement can be modified by tranquillity.  For tranquillity keeps the words that come out of the mouth from exceeding proper measure, and keeps the food that goes into the mouth from exceeding its proper measure.  Thus character is cultivated. 
        """

        IChing_Book[Hexagram].Read1 =
                    
        """
         Nine at the beginning means:  You let your magic tortoise go,  And look at me with the corners of your mouth drooping.  Misfortune. 
        """

        IChing_Book[Hexagram].Read2 =
                    
        """
         Six in the second place means:  Turning to the summit for nourishment,  Deviating from the path  To seek nourishment from the hill.  Continuing to do this brings misfortune. 
        """

        IChing_Book[Hexagram].Read3 =
                    
        """
         Six in the third place means:  Turning away from nourishment.  Perseverance brings misfortune.  Do not act thus for ten years.  Nothing serves to further. 
        """

        IChing_Book[Hexagram].Read4 =
                    
        """
         Six in the fourth place means:  Turning to the summit  For provision of nourishment  Brings good fortune.  Spying about with sharp eyes  Like a tiger with insatiable craving.  No blame. 
        """

        IChing_Book[Hexagram].Read5 =
                    
        """
         Six in the fifth place means:  Turning away from the path.  To remain persevering brings good fortune.  One should not cross the great water. 
        """

        IChing_Book[Hexagram].Read6 =
                    
        """
         Nine at the top means:  The source of nourishment.  Awareness of danger brings good fortune.  It furthers one to cross the great water. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
         ○ 
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 23;
        IChing_Book[Hexagram].Place2ChangesToNumber = 41;
        IChing_Book[Hexagram].Place3ChangesToNumber = 22;
        IChing_Book[Hexagram].Place4ChangesToNumber = 21;
        IChing_Book[Hexagram].Place5ChangesToNumber = 42;
        IChing_Book[Hexagram].Place6ChangesToNumber = 24;
                
                
        Hexagram = 28;
        IChing_Book[Hexagram].EngTitle = "Preponderance of the Great "

        IChing_Book[Hexagram].ChiTitle = "Ta Kuo "

        IChing_Book[Hexagram].ChiSymbol = "大過 "

        IChing_Book[Hexagram].AltTitles = "The Symbol of Great Passing, Excess, Great Excess, The Passing of Greatness, Great Surpassing, Great Gains, Experience, Greater than Great, Greatness in Excess, Dominance by the Mighty, The Passing of Greatness, Excess of the Great, Law of Karma "

        IChing_Book[Hexagram].Hex = "䷛ "

        IChing_Book[Hexagram].Code = [ 0, 1, 1, 1, 1, 0 ];
        IChing_Book[Hexagram].Above =
                    
        """
         TUI  /  THE JOYOUS, LAKE  
        """

        IChing_Book[Hexagram].Below =
                    
        """
         SUN  /  THE GENTLE, WIND, WOOD 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☱ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☴ 
        """

        IChing_Book[Hexagram].Intro1 =
                    
        """
         This hexagram consists of four strong lines inside and two weak lines outside.  When the strong are outside and the weak inside, all is well and there is nothing out of balance, nothing extraordinary in the situation.  Here, however, the opposite is the case.  The hexagram represents a beam that is thick and heavy in the middle but too weak at the ends.  This is a condition that cannot last; it must be changed, must pass, or misfortune will result. 
        """

        IChing_Book[Hexagram].TheJudgment =
                    
        """
         PREPONDERANCE OF THE GREAT.  The ridgepole sags to the breaking point.  It furthers one to have somewhere to go.  Success. 
        """

        IChing_Book[Hexagram].Intro2 =
                    
        """
         The weight of the great is excessive.  The load is too heavy for the strength of the supports.  The ridgepole on which the whole roof rests, sags to the breaking point, because its supporting ends are too weak for the load they bear.  It is an exceptional time and situation; therefore extraordinary measures are demanded.  It is necessary to find a way of transition as quickly as possible, and to take action.  This promises success.  For although the strong element is in excess, it is in the middle, that is, at the center of gravity, so that a revolution is not to be feared.  Nothing is to be achieved by forcible measures.  The problem must be solved by gentle penetration to the meaning of the situation (as is suggested by the attribute of the inner trigram, Sun); then the change–over to other conditions will be successful.  It demands real superiority; therefore the time when the great preponderates is a momentous time. 
        """

        IChing_Book[Hexagram].TheImage =
                    
        """
         The lake rises above the trees:  The image of PREPONDERANCE OF THE GREAT.  Thus the superior man, when he stands alone,  Is unconcerned,  And if he has to renounce the world,  He is undaunted. 
        """

        IChing_Book[Hexagram].Intro3 =
                    
        """
         Extraordinary times when the great preponderates are like floodtimes when the lake rises over the treetops.  But such conditions are temporary.  The two trigrams indicate the attitude proper to such exceptional times: the symbol of the trigram Sun is the tree, which stands firm even though it stands alone, and the attribute of Tui is joyousness, which remains undaunted even if it must renounce the world. 
        """

        IChing_Book[Hexagram].Read1 =
                    
        """
         Six at the beginning means:  To spread white rushes underneath.  No blame. 
        """

        IChing_Book[Hexagram].Read2 =
                    
        """
         Nine in the second place means:  A dry poplar sprouts at the root.  An older man takes a young wife.  Everything furthers. 
        """

        IChing_Book[Hexagram].Read3 =
                    
        """
         Nine in the third place means:  The ridgepole sags to the breaking point.  Misfortune. 
        """

        IChing_Book[Hexagram].Read4 =
                    
        """
         Nine in the fourth place means:  The ridgepole is braced. Good fortune.  If there are ulterior motives, it is humiliating. 
        """

        IChing_Book[Hexagram].Read5 =
                    
        """
         Nine in the fifth place means:  A withered poplar puts forth flowers.  An older woman takes a husband.  No blame.  No praise. 
        """

        IChing_Book[Hexagram].Read6 =
                    
        """
         Six at the top means:  One must go through the water.  It goes over one’s head.  Misfortune.  No blame. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
          
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 43;
        IChing_Book[Hexagram].Place2ChangesToNumber = 31;
        IChing_Book[Hexagram].Place3ChangesToNumber = 47;
        IChing_Book[Hexagram].Place4ChangesToNumber = 48;
        IChing_Book[Hexagram].Place5ChangesToNumber = 32;
        IChing_Book[Hexagram].Place6ChangesToNumber = 44;
                
                
        Hexagram = 29;
        IChing_Book[Hexagram].EngTitle = "The Abysmal (Water) "

        IChing_Book[Hexagram].ChiTitle = "K’an "

        IChing_Book[Hexagram].ChiSymbol = "坎 "

        IChing_Book[Hexagram].AltTitles = "The Symbol of Sinking, Water, The Abyss, Gorge, Repeating Gorge, Repeated Entrapment, Double Pitfall, Multiple Danger, Double Water, The Deep, Dark Forces, The Perilous Pit "

        IChing_Book[Hexagram].Hex = "䷜ "

        IChing_Book[Hexagram].Code = [ 0, 1, 0, 0, 1, 0 ];
        IChing_Book[Hexagram].Above =
                    
        """
         K’AN  /  THE ABYSMAL, WATER 
        """

        IChing_Book[Hexagram].Below =
                    
        """
         K’AN  /  THE ABYSMAL, WATER 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☵ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☵ 
        """

        IChing_Book[Hexagram].Intro1 =
                    
        """
         This hexagram consists of a doubling of the trigram K’an.  It is one of the eight hexagrams in which doubling occurs.  The trigram K’an means a plunging in.  A yang line has plunged in between two yin lines and is closed in by them like water in a ravine.  The trigram K’an is also the middle son.  The Receptive has obtained the middle line of the Creative, and thus K’an develops.  As an image it represents water, the water that comes from above and is in motion on earth in streams and rivers, giving rise to all life on earth. In man’s world K’an represents the heart, the soul locked up within the body, the principle of light inclosed in the dark—that is, reason.  The name of the hexagram, because the trigram is doubled, has the additional meaning, “repetition of danger.”  Thus the hexagram is intended to designate an objective situation to which one must become accustomed, not a subjective attitude.  For danger due to a subjective attitude means either foolhardiness or guile.  Hence too a ravine is used to symbolize danger; it is a situation in which a man is in the same pass as the water in a ravine, and, like the water, he can escape if he behaves correctly. 
        """

        IChing_Book[Hexagram].TheJudgment =
                    
        """
         The Abysmal repeated.  If you are sincere, you have success in your heart,  And whatever you do succeeds. 
        """

        IChing_Book[Hexagram].Intro2 =
                    
        """
         Through repetition of danger we grow accustomed to it.  Water sets the example for the right conduct under such circumstances.  It flows on and on, and merely fills up all the places through which it flows; it does not shrink from any dangerous spot nor from any plunge, and nothing can make it lose its own essential nature.  It remains true to itself under all conditions.  Thus likewise, if one is sincere when confronted with difficulties, the heart can penetrate the meaning of the situation.  And once we have gained inner mastery of a problem, it will come about naturally that the action we take will succeed.  In danger all that counts is really carrying out all that has to be done—thoroughness—and going forward, in order not to perish through tarrying in the danger. Properly used, danger can have an important meaning as a protective measure.  Thus heaven has its perilous height protecting it against every attempt at invasion, and earth has its mountains and bodies of water, separating countries by their dangers.  Thus also rulers make use of danger to protect themselves against attacks from without and against turmoil within. 
        """

        IChing_Book[Hexagram].TheImage =
                    
        """
         Water flows on uninterruptedly and reaches its goal:  The image of the Abysmal repeated.  Thus the superior man walks in lasting virtue  And carries on the business of teaching. 
        """

        IChing_Book[Hexagram].Intro3 =
                    
        """
         Water reaches its goal by flowing continually.  It fills up every depression before it flows on.  The superior man follows its example; he is concerned that goodness should be an established attribute of character rather than an accidental and isolated occurrence.  So likewise in teaching others everything depends on consistency, for it is only through repetition that the pupil makes the material his own. 
        """

        IChing_Book[Hexagram].Read1 =
                    
        """
         Six at the beginning means:  Repetition of the Abysmal.  In the abyss one falls into a pit.  Misfortune. 
        """

        IChing_Book[Hexagram].Read2 =
                    
        """
         Nine in the second place means:  The abyss is dangerous.  One should strive to attain small things only. 
        """

        IChing_Book[Hexagram].Read3 =
                    
        """
         Six in the third place means:  Forward and backward, abyss on abyss.  In danger like this, pause at first and wait,  Otherwise you will fall into a pit in the abyss.  Do not act this way. 
        """

        IChing_Book[Hexagram].Read4 =
                    
        """
         Six in the fourth place means:  A jug of wine, a bowl of rice with it;  Earthen vessels  Simply handed in through the Window.  There is certainly no blame in this. 
        """

        IChing_Book[Hexagram].Read5 =
                    
        """
         Nine in the fifth place means:  The abyss is not filled to overflowing,  It is filled only to the rim.  No blame. 
        """

        IChing_Book[Hexagram].Read6 =
                    
        """
         Six at the top means:  Bound with cords and ropes,  Shut in between thorn–hedged prison walls:  For three years one does not find the way.  Misfortune. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
         ○ 
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 60;
        IChing_Book[Hexagram].Place2ChangesToNumber = 8;
        IChing_Book[Hexagram].Place3ChangesToNumber = 48;
        IChing_Book[Hexagram].Place4ChangesToNumber = 47;
        IChing_Book[Hexagram].Place5ChangesToNumber = 7;
        IChing_Book[Hexagram].Place6ChangesToNumber = 59;
                
                
        Hexagram = 30;
        IChing_Book[Hexagram].EngTitle = "The Clinging  (Fire) "

        IChing_Book[Hexagram].ChiTitle = "Li "

        IChing_Book[Hexagram].ChiSymbol = "離 "

        IChing_Book[Hexagram].AltTitles = "The Symbol of Brightness and of Separateness, Flaming Beauty, Radiance, Fire, The Net, Allegiance, The Cosmic Mean, Synergy, Sunlight, Perception, Pertaining to Comprehension, The Light, Consciousness, Lucidity "

        IChing_Book[Hexagram].Hex = "䷝ "

        IChing_Book[Hexagram].Code = [ 1, 0, 1, 1, 0, 1 ];
        IChing_Book[Hexagram].Above =
                    
        """
         LI  /  THE CLINGING, FIRE  
        """

        IChing_Book[Hexagram].Below =
                    
        """
         LI  /  THE CLINGING, FIRE  
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☲ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☲ 
        """

        IChing_Book[Hexagram].Intro1 =
                    
        """
         This hexagram is another double sign.  The trigram Li means “to cling to something,” and also “brightness.”  A dark line clings to two light lines, one above and one below—the image of an empty space between two strong lines, whereby the two strong lines are made bright.  The trigram represents the middle daughter.  The Creative has incorporated the central line of the Receptive, and thus Li develops.  As an image, it is fire.  Fire has no definite form but clings to the burning object and thus is bright.  As water pours down from heaven, so fire flames up from the earth.  While K’an means the soul shut within the body, Li stands for nature in its radiance. 
        """

        IChing_Book[Hexagram].TheJudgment =
                    
        """
         THE CLINGING.  Perseverance furthers.  It brings success.  Care of the cow brings good fortune. 
        """

        IChing_Book[Hexagram].Intro2 =
                    
        """
         What is dark clings to what is light and so enhances the brightness of the latter.  A luminous thing giving out light must have within itself something that perseveres; otherwise it will in time burn itself out.  Everything that gives light is dependent on something to which it clings, in order that it may continue to shine. Thus the sun and moon cling to heaven, and grain, grass, and trees cling to the earth.  So too the twofold clarity of the dedicated man clings to what is right and thereby can shape the world.  Human life on earth is conditioned and unfree, and when man recognizes this limitation and makes himself dependent upon the harmonious and beneficent forces of the cosmos, he achieves success.  The cow is the symbol of extreme docility.  By cultivating in himself an attitude of compliance and voluntary dependence, man acquires clarity without sharpness and finds his place in the world. 
        """

        IChing_Book[Hexagram].TheImage =
                    
        """
         That which is bright rises twice:  The image of FIRE.  Thus the great man, by perpetuating this brightness,  Illumines the four quarters of the world. 
        """

        IChing_Book[Hexagram].Intro3 =
                    
        """
         Each of the two trigrams represents the sun in the course of a day.  The two together represent the repeated movement of the sun, the function of light with respect to time.  The great man continues the work of nature in the human world.  Through the clarity of his nature he causes the light to spread farther and farther and to penetrate the nature of man ever more deeply. 
        """

        IChing_Book[Hexagram].Read1 =
                    
        """
         Nine at the beginning means:  The footprints run crisscross.  If one is seriously intent, no blame. 
        """

        IChing_Book[Hexagram].Read2 =
                    
        """
         Six in the second place means:  Yellow light.  Supreme good fortune. 
        """

        IChing_Book[Hexagram].Read3 =
                    
        """
         Nine in the third place means:  In the light of the setting sun,  Men either beat the pot and sing  Or loudly bewail the approach of old age.  Misfortune. 
        """

        IChing_Book[Hexagram].Read4 =
                    
        """
         Nine in the fourth place means:  Its coming is sudden;  It flames up, dies down, is thrown away. 
        """

        IChing_Book[Hexagram].Read5 =
                    
        """
         Six in the fifth place means:  Tears in floods, sighing and lamenting.  Good fortune. 
        """

        IChing_Book[Hexagram].Read6 =
                    
        """
         The king used him to march forth and chastise.  Then it is best to kill the leaders  And take captive the followers.  No blame. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
         ○ 
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 56;
        IChing_Book[Hexagram].Place2ChangesToNumber = 14;
        IChing_Book[Hexagram].Place3ChangesToNumber = 21;
        IChing_Book[Hexagram].Place4ChangesToNumber = 22;
        IChing_Book[Hexagram].Place5ChangesToNumber = 13;
        IChing_Book[Hexagram].Place6ChangesToNumber = 55;
                
                
        Hexagram = 31;
        IChing_Book[Hexagram].EngTitle = "Influence (Wooing) "

        IChing_Book[Hexagram].ChiTitle = "Hsien "

        IChing_Book[Hexagram].ChiSymbol = "咸 "

        IChing_Book[Hexagram].AltTitles = "Attraction, Sensation, Stimulation, Conjoining, Feelings, Sensitivity, Sensing, Affection, Influencing to Action, Tension, Seeking Union, Persuasion, Courting Response, Importuning "

        IChing_Book[Hexagram].Hex = "䷞ "

        IChing_Book[Hexagram].Code = [ 0, 0, 1, 1, 1, 0 ];
        IChing_Book[Hexagram].Above =
                    
        """
         TUI  /  THE JOYOUS, LAKE  
        """

        IChing_Book[Hexagram].Below =
                    
        """
         KÊN  /  KEEPING STILL, MOUNTAIN 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☱ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☶ 
        """

        IChing_Book[Hexagram].Intro1 =
                    
        """
         The name of the hexagram means “universal,” “general,” and in a figurative sense “to influence,” “to stimulate.”  The upper trigram is Tui, the Joyous; the lower is Kên, Keeping Still.  By its persistent, quiet influence, the lower, rigid trigram stimulates the upper, weak trigram, which responds to this stimulation cheerfully and joyously.  Kên, the lower trigram, is the youngest son; the upper, Tui, is the youngest daughter.  Thus the universal mutual attraction between the sexes is represented.  In courtship, the masculine principle must seize the initiative and place itself below the feminine principle. Just as the first part of book I begins with the hexagrams of heaven and earth, the foundations of all that exists, the second part begins with the hexagrams of courtship and marriage, the foundations of all social relationships. 
        """

        IChing_Book[Hexagram].TheJudgment =
                    
        """
         Influence.  Success.  Perseverance furthers.  To take a maiden to wife brings good fortune. 
        """

        IChing_Book[Hexagram].Intro2 =
                    
        """
         The weak element is above, the strong below; hence their powers attract each other, so that they unite.  This brings about success, for all success depends on the effect of mutual attraction.  By keeping still within while experiencing joy without, one can prevent the joy from going to excess and hold it within proper bounds.  This is the meaning of the added admonition, “Perseverance furthers,” for it is perseverance that makes the difference between seduction and courtship; in the latter the strong man takes a position inferior to that of the weak girl and shows consideration for her.  This attraction between affinities is a general law of nature.  Heaven and earth attract each other and thus all creatures come into being.  Through such attraction the sage influences men’s hearts, and thus the world attains peace.  From the attractions they exert we can learn the nature of all beings in heaven and on earth. 
        """

        IChing_Book[Hexagram].TheImage =
                    
        """
         A lake on the mountain:  The image of influence  Thus the superior man encourages people to approach him  By his readiness to receive them. 
        """

        IChing_Book[Hexagram].Intro3 =
                    
        """
         A mountain with a lake on its summit is stimulated by the moisture from the lake.  It has this advantage because its summit does not jut out as a peak but is sunken.  The image counsels that the mind should be kept humble and free, so that it may remain receptive to good advice.  People soon give up counseling a man who thinks that he knows everything better than anyone else. 
        """

        IChing_Book[Hexagram].Read1 =
                    
        """
         Six at the beginning means:  The influence shows itself in the big toe. 
        """

        IChing_Book[Hexagram].Read2 =
                    
        """
         Six in the second place means:  The influence shows itself in the calves of the legs.  Misfortune.  Tarrying brings good fortune. 
        """

        IChing_Book[Hexagram].Read3 =
                    
        """
         Nine in the third place means:  The influence shows itself in the thighs.  Holds to that which follows it.  To continue is humiliating. 
        """

        IChing_Book[Hexagram].Read4 =
                    
        """
         Nine in the fourth place means:  Perseverance brings good fortune.  Remorse disappears.  If a man is agitated in mind,  And his thoughts go hither and thither,  Only those friends  On whom he fixes his conscious thoughts  Will follow. 
        """

        IChing_Book[Hexagram].Read5 =
                    
        """
         Nine in the fifth place means:  The influence shows itself in the back of the neck.  No remorse. 
        """

        IChing_Book[Hexagram].Read6 =
                    
        """
         Six at the top means:  The influence shows itself in the jaws, cheeks, and tongue. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
         ○ 
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 49;
        IChing_Book[Hexagram].Place2ChangesToNumber = 28;
        IChing_Book[Hexagram].Place3ChangesToNumber = 45;
        IChing_Book[Hexagram].Place4ChangesToNumber = 39;
        IChing_Book[Hexagram].Place5ChangesToNumber = 62;
        IChing_Book[Hexagram].Place6ChangesToNumber = 33;
                
                
        Hexagram = 32;
        IChing_Book[Hexagram].EngTitle = "Duration "

        IChing_Book[Hexagram].ChiTitle = "Hêng "

        IChing_Book[Hexagram].ChiSymbol = "恆 "

        IChing_Book[Hexagram].AltTitles = "The Symbol of Constancy, The Long Enduring, Constant, Persevering, Standing Fast, Continuity, Constancy in the Midst of Change, Holding Firm "

        IChing_Book[Hexagram].Hex = "䷟ "

        IChing_Book[Hexagram].Code = [ 0, 1, 1, 1, 0, 0 ];
        IChing_Book[Hexagram].Above =
                    
        """
         CHÊN  /  THE AROUSING, THUNDER 
        """

        IChing_Book[Hexagram].Below =
                    
        """
         SUN  /  THE GENTLE, WIND 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☳ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☴ 
        """

        IChing_Book[Hexagram].Intro1 =   
        """
         The strong trigram Chên is above, the weak trigram Sun below.  This hexagram is the inverse of the preceding one.  In the latter we have influence, here we have union as an enduring condition.  The two images are thunder and wind, which are likewise constantly paired phenomena.  The lower trigram indicates gentleness within; the upper, movement without.
                
                In the sphere of social relationships, the hexagram represents the institution of marriage as the enduring union of the sexes.  During courtship the young man subordinates himself to the girl, but in marriage, which is represented by the coming together of the eldest son and the eldest daughter, the husband is the directing and moving force outside, while the wife, inside, is gentle and submissive. 
        """

        IChing_Book[Hexagram].TheJudgment =   
        """
         DURATION.  Success.  No blame.
                Perseverance furthers.
                It furthers one to have somewhere to go. 
        """

        IChing_Book[Hexagram].Intro2 =   
        """
         Duration is a state whose movement is not worn down by hindrances.  It is not a state of rest, for mere standstill is regression.  Duration is rather the self–contained and therefore self–renewing movement of an organized, firmly integrated whole, taking place in accordance with immutable laws and beginning anew at every ending.  The end is reached by an inward movement, by inhalation, systole, contraction, and this movement turns into a new beginning, in which the movement is directed outward, in exhalation, diastole, expansion.
                
                Heavenly bodies exemplify duration.  They move in their fixed orbits, and because of this their light–giving power endures.  The seasons of the year follow a fixed law of change and transformation, hence can produce effects that endure.
                
                So likewise the dedicated man embodies an enduring meaning in his way of life, and thereby the world is formed.  In that which gives things their duration, we can come to understand the nature of all beings in heaven and on earth. 
        """

        IChing_Book[Hexagram].TheImage =   
        """
         Thunder and wind: the image of DURATION.
                Thus the superior man stands firm
                And does not change his direction. 
        """

        IChing_Book[Hexagram].Intro3 =
                    
        """
         Thunder rolls, and the wind blows; both are examples of extreme mobility and so are seemingly the very opposite of duration, but the laws governing their appearance and subsidence, their coming and going, endure.  In the same way the independence of the superior man is not based on rigidity and immobility of character.  He always keeps abreast of the time and changes with it.  What endures is the unswerving directive, the inner law of his being, which determines all his actions. 
        """

        IChing_Book[Hexagram].Read1 =   
        """
         Six at the beginning means:
                Seeking duration too hastily brings misfortune persistently.
                Nothing that would further. 
        """

        IChing_Book[Hexagram].Read2 =   
        """
         Nine in the second place means:
                Remorse disappears. 
        """

        IChing_Book[Hexagram].Read3 =   
        """
         Nine in the third place means:
                He who does not give duration to his character
                Meets with disgrace.
                Persistent humiliation. 
        """

        IChing_Book[Hexagram].Read4 =   
        """
         Nine in the fourth place means:
                No game in the field. 
        """

        IChing_Book[Hexagram].Read5 =   
        """
         Six in the fifth place means:
                Giving duration to one’s character through perseverance.
                This is good fortune for a woman, misfortune for a man. 
        """

        IChing_Book[Hexagram].Read6 =   
        """
         Six at the top means:
                Restlessness as an enduring condition brings misfortune. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
          
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 34;
        IChing_Book[Hexagram].Place2ChangesToNumber = 62;
        IChing_Book[Hexagram].Place3ChangesToNumber = 40;
        IChing_Book[Hexagram].Place4ChangesToNumber = 46;
        IChing_Book[Hexagram].Place5ChangesToNumber = 28;
        IChing_Book[Hexagram].Place6ChangesToNumber = 50;
                
        Hexagram = 33;
        IChing_Book[Hexagram].EngTitle = "Retreat "

        IChing_Book[Hexagram].ChiTitle = "Tun "

        IChing_Book[Hexagram].ChiSymbol = "遯 "

        IChing_Book[Hexagram].AltTitles = "The Symbol of Retirement, Yielding, Withdrawal, Retiring, Wielding, Strategic Withdrawal, Inaccessibility, Disassociation from Inferior Forces "

        IChing_Book[Hexagram].Hex = "䷠ "

        IChing_Book[Hexagram].Code = [ 0, 0, 1, 1, 1, 1 ];
        IChing_Book[Hexagram].Above =
                    
        """
         CH’IEN  /  THE CREATIVE, HEAVEN 
        """

        IChing_Book[Hexagram].Below =
                    
        """
         KÊN  /  KEEPING STILL, MOUNTAIN 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☰ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☶ 
        """

        IChing_Book[Hexagram].Intro1 =   
        """
         The power of the dark is ascending.  The light retreats to security, so that the dark cannot encroach upon it.  This retreat is a matter not of man’s will but of natural law.  Therefore in this case withdrawal is proper; it is the correct way to behave in order not to exhaust one’s forces.
                
                In the calendar this hexagram is linked with the sixth month (July–August), in which the forces of winter are already showing their influence. 
        """

        IChing_Book[Hexagram].TheJudgment =   
        """
         RETREAT.  Success.
                In what is small, perseverance furthers. 
        """

        IChing_Book[Hexagram].Intro2 =   
        """
         Conditions are such that the hostile forces favored by the time are advancing.  In this case retreat is the right course, and it is through retreat that success is achieved.  But success consists in being able to carry out the retreat correctly.  Retreat is not to be confused with flight.  Flight means saving oneself under any circumstances, whereas retreat is a sign of strength.  We must be careful not to miss the right moment while we are in full possession of power and position.  Then we shall be able to interpret the signs of the time before it is too late and to prepare for provisional retreat instead of being drawn into a desperate life–and–death struggle.  Thus we do not simply abandon the field to the opponent; we make it difficult for him to advance by showing perseverance in single acts of resistance.  In this way we prepare, while retreating, for the counter–movement.  Understanding the laws of a constructive retreat of this sort is not easy.  The meaning that lies hidden in such a time is important. 
        """

        IChing_Book[Hexagram].TheImage =   
        """
         Mountain under heaven: the image of RETREAT.
                Thus the superior man keeps the inferior man at a distance,
                Not angrily but with reserve. 
        """

        IChing_Book[Hexagram].Intro3 =   
        """
         The mountain rises up under heaven, but owing to its nature it finally comes to a stop.  Heaven on the other hand retreats upward before it into the distance and remains out of reach.  This symbolizes the behavior of the superior man toward a climbing inferior; he retreats into his own thoughts as the inferior man comes forward.  He does not hate him, for hatred is a form of subjective involvement by which we are bound to the hated object.  The superior man shows strength (heaven) in that he brings the inferior man to a standstill (mountain) by his dignified reserve. 
        """

        IChing_Book[Hexagram].Read1 =   
        """
         Six at the beginning means:
                At the tail in retreat.  This is dangerous.
                One must not wish to undertake anything. 
        """

        IChing_Book[Hexagram].Read2 =   
        """
         Six in the second place means:
                He holds him fast with yellow oxhide.
                No one can tear him loose. 
        """

        IChing_Book[Hexagram].Read3 =   
        """
         Nine in the third place means:
                A halted retreat
                Is nerve–wracking and dangerous.
                To retain people as men– and maidservants
                Brings good fortune. 
        """

        IChing_Book[Hexagram].Read4 =   
        """
         Nine in the fourth place means:
                Voluntary retreat brings good fortune to the superior man
                And downfall to the inferior man. 
        """

        IChing_Book[Hexagram].Read5 =   
        """
         Nine in the fifth place means:
                Friendly retreat.  Perseverance brings good fortune. 
        """

        IChing_Book[Hexagram].Read6 =   
        """
         Nine at the top means:
                Cheerful retreat.  Everything serves to further. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
         ◻ 
        """

        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
         ◻ 
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
         ○ 
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 13;
        IChing_Book[Hexagram].Place2ChangesToNumber = 44;
        IChing_Book[Hexagram].Place3ChangesToNumber = 12;
        IChing_Book[Hexagram].Place4ChangesToNumber = 53;
        IChing_Book[Hexagram].Place5ChangesToNumber = 56;
        IChing_Book[Hexagram].Place6ChangesToNumber = 31;
                
        Hexagram = 34;
        IChing_Book[Hexagram].EngTitle = "The Power of the Great "

        IChing_Book[Hexagram].ChiTitle = "Ta Chuang "

        IChing_Book[Hexagram].ChiSymbol = "大壯 "

        IChing_Book[Hexagram].AltTitles = "The Symbol of Great Vigor, Persons of Great Authority, Great Strength, Great Invigorating, Great Maturity, Accumulated Force, The Strength of the Mighty, Righteous Power, Excessive Force "

        IChing_Book[Hexagram].Hex = "䷡ "

        IChing_Book[Hexagram].Code = [ 1, 1, 1, 1, 0, 0 ];
        IChing_Book[Hexagram].Above =
                    
        """
         CHÊN  /  THE AROUSING, THUNDER 
        """

        IChing_Book[Hexagram].Below =
                    
        """
         CH’IEN  /  THE CREATIVE, HEAVEN 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☳ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☰ 
        """

        IChing_Book[Hexagram].Intro1 =   
        """
         The great lines, that is, the light, strong lines, are powerful.  Four light lines have entered the hexagram from below and are about to ascend higher.  The upper trigram is Chên, the Arousing; the lower is Ch’ien, the Creative.  Ch’ien is strong, Chên produces movement.  The union of movement and strength gives the meaning of THE POWER OF THE GREAT.  The hexagram is linked with the second month (March–April). 
        """

        IChing_Book[Hexagram].TheJudgment =   
        """
         THE POWER OF THE GREAT.  Perseverance furthers. 
        """

        IChing_Book[Hexagram].Intro2 =   
        """
         The hexagram points to a time when inner worth mounts with great force and comes to power.  But its strength has already passed beyond the median line, hence there is danger that one may rely entirely on one’s own power and forget to ask what is right.  There is danger too that, being intent on movement, we may not wait for the right time.  Therefore the added statement that perseverance furthers.  For that is truly great power which does not degenerate into mere force but remains inwardly united with the fundamental principles of right and of justice.  When we understand this point—namely, that greatness and justice must be indissolubly united—we understand the true meaning of all that happens in heaven and on earth. 
        """

        IChing_Book[Hexagram].TheImage =   
        """
         Thunder in heaven above: The image of THE POWER OF THE GREAT.
                Thus the superior man does not tread upon paths
                That do not accord with established order. 
        """

        IChing_Book[Hexagram].Intro3 =   
        """
         Thunder—electrical energy—mounts upward in the spring.  The direction of this movement is in harmony with that of the movement of heaven.  It is therefore a movement in accord with heaven, producing great power.  However, true greatness depends on being in harmony with what is right.  Therefore in times of great power the superior man avoids doing anything that is not in harmony with the established order. 
        """

        IChing_Book[Hexagram].Read1 =   
        """
         Nine at the beginning means:
                Power in the toes.
                Continuing brings misfortune.
                This is certainly true. 
        """

        IChing_Book[Hexagram].Read2 =   
        """
         Nine in the second place means:
                Perseverance brings good fortune. 
        """

        IChing_Book[Hexagram].Read3 =   
        """
         Nine in the third place means:
                The inferior man works through power.
                The superior man does not act thus.
                To continue is dangerous.
                A goat butts against a hedge
                And gets its horns entangled. 
        """

        IChing_Book[Hexagram].Read4 =   
        """
         Nine in the fourth place means:
                Perseverance brings good fortune.
                Remorse disappears.
                The hedge opens; there is no entanglement.
                Power depends upon the axle of a big cart. 
        """

        IChing_Book[Hexagram].Read5 =   
        """
         Six in the fifth place means:
                Loses the goat with ease.
                No remorse. 
        """

        IChing_Book[Hexagram].Read6 =   
        """
         Six at the top means:
                A goat butts against a hedge.
                It cannot go backward, it cannot go forward.
                Nothing serves to further.
                If one notes the difficulty, this brings good fortune. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
          
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 32;
        IChing_Book[Hexagram].Place2ChangesToNumber = 55;
        IChing_Book[Hexagram].Place3ChangesToNumber = 54;
        IChing_Book[Hexagram].Place4ChangesToNumber = 11;
        IChing_Book[Hexagram].Place5ChangesToNumber = 43;
        IChing_Book[Hexagram].Place6ChangesToNumber = 14;
                
        Hexagram = 35;
        IChing_Book[Hexagram].EngTitle = "Progress "

        IChing_Book[Hexagram].ChiTitle = "Chin "

        IChing_Book[Hexagram].ChiSymbol = "晉 "

        IChing_Book[Hexagram].AltTitles = "Prospering, The Symbol of Forwardness, To Advance, Advancement, Making Headway, Getting the Idea, “Comes the Dawn” "

        IChing_Book[Hexagram].Hex = "䷢ "

        IChing_Book[Hexagram].Code = [ 0, 0, 0, 1, 0, 1 ];
        IChing_Book[Hexagram].Above =
                    
        """
         LI  /  THE CLINGING, FIRE 
        """

        IChing_Book[Hexagram].Below =
                    
        """
         K’UN  /  THE RECEPTIVE, EARTH 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☲ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☷ 
        """

        IChing_Book[Hexagram].Intro1 =   
        """
         The hexagram represents the sun rising over the earth.  It is therefore the symbol of rapid, easy progress, which at the same time means ever widening expansion and clarity. 
        """

        IChing_Book[Hexagram].TheJudgment =   
        """
         PROGRESS.  The powerful prince
                Is honored with horses in large numbers.
                In a single day he is granted audience three times. 
        """

        IChing_Book[Hexagram].Intro2 =   
        """
         As an example of progress, this pictures a time when a powerful feudal lord rallies the other lords around the sovereign and pledges fealty and peace.  The sovereign rewards him richly and invites him to a closer intimacy.
                
                A twofold idea is set forth here.  The actual effect of the progress emanates from a man who is in a dependent position and whom the others regard as their equal and are therefore willing to follow.  This leader has enough clarity of vision not to abuse his great influence but to use it rather for the benefit of his ruler.  His ruler in turn is free of all jealousy, showers presents on the great man, and invites him continually to his court.  An enlightened ruler and an obedient servant—this is the condition on which great progress depends. 
        """

        IChing_Book[Hexagram].TheImage =   
        """
         The sun rises over the earth:
                The image of PROGRESS.
                Thus the superior man himself
                Brightens his bright virtue. 
        """

        IChing_Book[Hexagram].Intro3 =   
        """
         The light of the sun as it rises over the earth is by nature clear.  The higher the sun rises, the more it emerges from the dark mists, spreading the pristine purity of its rays over an ever widening area.  The real nature of man is likewise originally good, but it becomes clouded by contact with earthly things and therefore needs purification before it can shine forth in its native clarity. 
        """

        IChing_Book[Hexagram].Read1 =   
        """
         Six at the beginning means:
                Progressing, but turned back.
                Perseverance brings good fortune.
                If one meets with no confidence, one should remain calm.
                No mistake. 
        """

        IChing_Book[Hexagram].Read2 =   
        """
         Six in the second place means:
                Progressing, but in sorrow.
                Perseverance brings good fortune.
                Then one obtains great happiness from one’s ancestress. 
        """

        IChing_Book[Hexagram].Read3 =   
        """
         Six in the third place means:
                All are in accord.  Remorse disappears. 
        """

        IChing_Book[Hexagram].Read4 =   
        """
         Nine in the fourth place means:
                Progress like a hamster.
                Perseverance brings danger. 
        """

        IChing_Book[Hexagram].Read5 =   
        """
         Six in the fifth place means:
                Remorse disappears.
                Take not gain and loss to heart.
                Undertakings bring good fortune.
                Everything serves to further. 
        """

        IChing_Book[Hexagram].Read6 =   
        """
         Nine at the top means:
                Making progress with the horns is permissible
                Only for the purpose of punishing one’s own city.
                To be conscious of danger brings good fortune.
                No blame.
                Perseverance brings humiliation. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
         ○ 
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 21;
        IChing_Book[Hexagram].Place2ChangesToNumber = 64;
        IChing_Book[Hexagram].Place3ChangesToNumber = 56;
        IChing_Book[Hexagram].Place4ChangesToNumber = 23;
        IChing_Book[Hexagram].Place5ChangesToNumber = 12;
        IChing_Book[Hexagram].Place6ChangesToNumber = 16;
                
        Hexagram = 36;
        IChing_Book[Hexagram].EngTitle = "Darkening of the Light "

        IChing_Book[Hexagram].ChiTitle = "Ming I "

        IChing_Book[Hexagram].ChiSymbol = "明夷 "

        IChing_Book[Hexagram].AltTitles = "The Symbol of the Appearance of Clear Intelligence Wounded, Injury, Wounding of the Bright, Brightness Hiding, Calling Pheasant, The Darkened Light, Concealment of Illumination, Injury of Illumination, Light Obliterated, Intelligence Unappreciated, Censorship, Hiding One's Light, The Dark Night of the Soul, Ignorance "

        IChing_Book[Hexagram].Hex = "䷣ "

        IChing_Book[Hexagram].Code = [ 1, 0, 1, 0, 0, 0 ];
        IChing_Book[Hexagram].Above =
                    
        """
         K’UN  /  THE RECEPTIVE, EARTH 
        """

        IChing_Book[Hexagram].Below =
                    
        """
         LI  /  THE CLINGING, FIRE 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☷ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☲ 
        """

        IChing_Book[Hexagram].Intro1 =   
        """
         Here the sun has sunk under the earth and is therefore darkened.  The name of the hexagram means literally “wounding of the bright”; hence the individual lines contain frequent references to wounding.  The situation is the exact opposite of that in the foregoing hexagram.  In the latter a wise man at the head of affairs has able helpers, and in company with them makes progress; here a man of dark nature is in a position of authority and brings harm to the wise and able man. 
        """

        IChing_Book[Hexagram].TheJudgment =   
        """
         DARKENING OF THE LIGHT.  In adversity
                It furthers one to be persevering. 
        """

        IChing_Book[Hexagram].Intro2 =   
        """
         One must not unresistingly let himself be swept along by unfavorable circumstances, nor permit his steadfastness to be shaken.  He can avoid this by maintaining his inner light, while remaining outwardly yielding and tractable.  With this attitude he can overcome even the greatest adversities.
                
                In some situations indeed a man must hide his light, in order to make his will prevail in spite of difficulties in his immediate environment.  Perseverance must dwell in inmost consciousness and should not be discernible from without.  Only thus is a man able to maintain his will in the face of difficulties. 
        """

        IChing_Book[Hexagram].TheImage =   
        """
         The light has sunk into the earth:
                The image of DARKENING OF THE LIGHT.
                Thus does the superior man live with the great mass:
                He veils his light, yet still shines. 
        """

        IChing_Book[Hexagram].Intro3 =   
        """
         In a time of darkness it is essential to be cautious and reserved.  One should not needlessly awaken overwhelming enmity by inconsiderate behavior.  In such times one ought not to fall in with the practices of others; neither should one drag them censoriously into the light.  In social intercourse one should not try to be all–knowing.  One should let many things pass, without being duped. 
        """

        IChing_Book[Hexagram].Read1 =   
        """
         Nine at the beginning means:
                Darkening of the light during flight.
                He lowers his wings.
                The superior man does not eat for three days
                On his wanderings.
                But he has somewhere to go.
                The host has occasion to gossip about him. 
        """

        IChing_Book[Hexagram].Read2 =   
        """
         Six in the second place means:
                Darkening of the light injures him in the left thigh.
                He gives aid with the strength of a horse.
                Good fortune. 
        """

        IChing_Book[Hexagram].Read3 =   
        """
         Nine in the third place means:
                Darkening of the light during the hunt in the south.
                Their great leader is captured.
                One must not expect perseverance too soon. 
        """

        IChing_Book[Hexagram].Read4 =   
        """
         Six in the fourth place means:
                He penetrates the left side of the belly.
                One gets at the very heart of the darkening of the light,
                And leaves gate and courtyard. 
        """

        IChing_Book[Hexagram].Read5 =   
        """
         Six in the fifth place means:
                Darkening of the light as with Prince Chi.
                Perseverance furthers. 
        """

        IChing_Book[Hexagram].Read6 =   
        """
         Six at the top means:
                Not light but darkness.
                First he climbed up to heaven,
                Then he plunged into the depths of the earth. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
         ○ 
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
         ◻ 
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 15;
        IChing_Book[Hexagram].Place2ChangesToNumber = 11;
        IChing_Book[Hexagram].Place3ChangesToNumber = 24;
        IChing_Book[Hexagram].Place4ChangesToNumber = 55;
        IChing_Book[Hexagram].Place5ChangesToNumber = 63;
        IChing_Book[Hexagram].Place6ChangesToNumber = 22;
                
        Hexagram = 37;
        IChing_Book[Hexagram].EngTitle = "The Family (The Clan) "

        IChing_Book[Hexagram].ChiTitle = "Chia Jên "

        IChing_Book[Hexagram].ChiSymbol = "家人 "

        IChing_Book[Hexagram].AltTitles = "Home, Linkage, Dwelling People, The Psyche "

        IChing_Book[Hexagram].Hex = "䷤ "

        IChing_Book[Hexagram].Code = [ 1, 0, 1, 0, 1, 1 ];
        IChing_Book[Hexagram].Above =
                    
        """
         SUN  /  THE GENTLE, WIND 
        """

        IChing_Book[Hexagram].Below =
                    
        """
         LI  /  THE CLINGING, FIRE 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☴ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☲ 
        """

        IChing_Book[Hexagram].Intro1 =   
        """
         The hexagram represents the laws obtaining within the family.  The strong line at the top represents the father, the lowest the son.  The strong line in the fifth place represents the husband, the yielding second line the wife.  On the other hand, the two strong lines in the fifth and the third place represent two brothers, and the two weak lines correlated with them in the fourth and the second place stand for their respective wives.  Thus all the connections and relationships within the family find their appropriate expression.  Each individual line has the character according with its place.  The fact that a strong line occupies the sixth place—where a weak line might be expected—indicates very clearly the strong leadership that must come from the head of the family.  The line is to be considered here not in its quality as the sixth but in its quality as the top line.  THE FAMILY shows the laws operative within the household that, transferred to outside life, keep the state and the world in order.  The influence that goes out from within the family is represented by the symbol of the wind created by fire. 
        """

        IChing_Book[Hexagram].TheJudgment =   
        """
         THE FAMILY.  The perseverance of the woman furthers. 
        """

        IChing_Book[Hexagram].Intro2 =   
        """
         The foundation of the family is the relationship between husband and wife.  The tie that holds the family together lies in the loyalty and perseverance of the wife.  Her place is within (second line), while that of the husband is without (fifth line).  It is in accord with the great laws of nature that husband and wife take their proper places.  Within the family a strong authority is needed; this is represented by the parents.  If the father is really a father and the son a son, if the elder brother fulfills his position, and the younger fulfills his, if the husband is really a husband and the wife a wife, then the family is in order.  When the family is in order, all the social relationships of mankind will be in order.
                
                Three of the five social relationships are to be found within the family—that between father and son, which is the relation of love, that between the husband and wife, which is the relation of chaste conduct, and that between elder and younger brother, which is the relation of correctness.  The loving reverence of the son is then carried over to the prince in the form of faithfulness to duty; the affection and correctness of behavior existing between the two brothers are extended to a friend in the form of loyalty, and to a person of superior rank in the form of deference.  The family is society in embryo; it is the native soil on which performance of moral duty is made easy through natural affection, so that within a small circle a basis of moral practice is created, and this is later widened to include human relationships in general. 
        """

        IChing_Book[Hexagram].TheImage =   
        """
         Wind comes forth from fire:
                The image of THE FAMILY.
                Thus the superior man has substance in his words
                And duration in his way of life. 
        """

        IChing_Book[Hexagram].Intro3 =   
        """
         Heat creates energy: this is signified by the wind stirred up by the fire and issuing forth from it.  This represents influence working from within outward.  The same thing is needed in the regulation of the family.  Here too the influence on others must proceed from one’s own person.  In order to be capable of producing such an influence, one’s words must have power, and this they can have only if they are based on something real, just as flame depends on its fuel.  Words have influence only when they are pertinent and clearly related to definite circumstances.  General discourses and admonitions have no effect whatsoever.  Furthermore, the words must be supported by one’s entire conduct, just as the wind is made effective by its duration.  Only firm and consistent conduct will make such an impression on others that they can adapt and conform to it.  If words and conduct are not in accord and not consistent, they will have no effect. 
        """

        IChing_Book[Hexagram].Read1 =   
        """
         Nine at the beginning means:
                Firm seclusion within the family.
                Remorse disappears. 
        """

        IChing_Book[Hexagram].Read2 =   
        """
         Six in the second place means:
                She should not follow her whims.
                She must attend within to the food.
                Perseverance brings good fortune. 
        """

        IChing_Book[Hexagram].Read3 =   
        """
         Nine in the third place means:
                When tempers flare up in the family,
                Too great severity brings remorse.
                Good fortune nonetheless.
                When woman and child dally and laugh
                It leads in the end to humiliation. 
        """

        IChing_Book[Hexagram].Read4 =   
        """
         Six in the fourth place means:
                She is the treasure of the house.
                Great good fortune. 
        """

        IChing_Book[Hexagram].Read5 =   
        """
         Nine in the fifth place means:
                As a king he approaches his family.
                Fear not.
                Good fortune. 
        """

        IChing_Book[Hexagram].Read6 =   
        """
         Nine at the top means:
                His work commands respect.
                In the end good fortune comes. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
         ○ 
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 53;
        IChing_Book[Hexagram].Place2ChangesToNumber = 9;
        IChing_Book[Hexagram].Place3ChangesToNumber = 42;
        IChing_Book[Hexagram].Place4ChangesToNumber = 13;
        IChing_Book[Hexagram].Place5ChangesToNumber = 22;
        IChing_Book[Hexagram].Place6ChangesToNumber = 63;
                
        Hexagram = 38;
        IChing_Book[Hexagram].EngTitle = "Opposition "

        IChing_Book[Hexagram].ChiTitle = "K’uei "

        IChing_Book[Hexagram].ChiSymbol = "睽 "

        IChing_Book[Hexagram].AltTitles = "The Symbol of Strangeness and Disunion, The Estranged, Opposites, Polarizing, Alienation, Distant From, Perversion, Disharmony, Separated, Contradiction, Estrangement, Incongruity "

        IChing_Book[Hexagram].Hex = "䷥ "

        IChing_Book[Hexagram].Code = [ 1, 1, 0, 1, 0, 1 ];
        IChing_Book[Hexagram].Above =
                    
        """
         LI  /  THE CLINGING, FLAME  
        """

        IChing_Book[Hexagram].Below =
                    
        """
         TUI  /  THE JOYOUS, LAKE 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☲ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☱ 
        """

        IChing_Book[Hexagram].Intro1 =   
        """
         This hexagram is composed of the trigram Li above, i.e., flame, which burns upward, and Tui below, i.e., the lake, which seeps downward.  These two movements are indirect contrast.  Furthermore, Li is the second daughter and Tui the youngest daughter, and although they live in the same house they belong to different men; hence their wills are not the same but are divergently directed. 
        """

        IChing_Book[Hexagram].TheJudgment =   
        """
         OPPOSITION.  In small matters, good fortune. 
        """

        IChing_Book[Hexagram].Intro2 =   
        """
         When people live in opposition and estrangement they cannot carry out a great undertaking in common; their points of view diverge too widely.  In such circumstances one should above all not proceed brusquely, for that would only increase the existing opposition; instead, one should limit oneself to producing gradual effects in small matters.  Here success can still be expected, because the situation is such that the opposition does not preclude all agreement.
                
                In general, opposition appears as an obstruction, but when it represents polarity within a comprehensive whole, it has also its useful and important functions.  The oppositions of heaven and earth, spirit and nature, man and woman, when reconciled, bring about the creation and reproduction of life.  In the world of visible things, the principle of opposites makes possible the differentiation by categories through which order is brought into the world. 
        """

        IChing_Book[Hexagram].TheImage =   
        """
         Above, fire; below, the lake.
                The image of OPPOSITION.
                Thus amid all fellowship
                The superior man retains his individuality. 
        """

        IChing_Book[Hexagram].Intro3 =   
        """
         The two elements, fire and water, never mingle but even when in contact retain their own natures.  So the cultured man is never led into baseness or vulgarity through intercourse or community of interests with persons of another sort; regardless of all commingling, he will always preserve his individuality. 
        """

        IChing_Book[Hexagram].Read1 =   
        """
         Nine at the beginning means:
                Remorse disappears.
                If you lose your horse, do not run after it;
                It will come back of its own accord.
                When you see evil people,
                Guard yourself against mistakes. 
        """

        IChing_Book[Hexagram].Read2 =   
        """
         Nine in the second place means:
                One meets his lord in a narrow street.
                No blame. 
        """

        IChing_Book[Hexagram].Read3 =   
        """
         Six in the third place means:
                One sees the wagon dragged back,
                The oxen halted,
                A man’s hair and nose cut off.
                Not a good beginning, but a good end. 
        """

        IChing_Book[Hexagram].Read4 =   
        """
         Nine in the fourth place means:
                Isolated through opposition,
                One meets a like–minded man
                With whom one can associate in good faith.
                Despite the danger, no blame. 
        """

        IChing_Book[Hexagram].Read5 =   
        """
         Six in the fifth place means:
                Remorse disappears.
                The companion bites his way through the wrappings.
                If one goes to him,
                How could it be a mistake? 
        """

        IChing_Book[Hexagram].Read6 =   
        """
         Nine at the top means:
                Isolated through opposition,
                One sees one’s companion as a pig covered with dirt,
                As a wagon full of devils.
                First one draws a bow against him,
                Then one lays the bow aside.
                He is not a robber; he will woo at the right time.
                As one goes, rain falls; then good fortune comes. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
         ○ 
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 64;
        IChing_Book[Hexagram].Place2ChangesToNumber = 21;
        IChing_Book[Hexagram].Place3ChangesToNumber = 14;
        IChing_Book[Hexagram].Place4ChangesToNumber = 41;
        IChing_Book[Hexagram].Place5ChangesToNumber = 10;
        IChing_Book[Hexagram].Place6ChangesToNumber = 54;
                
        Hexagram = 39;
        IChing_Book[Hexagram].EngTitle = "Obstruction "

        IChing_Book[Hexagram].ChiTitle = "Chien "

        IChing_Book[Hexagram].ChiSymbol = "蹇 "

        IChing_Book[Hexagram].AltTitles = "The Symbol of Difficulty, Arresting Movement, Trouble, Obstacles, Barrier, Halt, Halting, Limping, Afoot "

        IChing_Book[Hexagram].Hex = "䷦ "

        IChing_Book[Hexagram].Code = [ 0, 0, 1, 0, 1, 0 ];
        IChing_Book[Hexagram].Above =
                    
        """
         K’AN  /  THE ABYSMAL, WATER 
        """

        IChing_Book[Hexagram].Below =
                    
        """
         KÊN  /  KEEPING STILL, MOUNTAIN 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☵ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☶ 
        """

        IChing_Book[Hexagram].Intro1 =   
        """
         The hexagram pictures a dangerous abyss lying before us and a steep, inaccessible mountain rising behind us.  We are surrounded by obstacles; at the same time, since the mountain has the attribute of keeping still, there is implicit a hint as to how we can extricate ourselves.  The hexagram represents obstructions that appear in the course of time but that can and should be overcome.  Therefore all the instruction given is directed to overcoming them. 
        """

        IChing_Book[Hexagram].TheJudgment =   
        """
         OBSTRUCTION.  The southwest furthers.
                The northeast does not further.
                It furthers one to see the great man.
                Perseverance brings good fortune. 
        """

        IChing_Book[Hexagram].Intro2 =   
        """
         The southwest is the region of retreat, the northeast that of advance.  Here an individual is confronted by obstacles that cannot be overcome directly.  In such a situation it is wise to pause in view of the danger and to retreat.  However, this is merely a preparation for overcoming the obstructions.  One must join forces with friends of like mind and put himself under the leadership of a man equal to the situation: then one will succeed in removing the obstacles.  This requires the will to persevere just when one apparently must do something that leads away from his goal.  This unswerving inner purpose brings good fortune in the end.  An obstruction that lasts only for a time is useful for self–development.  This is the value of adversity. 
        """

        IChing_Book[Hexagram].TheImage =   
        """
         Water on the mountain:
                The image of OBSTRUCTION.
                Thus the superior man turns his attention to himself
                And molds his character. 
        """

        IChing_Book[Hexagram].Intro3 =   
        """
         Difficulties and obstructions throw a man back upon himself.  While the inferior man seeks to put the blame on other persons, bewailing his fate, the superior man seeks the error within himself, and through this introspection the external obstacle becomes for him an occasion for inner enrichment and education. 
        """

        IChing_Book[Hexagram].Read1 =   
        """
         Six at the beginning means:
                Going leads to obstructions,
                Coming meets with praise. 
        """

        IChing_Book[Hexagram].Read2 =   
        """
         Six in the second place means:
                The king’s servant is beset by obstruction upon obstruction,
                But it is not his own fault. 
        """

        IChing_Book[Hexagram].Read3 =   
        """
         Nine in the third place means:
                Going leads to obstructions;
                Hence he comes back. 
        """

        IChing_Book[Hexagram].Read4 =   
        """
         Six in the fourth place means:
                Going leads to obstructions,
                Coming leads to union. 
        """

        IChing_Book[Hexagram].Read5 =   
        """
         Nine in the fifth place means:
                In the midst of the greatest obstructions,
                Friends come. 
        """

        IChing_Book[Hexagram].Read6 =   
        """
         Six at the top means:
                Going leads to obstructions,
                Coming leads to great good fortune.
                It furthers one to see the great man. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 63;
        IChing_Book[Hexagram].Place2ChangesToNumber = 48;
        IChing_Book[Hexagram].Place3ChangesToNumber = 8;
        IChing_Book[Hexagram].Place4ChangesToNumber = 31;
        IChing_Book[Hexagram].Place5ChangesToNumber = 15;
        IChing_Book[Hexagram].Place6ChangesToNumber = 53;
                
        Hexagram = 40;
        IChing_Book[Hexagram].EngTitle = "Deliverance "

        IChing_Book[Hexagram].ChiTitle = "Hsieh "

        IChing_Book[Hexagram].ChiSymbol = "解 "

        IChing_Book[Hexagram].AltTitles = "The Symbol of Loosening, Release, Eliminating Obstacles, Taking-apart, Untangled, Solution, Dissolution, Relief, Unloose, Release of Tension "

        IChing_Book[Hexagram].Hex = "䷧ "

        IChing_Book[Hexagram].Code = [ 0, 1, 0, 1, 0, 0 ];
        IChing_Book[Hexagram].Above =
                    
        """
         CHÊN  /  THE AROUSING, THUNDER 
        """

        IChing_Book[Hexagram].Below =
                    
        """
         K’AN  /  THE ABYSMAL, WATER 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☳ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☵ 
        """

        IChing_Book[Hexagram].Intro1 =   
        """
         Here the movement goes out of the sphere of danger.  The obstacle has been removed, the difficulties are being resolved.  Deliverance is not yet achieved; it is just in its beginning, and the hexagram represents its various stages. 
        """

        IChing_Book[Hexagram].TheJudgment =   
        """
         DELIVERANCE.  The southwest furthers.
                If there is no longer anything where one has to go,
                Return brings good fortune.
                If there is still something where one has to go,
                Hastening brings good fortune. 
        """

        IChing_Book[Hexagram].Intro2 =   
        """
         This refers to a time in which tensions and complications begin to be eased.  At such times we ought to make our way back to ordinary conditions as soon as possible; this is the meaning of “the southwest.”  These periods of sudden change have great importance.  Just as rain relieves atmospheric tension, making all the buds burst open, so a time of deliverance from burdensome pressure has a liberating and stimulating effect on life.  One thing is important, however: in such times we must not overdo our triumph.  The point is not to push on farther than is necessary.  Returning to the regular order of life as soon as deliverance is achieved brings good fortune.  If there are any residual matters that ought to be attended to, it should be done as quickly as possible, so that a clean sweep is made and no retardations occur. 
        """

        IChing_Book[Hexagram].TheImage =   
        """
         Thunder and rain set in:
                The image of DELIVERANCE.
                Thus the superior man pardons mistakes
                And forgives misdeeds. 
        """

        IChing_Book[Hexagram].Intro3 =   
        """
         A thunderstorm has the effect of clearing the air; the superior man produces a similar effect when dealing with mistakes and sins of men that induce a condition of tension.  Through clarity he brings deliverance.  However, when failings come to light, he does not dwell on them; he simply passes over mistakes, the unintentional transgressions, just as thunder dies away.  He forgives misdeeds, the intentional transgressions, just as water washes everything clean. 
        """

        IChing_Book[Hexagram].Read1 =   
        """
         Six at the beginning means:
                Without blame. 
        """

        IChing_Book[Hexagram].Read2 =   
        """
         Nine in the second place means:
                One kills three foxes in the field
                And receives a yellow arrow.
                Perseverance brings good fortune. 
        """

        IChing_Book[Hexagram].Read3 =   
        """
         Six in the third place means:
                If a man carries a burden on his back
                And nonetheless rides in a carriage,
                He thereby encourages robbers to draw near.
                Perseverance leads to humiliation. 
        """

        IChing_Book[Hexagram].Read4 =   
        """
         Perseverance leads to humiliation.
                Nine in the fourth place means:
                Deliver yourself from your great toe.
                Then the companion comes,
                And him you can trust. 
        """

        IChing_Book[Hexagram].Read5 =   
        """
         Six in the fifth place means:
                If only the superior man can deliver himself,
                It brings good fortune.
                Thus he proves to inferior men that he is in earnest. 
        """

        IChing_Book[Hexagram].Read6 =   
        """
         Six at the top means:
                The prince shoots at a hawk on a high wall.
                He kills it.  Everything serves to further. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 54;
        IChing_Book[Hexagram].Place2ChangesToNumber = 16;
        IChing_Book[Hexagram].Place3ChangesToNumber = 32;
        IChing_Book[Hexagram].Place4ChangesToNumber = 7;
        IChing_Book[Hexagram].Place5ChangesToNumber = 47;
        IChing_Book[Hexagram].Place6ChangesToNumber = 64;
                
        Hexagram = 41;
        IChing_Book[Hexagram].EngTitle = "Decrease "

        IChing_Book[Hexagram].ChiTitle = "Sun "

        IChing_Book[Hexagram].ChiSymbol = "損 "

        IChing_Book[Hexagram].AltTitles = "The Symbol of Lessening, Loss, Diminishing, Reduction, Diminution of Excesses, Decline, Bringing into Balance, Dynamic Balance, Sacrifice "

        IChing_Book[Hexagram].Hex = "䷨ "

        IChing_Book[Hexagram].Code = [ 1, 1, 0, 0, 0, 1 ];
        IChing_Book[Hexagram].Above =
                    
        """
         KÊN  /  KEEPING STILL, MOUNTAIN 
        """

        IChing_Book[Hexagram].Below =
                    
        """
         TUI  /  THE JOYOUS, LAKE 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☶ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☱ 
        """

        IChing_Book[Hexagram].Intro1 =   
        """
         This hexagram represents a decrease of the lower trigram in favor of the upper, because the third line, originally strong, has moved up to the top, and the top line, originally weak, has replaced it.  What is below is decreased to the benefit of what is above.  This is out–and–out decrease.  If the foundations of a building are decreased in strength and the upper walls are strengthened, the whole structure loses its stability.  Likewise, a decrease in the prosperity of the people in favor of the government is out–and–out decrease.  And the entire theme of the hexagram is directed to showing how this shift of wealth can take place without causing the sources of wealth in the nation and its lower classes to fail. 
        """

        IChing_Book[Hexagram].TheJudgment =   
        """
         DECREASE combined with sincerity
                Brings about supreme good fortune
                Without blame.
                One may be persevering in this.
                It furthers one to undertake something.
                How is this to be carried out?
                One may use two small bowls for the sacrifice. 
        """

        IChing_Book[Hexagram].Intro2 =   
        """
         Decrease does not under all circumstances mean something bad.  Increase and decrease come in their own time.  What matters here is to understand the time and not to try to cover up poverty with empty pretense.  If a time of scanty resources brings out an inner truth, one must not feel ashamed of simplicity.  For simplicity is then the very thing needed to provide inner strength for further undertakings.  Indeed, there need be no concern if the outward beauty of the civilization, even the elaboration of religious forms, should have to suffer because of simplicity.  One must draw on the strength of the inner attitude to compensate for what is lacking in externals; then the power of the content makes up for the simplicity of form.  There is no need of presenting false appearances to God.  Even with slender means, the sentiment of the heart can be expressed. 
        """

        IChing_Book[Hexagram].TheImage =   
        """
         At the foot of the mountain, the lake:
                The image of DECREASE.
                Thus the superior man controls his anger
                And restrains his instincts. 
        """

        IChing_Book[Hexagram].Intro3 =   
        """
         The lake at the foot of the mountain evaporates.  In this way it decreases to the benefit of the mountain, which is enriched by its moisture.  The mountain stands as the symbol of a stubborn strength that can harden into anger.  The lake is the symbol of unchecked gaiety that can develop into passionate drives at the expense of the life forces.  Therefore decrease is necessary; anger must be decreased by keeping still, the instincts must be curbed by restriction.  By this decrease of the lower powers of the psyche, the higher aspects of the soul are enriched. 
        """

        IChing_Book[Hexagram].Read1 =   
        """
         Nine at the beginning means:
                Going quickly when one’s tasks are finished
                Is without blame.
                But one must reflect on how much one may decrease others. 
        """

        IChing_Book[Hexagram].Read2 =   
        """
         Nine in the second place means:
                Perseverance furthers.
                To undertake something brings misfortune.
                Without decreasing oneself,
                One is able to bring increase to others. 
        """

        IChing_Book[Hexagram].Read3 =   
        """
         Six in the third place means:
                When three people journey together,
                Their number decreases by one.
                When one man journeys alone,
                He finds a companion. 
        """

        IChing_Book[Hexagram].Read4 =   
        """
         Six in the fourth place means:
                If a man deceases his faults,
                It makes the other hasten to come and rejoice.
                No blame. 
        """

        IChing_Book[Hexagram].Read5 =   
        """
         Six in the fifth place means:
                Someone does indeed increase him.
                Ten pairs of tortoises cannot oppose it.
                Supreme good fortune. 
        """

        IChing_Book[Hexagram].Read6 =   
        """
         Nine at the top means:
                If one is increased without depriving others,
                There is no blame.
                Perseverance brings good fortune.
                It furthers one to undertake something.
                One obtains servants
                But no longer has a separate home. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
         ◻ 
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
         ◻ 
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 4;
        IChing_Book[Hexagram].Place2ChangesToNumber = 27;
        IChing_Book[Hexagram].Place3ChangesToNumber = 26;
        IChing_Book[Hexagram].Place4ChangesToNumber = 38;
        IChing_Book[Hexagram].Place5ChangesToNumber = 61;
        IChing_Book[Hexagram].Place6ChangesToNumber = 19;
                
        Hexagram = 42;
        IChing_Book[Hexagram].EngTitle = "Increase "

        IChing_Book[Hexagram].ChiTitle = "I "

        IChing_Book[Hexagram].ChiSymbol = "益 "

        IChing_Book[Hexagram].AltTitles = "The Symbol of Addition, Gain, Augmenting, Help from Above, Benefit, Advantage, Profit, Expansion "

        IChing_Book[Hexagram].Hex = "䷩ "

        IChing_Book[Hexagram].Code = [ 1, 0, 0, 0, 1, 1 ];
        IChing_Book[Hexagram].Above =
                    
        """
         SUN  /  THE GENTLE, WIND 
        """

        IChing_Book[Hexagram].Below =
                    
        """
         CHÊN  /  THE AROUSING, THUNDER 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☴ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☳ 
        """

        IChing_Book[Hexagram].Intro1 =   
        """
         The idea of increase is expressed in the fact that the strong lowest line of the upper trigram has sunk down and taken its place under the lower trigram.  This conception also expresses the fundamental idea on which the Book of Changes is based.  To rule truly is to serve.
                
                A sacrifice of the higher element that produces an increase of the lower is called an out–and–out increase: it indicates the spirit that alone has power to help the world. 
        """

        IChing_Book[Hexagram].TheJudgment =   
        """
         INCREASE.  It furthers one
                To undertake something.
                It furthers one to cross the great water. 
        """

        IChing_Book[Hexagram].Intro2 =   
        """
         Sacrifice on the part of those above for the increase of those below fills the people with a sense of joy and gratitude that is extremely valuable for the flowering of the commonwealth.  When people are thus devoted to their leaders, undertakings are possible, and even difficult and dangerous enterprises will succeed.  Therefore in such times of progress and successful development it is necessary to work and make the best use of time.  This time resembles that of the marriage of heaven and earth, when the earth partakes of the creative power of heaven, forming and bringing forth living beings.  The time of INCREASE does not endure, therefore it must be utilized while it lasts. 
        """

        IChing_Book[Hexagram].TheImage =   
        """
         Wind and thunder: the image of INCREASE.
                Thus the superior man:
                If he sees good, he imitates it;
                If he has faults, he rids himself of them. 
        """

        IChing_Book[Hexagram].Intro3 =   
        """
         While observing how thunder and wind increase and strengthen each other, a man can note the way to self–increase and self–improvement.  When he discovers good in others, he should imitate it and thus make everything on earth his own.  If he perceives something bad in himself, let him rid himself of it.  In this way he becomes free of evil.  This ethical change represents the most important increase of personality. 
        """

        IChing_Book[Hexagram].Read1 =   
        """
         Nine at the beginning means:
                It furthers one to accomplish great deeds.
                Supreme good fortune.  No blame. 
        """

        IChing_Book[Hexagram].Read2 =   
        """
         Six in the second place means:
                Someone does indeed increase him;
                Ten pairs of tortoises cannot oppose it.
                Constant perseverance brings good fortune.
                The king presents him before God.
                Good fortune. 
        """

        IChing_Book[Hexagram].Read3 =   
        """
         Six in the third place means:
                One is enriched through unfortunate events.
                No blame, if you are sincere
                And walk in the middle,
                And report with a seal to the prince. 
        """

        IChing_Book[Hexagram].Read4 =   
        """
         Six in the fourth place means:
                If you walk in the middle
                And report the prince,
                He will follow.
                It furthers one to be used
                In the removal of the capital. 
        """

        IChing_Book[Hexagram].Read5 =   
        """
         Nine in the fifth place means:
                If in truth you have a kind heart, ask not.
                Supreme good fortune.
                Truly, kindness will be recognized as your virtue. 
        """

        IChing_Book[Hexagram].Read6 =
                    
        """
         Nine at the top means:
                He brings increase to no one.
                Indeed, someone even strikes him.
                He does not keep his heart constantly steady.
                Misfortune. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
         ◻ 
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
         ◻ 
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 20;
        IChing_Book[Hexagram].Place2ChangesToNumber = 61;
        IChing_Book[Hexagram].Place3ChangesToNumber = 37;
        IChing_Book[Hexagram].Place4ChangesToNumber = 25;
        IChing_Book[Hexagram].Place5ChangesToNumber = 27;
        IChing_Book[Hexagram].Place6ChangesToNumber = 3;
                
                
        Hexagram = 43;
        IChing_Book[Hexagram].EngTitle = "Break-Through (Resoluteness) "

        IChing_Book[Hexagram].ChiTitle = "Kuai "

        IChing_Book[Hexagram].ChiSymbol = "夬 "

        IChing_Book[Hexagram].AltTitles = "The Symbol of Decision, Resolution, Determination, Parting, Removing Corruption, Eradication "

        IChing_Book[Hexagram].Hex = "䷪ "

        IChing_Book[Hexagram].Code = [ 1, 1, 1, 1, 1, 0 ];
        IChing_Book[Hexagram].Above =
                    
        """
         TUI  /  THE JOYOUS, LAKE 
        """

        IChing_Book[Hexagram].Below =
                    
        """
         CH'IEN / THE CREATIVE, HEAVEN 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☱ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☰ 
        """

        IChing_Book[Hexagram].Intro1 =
                    
        """
         This hexagram signifies on the one hand a break–through after a long accumulation of tension, as a swollen river breaks through its dikes, or in the manner of a cloudburst.  On the other hand, applied to human conditions, it refers to the time when inferior people gradually begin to disappear.  Their influence is on the wane; as a result of resolute action, a change in conditions occurs, a break–through.  The hexagram is linked with the third month [April–May]. 
        """

        IChing_Book[Hexagram].TheJudgment =
                    
        """
         BREAK–THROUGH.  One must resolutely make the matter known  At the court of the king.  It must be announced truthfully.  Danger.  It is necessary to notify one’s own city.  It does not further to resort to arms.  It furthers one to undertake something. 
        """

        IChing_Book[Hexagram].Intro2 =
                    
        """
         Even if only one inferior man is occupying a ruling position in a city, he is able to oppress superior men.  Even a single passion still lurking in the heart has power to obscure reason.  Passion and reason cannot exist side by side—therefore fight without quarter is necessary if the good is to prevail. In a resolute struggle of the good against evil, there are, however, definite rules that must not be disregarded, if it is to succeed.  First, resolution must be based on a union of strength and friendliness.  Second, a compromise with evil is not possible; evil must under all circumstances be openly discredited.  Nor must our own passions and shortcomings be glossed over.  Third, the struggle must not be carried on directly by force.  If evil is branded, it thinks of weapons, and if we do it the favor of fighting against it blow for blow, we lose in the end because thus we ourselves get entangled in hatred and passion.  Therefore it is important to begin at home, to be on guard in our own persons against the faults we have branded.  In this way, finding no opponent, the sharp edges of the weapons of evil becomes dulled.  For the same reasons we should not combat our own faults directly.  As long as we wrestle with them, they continue victorious.  Finally, the best way to fight evil is to make energetic progress in the good. 
        """

        IChing_Book[Hexagram].TheImage =
                    
        """
         The lake has risen up to heaven:  The image of BREAK–THROUGH.  Thus the superior man  Dispenses riches downward  And refrains from resting on his virtue. 
        """

        IChing_Book[Hexagram].Intro3 =
                    
        """
         When the water of a lake has risen up to heaven, there is reason to fear a cloudburst.  Taking this as a warning, the superior man forestalls a violent collapse.  If a man were to pile up riches for himself alone, without considering others, he would certainly experience a collapse.  For all gathering is followed by dispersion.  Therefore the superior man begins to distribute while he is accumulating.  In the same way, in developing his character he takes care not to become hardened in obstinacy but to remain receptive to impressions by help of strict and continuous self–examination. 
        """

        IChing_Book[Hexagram].Read1 =
                    
        """
         Nine in the beginning means:  Mighty in the forward-striding toes.  When one goes and is not equal to the task,  One makes a mistake. 
        """

        IChing_Book[Hexagram].Read2 =
                    
        """
         Nine in the second place means:  A cry of alarm. Arms at evening and at night.  Fear nothing. 
        """

        IChing_Book[Hexagram].Read3 =
                    
        """
         Nine in the third place means:  To be powerful in the cheekbones  Brings misfortune.  The superior man is firmly resolved.  He walks alone and is caught in the rain.  He is bespattered,  And people murmur against him.  No blame 
        """

        IChing_Book[Hexagram].Read4 =
                    
        """
         Nine in the fourth place means:  There is no skin on his thighs,  And walking comes hard.  If a man were to let himself be led like sheep,  Remorse would disappear.  But if these words are heard  They will not be believed. 
        """

        IChing_Book[Hexagram].Read5 =
                    
        """
         Nine in the fifth place means:  In dealing with weeds,  Firm resolution is necessary.  Walking in the middle  Remains free of blame. 
        """

        IChing_Book[Hexagram].Read6 =
                    
        """
         Six at the top means:  No cry.  In the end misofortune comes. 
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 28;
        IChing_Book[Hexagram].Place1ChangesToTitle =
                    
        """
         Preponderance of the Great ䷛ 
        """

        IChing_Book[Hexagram].Place2ChangesToNumber = 49;
        IChing_Book[Hexagram].Place2ChangesToTitle =
                    
        """
         Revolution (Molting) ䷰ 
        """

        IChing_Book[Hexagram].Place3ChangesToNumber = 58;
        IChing_Book[Hexagram].Place3ChangesToTitle =
                    
        """
         The Joyous, Lake ䷹ 
        """

        IChing_Book[Hexagram].Place4ChangesToNumber = 5;
        IChing_Book[Hexagram].Place4ChangesToTitle =
                    
        """
         Waiting (Nourishment) ䷄ 
        """

        IChing_Book[Hexagram].Place5ChangesToNumber = 34;
        IChing_Book[Hexagram].Place5ChangesToTitle =
                    
        """
         The Power of the Great ䷡ 
        """

        IChing_Book[Hexagram].Place6ChangesToNumber = 1;
        IChing_Book[Hexagram].Place6ChangesToTitle =
                    
        """
         The Creative, Heaven ䷀ 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
         ○ 
        """
        // ○ ◻ ◻
        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
         ◻ 
        """

                
                
        Hexagram = 44;
        IChing_Book[Hexagram].EngTitle = "Coming to Meet "

        IChing_Book[Hexagram].ChiTitle = "Kou "

        IChing_Book[Hexagram].ChiSymbol = "姤 "

        IChing_Book[Hexagram].AltTitles = "The Symbol of Meeting, Contact, Sexual Intercourse, Encountering, Coupling, Infiltration by Inferior Men, Adultery "

        IChing_Book[Hexagram].Hex = "䷫ "

        IChing_Book[Hexagram].Code = [ 0, 1, 1, 1, 1, 1 ];
        IChing_Book[Hexagram].Above =
                    
        """
         CH’IEN  /  THE CREATIVE, HEAVEN  
        """

        IChing_Book[Hexagram].Below =
                    
        """
         SUN  /  THE GENTLE, WIND 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☰ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☴ 
        """

        IChing_Book[Hexagram].Intro1 =   
        """
         This hexagram indicates a situation in which the principle of darkness, after having been eliminated, furtively and unexpectedly obtrudes again from within and below.  Of its own accord the female principle comes to meet the male.  It is an unfavorable and dangerous situation, and we must understand and promptly prevent the possible consequences.
                
                The hexagram is linked with the fifth month [June–July], because at the summer solstice the principle of darkness gradually becomes ascendant again. 
        """

        IChing_Book[Hexagram].TheJudgment =   
        """
         COMING TO MEET.  The maiden is powerful.
                One should not marry such a maiden. 
        """

        IChing_Book[Hexagram].Intro2 =   
        """
         The rise of the inferior element is pictured here in the image of a bold girl who lightly surrenders herself and thus seizes power.  This would not be possible if the strong and light–giving element had not in turn come halfway.  The inferior thing seems so harmless and inviting that a man delights in it; it looks so small and weak that he imagines he may dally with it and come to no harm.
                
                The inferior man rises only because the superior man does not regard him as dangerous and so lends him power.  If he were resisted from the first, he could never gain influence.
                
                The time of COMING TO MEET is important in still another way.  Although as a general rule the weak should not come to meet the strong, there are times when this has great significance.  When heaven and earth come to meet each other, all creatures prosper; when a prince and his official come to meet each other, the world is put in order.  It is necessary for elements predestined to be joined and mutually dependent to come to meet one another halfway.  But the coming together must be free of dishonest ulterior motives, otherwise harm will result. 
        """

        IChing_Book[Hexagram].TheImage =   
        """
         Under heaven, wind:
                The image of COMING TO MEET.
                Thus does the prince act when disseminating his commands
                And proclaiming them to the four quarters of heaven. 
        """

        IChing_Book[Hexagram].Intro3 =   
        """
         The situation here resembles that in hexagram 20, Kuan, CONTEMPLATION (VIEW).  In the latter the wind blows over the earth, here it blows under heaven; in both cases it goes everywhere.  There the wind is on the earth and symbolizes the ruler taking note of the conditions in his kingdom; here the wind blows from above and symbolizes the influence exercised by the ruler through his commands.  Heaven is far from the things of earth, but it sets them in motion by means of the wind.  The ruler is far from his people, but he sets them in motion by means of his commands and decrees. 
        """

        IChing_Book[Hexagram].Read1 =   
        """
         Six at the beginning means:
                It must be checked with a brake of bronze.
                Perseverance brings good fortune.
                If one lets it take its course, one experiences misfortune.
                Even a lean pig has it in him to rage around. 
        """

        IChing_Book[Hexagram].Read2 =   
        """
         Nine in the second place means:
                There is a fish in the tank.  No blame.
                Does not further guests. 
        """

        IChing_Book[Hexagram].Read3 =   
        """
         Nine in the third place means:
                There is no skin on his thighs,
                And walking comes hard.
                If one is mindful of the danger,
                No great mistake is made. 
        """

        IChing_Book[Hexagram].Read4 =   
        """
         Nine in the fourth place means:
                No fish in the tank.
                This leads to misfortune. 
        """

        IChing_Book[Hexagram].Read5 =   
        """
         Nine in the fifth place means:
                A melon covered with willow leaves.
                Hidden lines.
                Then it drops down to one from heaven. 
        """

        IChing_Book[Hexagram].Read6 =   
        """
         Nine at the top means:
                He comes to meet with his horns.
                Humiliation.  No blame. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
         ◻ 
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 1;
        IChing_Book[Hexagram].Place2ChangesToNumber = 33;
        IChing_Book[Hexagram].Place3ChangesToNumber = 6;
        IChing_Book[Hexagram].Place4ChangesToNumber = 57;
        IChing_Book[Hexagram].Place5ChangesToNumber = 50;
        IChing_Book[Hexagram].Place6ChangesToNumber = 28;
                
        Hexagram = 45;
        IChing_Book[Hexagram].EngTitle = "Gathering Together (Massing) "

        IChing_Book[Hexagram].ChiTitle = "Ts’ui "

        IChing_Book[Hexagram].ChiSymbol = "萃 "

        IChing_Book[Hexagram].AltTitles = "Gathering Together, Massing, The Symbol of Gathering into One, Assembling, Congregation, Gathering, Unity, Accord, Making Whole, Focusing, Marshalling One's Forces, Clustering, Finished "

        IChing_Book[Hexagram].Hex = "䷬ "

        IChing_Book[Hexagram].Code = [ 0, 0, 0, 1, 1, 0 ];
        IChing_Book[Hexagram].Above =
                    
        """
         TUI  /  THE JOYOUS, LAKE  
        """

        IChing_Book[Hexagram].Below =
                    
        """
         K’UN  /  THE RECEPTIVE, EARTH 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☱ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☷ 
        """

        IChing_Book[Hexagram].Intro1 =   
        """
         This hexagram is related in form and meaning to Pi, HOLDING TOGETHER (8).  In the latter, water is over the earth; here a lake is over the earth.  But since the lake is a place where water collects, the idea of gathering together is even more strongly expressed here than in the other hexagram.  The same idea also arises from the fact that in the present case it is two strong lines (the fourth and the fifth) that bring about the gathering together, whereas in the former case one strong line (the fifth) stands in the midst of weak lines. 
        """

        IChing_Book[Hexagram].TheJudgment =   
        """
         GATHERING TOGETHER.  Success.
                The king approaches his temple.
                It furthers one to see the great man.
                This brings success.  Perseverance furthers.
                To bring great offerings creates good fortune.
                It furthers one to undertake something. 
        """

        IChing_Book[Hexagram].Intro2 =   
        """
         The gathering together of people in large communities is either a natural occurrence, as in the case of the family, or an artificial one, as in the case of the state.  The family gathers about the father as its head.  The perpetuation of this gathering in groups is achieved through the sacrifice to the ancestors, at which the whole clan is gathered together.  Through the collective piety of the living members of the family, the ancestors become so integrated in the spiritual life of the family that it cannot be dispersed or dissolved.
                
                Where men are to be gathered together, religious forces are needed.  But there must also be a human leader to serve as the center of the group.  In order to be able to bring others together, this leader must first of all be collected within himself.  Only collective moral force can unite the world.  Such great times of unification will leave great achievements behind them.  This is the significance of the great offerings that are made.  In the secular sphere likewise there is need of great deeds in the time of GATHERING TOGETHER. 
        """

        IChing_Book[Hexagram].TheImage =   
        """
         Over the earth, the lake:
                The image of GATHERING TOGETHER.
                Thus the superior man renews his weapons
                In order to meet the unforeseen. 
        """

        IChing_Book[Hexagram].Intro3 =   
        """
         If the water in the lake gathers until it rises above the earth, there is danger of a break–through.  Precautions must be taken to prevent this.  Similarly where men gather together in great numbers, strife is likely to arise; where possessions are collected, robbery is likely to occur.  Thus in the time of GATHERING TOGETHER we must arm promptly to ward off the unexpected.  Human woes usually come as a result of unexpected events against which we are not forearmed.  If we are prepared, they can be prevented. 
        """

        IChing_Book[Hexagram].Read1 =   
        """
         Six at the beginning means:
                If you are sincere, but not to the end,
                There will sometimes be confusion, sometimes gathering together.
                If you call out,
                Then after one grasp of the hand you can laugh again.
                Regret not.  Going is without blame. 
        """

        IChing_Book[Hexagram].Read2 =   
        """
         Six in the second place means:
                Letting oneself be drawn
                Brings good fortune and remains blameless.
                If one is sincere,
                It furthers one to bring even a small offering. 
        """

        IChing_Book[Hexagram].Read3 =   
        """
         Six in the third place means:
                Gathering together amid sighs.
                Nothing that would further.
                Going is without blame.
                Slight humiliation. 
        """

        IChing_Book[Hexagram].Read4 =   
        """
         Nine in the fourth place means:
                Great good fortune.  No blame. 
        """

        IChing_Book[Hexagram].Read5 =   
        """
         Nine in the fifth place means:
                If in gathering together one has position,
                This brings no blame.
                If there are some who are not yet sincerely in the work,
                Sublime and enduring perseverance is needed.
                Then remorse disappears. 
        """

        IChing_Book[Hexagram].Read6 =   
        """
         Six at the top means:
                Lamenting and sighing, floods of tears.
                No blame. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 17;
        IChing_Book[Hexagram].Place2ChangesToNumber = 47;
        IChing_Book[Hexagram].Place3ChangesToNumber = 31;
        IChing_Book[Hexagram].Place4ChangesToNumber = 8;
        IChing_Book[Hexagram].Place5ChangesToNumber = 16;
        IChing_Book[Hexagram].Place6ChangesToNumber = 12;
                
        Hexagram = 46;
        IChing_Book[Hexagram].EngTitle = "Pushing Upward "

        IChing_Book[Hexagram].ChiTitle = "Shêng "

        IChing_Book[Hexagram].ChiSymbol = "升 "

        IChing_Book[Hexagram].AltTitles = "The Symbol of Rising and Advancing, Ascending, Ascension, Rising, Promotion, Advancement, Sprouting from the Earth, Organic Growth "

        IChing_Book[Hexagram].Hex = "䷭ "

        IChing_Book[Hexagram].Code = [ 0, 1, 1, 0, 0, 0 ];
        IChing_Book[Hexagram].Above =
                    
        """
         K’UN  /  THE RECEPTIVE, EARTH  
        """

        IChing_Book[Hexagram].Below =
                    
        """
          SUN  /  THE GENTLE, WIND, WOOD 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☷ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☴ 
        """

        IChing_Book[Hexagram].Intro1 =   
        """
         The lower trigram, Sun, represents wood, and the upper, K’un, means the earth.  Linked with this is the idea that wood in the earth grows upward.  In contrast to the meaning of Chin, PROGRESS (35), this pushing upward is associated with effort, just as a plant needs energy for pushing upward through the earth.  That is why this hexagram, although it is connected with success, is associated with effort of the will.  In PROGRESS the emphasis is on expansion; PUSHING UPWARD indicates rather a vertical ascent—direct rise from obscurity and lowliness to power and influence. 
        """

        IChing_Book[Hexagram].TheJudgment =   
        """
         PUSHING UPWARD has supreme success.
                One must see the great man.
                Fear not.
                Departure toward the south
                Brings good fortune. 
        """

        IChing_Book[Hexagram].Intro2 =   
        """
         The pushing upward of the good elements encounters no obstruction and is therefore accompanied by great success.  The pushing upward is made possible not by violence but by modesty and adaptability.  Since the individual is borne along by the propitiousness of the time, he advances.  He must go to see authoritative people.  He need not be afraid to do this, because success is assured.  But he must set to work, for activity (this is the meaning of “the south”) brings good fortune. 
        """

        IChing_Book[Hexagram].TheImage =   
        """
         Within the earth, wood grows:
                The image of PUSHING UPWARD.
                Thus the superior man of devoted character
                Heaps up small things
                In order to achieve something high and great. 
        """

        IChing_Book[Hexagram].Intro3 =   
        """
         Adapting itself to obstacles and bending around them, wood in the earth grows upward without haste and without rest.  Thus too the superior man is devoted in character and never pauses in his progress. 
        """

        IChing_Book[Hexagram].Read1 =   
        """
         Six at the beginning means:
                Pushing upward that meets with confidence
                Brings great good fortune. 
        """

        IChing_Book[Hexagram].Read2 =   
        """
         Nine in the second place means:
                If one is sincere,
                It furthers one to bring even a small offering.
                No blame. 
        """

        IChing_Book[Hexagram].Read3 =   
        """
         Nine in the third place means:
                One pushes upward into an empty city. 
        """

        IChing_Book[Hexagram].Read4 =   
        """
         Six in the fourth place means:
                The king offers him Mount Ch’i.
                Good fortune.  No blame. 
        """

        IChing_Book[Hexagram].Read5 =   
        """
         Six in the fifth place means:
                Perseverance brings good fortune.
                One pushes upward by steps. 
        """

        IChing_Book[Hexagram].Read6 =   
        """
         Six at the top means:
                Pushing upward in darkness.
                It furthers one
                To be unremittingly persevering. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
         ◻ 
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 11;
        IChing_Book[Hexagram].Place2ChangesToNumber = 15;
        IChing_Book[Hexagram].Place3ChangesToNumber = 7;
        IChing_Book[Hexagram].Place4ChangesToNumber = 32;
        IChing_Book[Hexagram].Place5ChangesToNumber = 48;
        IChing_Book[Hexagram].Place6ChangesToNumber = 18;
                
        Hexagram = 47;
        IChing_Book[Hexagram].EngTitle = "Oppression (Exhaustion) "

        IChing_Book[Hexagram].ChiTitle = "K’un "

        IChing_Book[Hexagram].ChiSymbol = "困 "

        IChing_Book[Hexagram].AltTitles = "The Symbol of Repression and Confinement, Adversity, Weariness, Confining, Entangled, Hardship, Depression, Tiresome Restriction, Dried Up "

        IChing_Book[Hexagram].Hex = "䷮ "

        IChing_Book[Hexagram].Code = [ 0, 1, 0, 1, 1, 0 ];
        IChing_Book[Hexagram].Above =
                    
        """
         TUI  /  THE JOYOUS, LAKE  
        """

        IChing_Book[Hexagram].Below =
                    
        """
         K’AN  /  THE ABYSMAL, WATER 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☱ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☵ 
        """

        IChing_Book[Hexagram].Intro1 =   
        """
         The lake is above, water below; the lake is empty, dried up.  Exhaustion is expressed in yet another way: at the top, a dark line is holding down two light lines; below, a light line is hemmed in between two dark ones.  The upper trigram belongs to the principle of darkness, the lower to the principle of light.  Thus everywhere superior men are oppressed and held in restraint by inferior men. 
        """

        IChing_Book[Hexagram].TheJudgment =   
        """
         OPPRESSION.  Success.  Perseverance.
                The great man brings about good fortune.
                No blame.
                When one has something to say,
                It is not believed. 
        """

        IChing_Book[Hexagram].Intro2 =   
        """
         Times of adversity are the reverse of times of success, but they can lead to success if they befall the right man.  When a strong man meets with adversity, he remains cheerful despite all danger, and this cheerfulness is the source of later successes; it is that stability which is stronger than fate.  He who lets his spirit be broken by exhaustion certainly has no success.  But if adversity only bends a man, it creates in him a power to react that is bound in time to manifest itself.  No inferior man is capable of this.  Only the great man brings about good fortune and remains blameless.  It is true that for the time being outward influence is denied him, because his words have no effect.  Therefore in times of adversity it is important to be strong within and sparing of words. 
        """

        IChing_Book[Hexagram].TheImage =   
        """
         There is no water in the lake:
                The image of EXHAUSTION.
                Thus the superior man stakes his life
                On following his will. 
        """

        IChing_Book[Hexagram].Intro3 =   
        """
         When the water has flowed out below, the lake must dry up and become exhausted.  That is fate.  This symbolizes an adverse fate in human life.  In such times there is nothing a man can do but acquiesce in his fate and remain true to himself.  This concerns the deepest stratum of his being, for this alone is superior to all external fate. 
        """

        IChing_Book[Hexagram].Read1 =   
        """
         Six at the beginning means:
                One sits oppressed under a bare tree
                And strays into a gloomy valley.
                For three years one sees nothing. 
        """

        IChing_Book[Hexagram].Read2 =   
        """
         Nine in the second place means:
                One is oppressed while at meat and drink.
                The man with the scarlet knee bands is just coming.
                It furthers one to offer sacrifice.
                To set forth brings misfortune.
                No blame. 
        """

        IChing_Book[Hexagram].Read3 =   
        """
         Six in the third place means:
                A man permits himself to be oppressed by stone,
                And leans on thorns and thistles.
                He enters his house and does not see his wife.
                Misfortune. 
        """

        IChing_Book[Hexagram].Read4 =   
        """
         Nine in the fourth place means:
                He comes very quietly, oppressed in a golden carriage.
                Humiliation, but the end is reached. 
        """

        IChing_Book[Hexagram].Read5 =   
        """
         Nine in the fifth place means:
                His nose and feet are cut off.
                Oppression at the hands of the man with the purple knee bands.
                Joy comes softly.
                It furthers one to make offerings and libations. 
        """

        IChing_Book[Hexagram].Read6 =   
        """
         Six at the top means:
                He is oppressed by creeping vines.
                He moves uncertainly and says, “Movement brings remorse.”
                If one feels remorse over this and makes a start,
                Good fortune comes. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 58;
        IChing_Book[Hexagram].Place2ChangesToNumber = 45;
        IChing_Book[Hexagram].Place3ChangesToNumber = 28;
        IChing_Book[Hexagram].Place4ChangesToNumber = 29;
        IChing_Book[Hexagram].Place5ChangesToNumber = 40;
        IChing_Book[Hexagram].Place6ChangesToNumber = 6;
                
        Hexagram = 48;
        IChing_Book[Hexagram].EngTitle = "The Well "

        IChing_Book[Hexagram].ChiTitle = "Ching "

        IChing_Book[Hexagram].ChiSymbol = "井 "

        IChing_Book[Hexagram].AltTitles = "Welling, Potentialities Fulfilled, The Source, The Deep Psyche "

        IChing_Book[Hexagram].Hex = "䷯ "

        IChing_Book[Hexagram].Code = [ 0, 1, 1, 0, 1, 0 ];
        IChing_Book[Hexagram].Above =
                    
        """
         K’AN  /  THE ABYSMAL, WATER 
        """

        IChing_Book[Hexagram].Below =
                    
        """
         SUN  /  THE GENTLE, WIND, WOOD 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☵ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☴ 
        """

        IChing_Book[Hexagram].Intro1 =   
        """
         Wood is below, water above.  The wood goes down into the earth to bring up water.  The image derives from the pole–and–bucket well of ancient China.  The wood represents not the buckets, which in ancient times were made of clay, but rather the wooden poles by which the water is hauled up from the well.  The image also refers to the world of plants, which lift water out of the earth by means of their fibers.
                
                The well from which water is drawn conveys the further idea of an inexhaustible dispensing of nourishment. 
        """

        IChing_Book[Hexagram].TheJudgment =   
        """
         THE WELL.  The town may be changed,
                But the well cannot be changed.
                It neither decreases nor increases.
                They come and go and draw from the well.
                If one gets down almost to the water
                And the rope does not go all the way,
                Or the jug breaks, it brings misfortune. 
        """

        IChing_Book[Hexagram].Intro2 =   
        """
         In ancient China the capital cities were sometimes moved, partly for the sake of more favorable location, partly because of a change in dynasties.  The style of architecture changed in the course of centuries, but the shape of the well has remained the same from ancient times to this day.  Thus the well is the symbol of that social structure which, evolved by mankind in meeting its most primitive needs, is independent of all political forms.  Political structures change, as do nations, but the life of man with its needs remains eternally the same—this cannot be changed.  Life is also inexhaustible.  It grows neither less nor more; it exists for one and for all.  The generations come and go, and all enjoy life in its inexhaustible abundance.
                
                However, there are two prerequisites for a satisfactory political or social organization of mankind.  We must go down to the very foundations of life.  For any merely superficial ordering of life that leaves its deepest needs unsatisfied is as ineffectual as if no attempt at order had ever been made.  Carelessness—by which the jug is broken—is also disastrous.  If for instance the military defense of a state is carried to such excess that it provokes wars by which the power of the state is annihilated, this is a breaking of the jug.
                
                This hexagram applies also to the individual.  However men may differ in disposition and in education, the foundations of human nature are the same in everyone.  And every human being can draw in the course of his education from the inexhaustible wellspring of the divine in man’s nature.  But here likewise two dangers threaten: a man may fail in his education to penetrate to the real roots of humanity and remain fixed in convention—a partial education of this sort is as bad as none—or he may suddenly collapse and neglect his self–development. 
        """

        IChing_Book[Hexagram].TheImage =   
        """
         Water over wood: the image of THE WELL.
                Thus the superior man encourages the people at their work,
                And exhorts them to help one another. 
        """

        IChing_Book[Hexagram].Intro3 =   
        """
         The trigram Sun, wood, is below, and the trigram K’an, water, is above it.  Wood sucks water upward.  Just as wood as an organism imitates the action of the well, which benefits all parts of the plant, the superior man organizes human society, so that, as in a plant organism, its parts co–operate for the benefit of the whole. 
        """

        IChing_Book[Hexagram].Read1 =   
        """
         Six at the beginning means:
                One does not drink the mud of the well.
                No animals come to an old well. 
        """

        IChing_Book[Hexagram].Read2 =   
        """
         Nine in the second place means:
                At the wellhole one shoots fishes.
                The jug is broken and leaks. 
        """

        IChing_Book[Hexagram].Read3 =   
        """
         Nine in the third place means:
                The well is cleaned, but no one drinks from it.
                This is my heart’s sorrow,
                For one might draw from it.
                If the king were clear–minded,
                Good fortune might be enjoyed in common. 
        """

        IChing_Book[Hexagram].Read4 =   
        """
         Six in the fourth place means:
                The well is being lined.  No blame. 
        """

        IChing_Book[Hexagram].Read5 =   
        """
         Nine in the fifth place means:
                In the well there is a clear, cold spring
                From which one can drink. 
        """

        IChing_Book[Hexagram].Read6 =   
        """
         Six at the top means:
                One draws from the well
                Without hindrance.
                It is dependable.
                Supreme good fortune. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 5;
        IChing_Book[Hexagram].Place2ChangesToNumber = 39;
        IChing_Book[Hexagram].Place3ChangesToNumber = 29;
        IChing_Book[Hexagram].Place4ChangesToNumber = 28;
        IChing_Book[Hexagram].Place5ChangesToNumber = 46;
        IChing_Book[Hexagram].Place6ChangesToNumber = 57;
                
        Hexagram = 49;
        IChing_Book[Hexagram].EngTitle = "Revolution (Molting) "

        IChing_Book[Hexagram].ChiTitle = "Ko "

        IChing_Book[Hexagram].ChiSymbol = "革 "

        IChing_Book[Hexagram].AltTitles = "Transformation, Skinning, The Bridle, The Symbol of Change, Molting, Leather, Skin, Molt, Cut Off, Changing, Radical Change, Overthrowing "

        IChing_Book[Hexagram].Hex = "䷰ "

        IChing_Book[Hexagram].Code = [ 1, 0, 1, 1, 1, 0 ];
        IChing_Book[Hexagram].Above =
                    
        """
         TUI  /  THE JOYOUS, LAKE 
        """

        IChing_Book[Hexagram].Below =
                    
        """
         LI  /  THE CLINGING, FIRE 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☱ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☲ 
        """

        IChing_Book[Hexagram].Intro1 =   
        """
         The Chinese character for this hexagram means in its original sense an animal’s pelt, which is changed in the course of the year by molting.  From this the word is carried over to apply to the “moltings” in political life, the great revolutions connected with changes of governments.
                
                The two trigrams making up the hexagram are the same two that appear in K’uei, OPPOSITION (38), that is, the two younger daughters, Li and Tui.  But while there the elder of the two daughters is above, and what results is essentially only an opposition of tendencies, here the younger daughter is above.  The influences are in actual conflict, and the forces combat each other like fire and water (lake), each trying to destroy the other.  Hence the idea of revolution. 
        """

        IChing_Book[Hexagram].TheJudgment =   
        """
         REVOLUTION.  On your own day
                You are believed.
                Supreme success,
                Furthering through perseverance.
                Remorse disappears. 
        """

        IChing_Book[Hexagram].Intro2 =   
        """
         Political revolutions are extremely grave matters.  They should be undertaken only under stress of direst necessity, when there is no other way out.  Not everyone is called to this task, but only the man who has the confidence of the people, and even he only when the time is ripe.  He must then proceed in the right way, so that he gladdens the people and, by enlightening them, prevents excesses.  Furthermore, he must be quite free of selfish aims and must really relieve the need of the people.  Only then does he have nothing to regret.
                
                Times change, and with them their demands.  Thus the seasons change in the course of the year.  In the world cycle also there are spring and autumn in the life of peoples and nations, and these call for social transformations. 
        """

        IChing_Book[Hexagram].TheImage =   
        """
         Fire in the lake: the image of REVOLUTION.
                Thus the superior man
                Sets the calendar in order
                And makes the seasons clear. 
        """

        IChing_Book[Hexagram].Intro3 =   
        """
         Fire below and the lake above combat and destroy each other.  So too in the course of the year a combat takes place between the forces of light and the forces of darkness, eventuating in the revolution of the seasons.  Man masters these changes in nature by noting their regularity and marking off the passage of time accordingly.  In this way order and clarity appear in the apparently chaotic changes of the seasons, and man is able to adjust himself in advance to the demands of the different times. 
        """

        IChing_Book[Hexagram].Read1 =   
        """
         Nine at the beginning means:
                Wrapped in the hide of a yellow cow. 
        """

        IChing_Book[Hexagram].Read2 =   
        """
         Six in the second place means:
                When one’s own day comes, one may create revolution.
                Starting brings good fortune.  No blame. 
        """

        IChing_Book[Hexagram].Read3 =   
        """
         Nine in the third place means:
                Starting brings misfortune.
                Perseverance brings danger.
                When talk of revolution has gone the rounds three times,
                One may commit himself,
                And men will believe him. 
        """

        IChing_Book[Hexagram].Read4 =   
        """
         Nine in the fourth place means:
                Remorse disappears.  Men believe him.
                Changing the form of government brings good fortune. 
        """

        IChing_Book[Hexagram].Read5 =   
        """
         Nine in the fifth place means:
                The great man changes like a tiger.
                Even before he questions the oracle
                He is believed. 
        """

        IChing_Book[Hexagram].Read6 =   
        """
         Six at the top means:
                The superior man changes like a panther.
                The inferior man molts in the face.
                Starting brings misfortune.
                To remain persevering brings good fortune. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 31;
        IChing_Book[Hexagram].Place2ChangesToNumber = 43;
        IChing_Book[Hexagram].Place3ChangesToNumber = 17;
        IChing_Book[Hexagram].Place4ChangesToNumber = 63;
        IChing_Book[Hexagram].Place5ChangesToNumber = 55;
        IChing_Book[Hexagram].Place6ChangesToNumber = 13;
                
        Hexagram = 50;
        IChing_Book[Hexagram].EngTitle = "The Cauldron "

        IChing_Book[Hexagram].ChiTitle = "Ting "

        IChing_Book[Hexagram].ChiSymbol = "鼎 "

        IChing_Book[Hexagram].AltTitles = "The Vessel, Rejuvenation, Cosmic Order, The Alchemical Vessel "

        IChing_Book[Hexagram].Hex = "䷱ "

        IChing_Book[Hexagram].Code = [ 0, 1, 1, 1, 0, 1 ];
        IChing_Book[Hexagram].Above =
                    
        """
         LI  /  THE CLINGING, FIRE 
        """

        IChing_Book[Hexagram].Below =
                    
        """
         SUN  /  THE GENTLE, WIND, WOOD 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☲ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☴ 
        """

        IChing_Book[Hexagram].Intro1 =   
        """
         The six lines construct the image of Ting, THE CALDRON; at the bottom are the legs, over them the belly, then come the ears (handles), and at the top the carrying rings.  At the same time, the image suggests the idea of nourishment.  The ting, cast of bronze, was the vessel that held the cooked viands in the temple of the ancestors and at banquets.  The heads of the family served the food from the ting into the bowls of the guests.
                
                THE WELL (48) likewise has the secondary meaning of giving nourishment, but rather more in relation to the people.  The ting, as a utensil pertaining to a refined civilization, suggests the fostering and nourishing of able men, which redounded to the benefit of the state.
                
                This hexagram and THE WELL are the only two in the Book of Changes that represent concrete, man–made objects.  Yet here too the thought has its abstract connotation.
                
                Sun, below, is wood and wind; Li, above, is flame.  Thus together they stand for the flame kindled by wood and wind, which likewise suggests the idea of preparing food. 
        """

        IChing_Book[Hexagram].TheJudgment =   
        """
         THE CALDRON.  Supreme good fortune.
                Success. 
        """

        IChing_Book[Hexagram].Intro2 =   
        """
         While THE WELL relates to the social foundation of our life, and this foundation is likened to the water that serves to nourish growing wood, the present hexagram refers to the cultural superstructure of society.  Here it is the wood that serves as nourishment for the flame, the spirit.  All that is visible must grow beyond itself, extend into the realm of the invisible.  Thereby it receives its true consecration and clarity and takes firm root in the cosmic order.
                
                Here we see civilization as it reaches its culmination in religion.  The ting serves in offering sacrifice to God.  The highest earthly values must be sacrificed to the divine.  But the truly divine does not manifest itself apart from man.  The supreme revelation of God appears in prophets and holy men.  To venerate them is true veneration of God.  The will of God, as revealed through them, should be accepted in humility; this brings inner enlightenment and true understanding of the world, and this leads to great good fortune and success. 
        """

        IChing_Book[Hexagram].TheImage =   
        """
         Fire over wood:
                The image of THE CALDRON.
                Thus the superior man consolidates his fate
                By making his position correct. 
        """

        IChing_Book[Hexagram].Intro3 =   
        """
         The fate of fire depends on wood; as long as there is wood below, the fire burns above.  It is the same in human life; there is in man likewise a fate that lends power to his life.  And if he succeeds in assigning the right place to life and to fate, thus bringing the two into harmony, he puts his fate on a firm footing.  These words contain hints about fostering of life as handed on by oral tradition in the secret teachings of Chinese yoga. 
        """

        IChing_Book[Hexagram].Read1 =   
        """
         Six at the beginning means:
                A ting with legs upturned.
                Furthers removal of stagnating stuff.
                One takes a concubine for the sake of her son.
                No blame. 
        """

        IChing_Book[Hexagram].Read2 =   
        """
         Nine in the second place means:
                There is food in the ting.
                My comrades are envious,
                But they cannot harm me.
                Good fortune. 
        """

        IChing_Book[Hexagram].Read3 =   
        """
         Nine in the third place means:
                The handle of the ting is altered.
                One is impeded in his way of life.
                The fat of the pheasant is not eaten.
                Once rain falls, remorse is spent.
                Good fortune comes in the end. 
        """

        IChing_Book[Hexagram].Read4 =   
        """
         Nine in the fourth place means:
                The legs of the ting are broken.
                The prince’s meal is spilled
                And his person is soiled.
                Misfortune. 
        """

        IChing_Book[Hexagram].Read5 =   
        """
         Six in the fifth place means:
                The ting has yellow handles, golden carrying rings.
                Perseverance furthers.
                 
        """

        IChing_Book[Hexagram].Read6 =   
        """
         Nine at the top means:
                The ting has rings of jade.
                Great good fortune.
                Nothing that would not act to further. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 14;
        IChing_Book[Hexagram].Place2ChangesToNumber = 56;
        IChing_Book[Hexagram].Place3ChangesToNumber = 64;
        IChing_Book[Hexagram].Place4ChangesToNumber = 18;
        IChing_Book[Hexagram].Place5ChangesToNumber = 44;
        IChing_Book[Hexagram].Place6ChangesToNumber = 32;
                
        Hexagram = 51;
        IChing_Book[Hexagram].EngTitle = "The Arousing (Shock, Thunder) "

        IChing_Book[Hexagram].ChiTitle = "Chên "

        IChing_Book[Hexagram].ChiSymbol = "震 "

        IChing_Book[Hexagram].AltTitles = "The Symbol of Startling Movement, Shake, The Beginning of Movement, Shocking, The Thunderclap, Action, Motion, Sudden Change, Surprise! "

        IChing_Book[Hexagram].Hex = "䷲ "

        IChing_Book[Hexagram].Code = [ 1, 0, 0, 1, 0, 0 ];
        IChing_Book[Hexagram].Above =
                    
        """
         CHÊN  /  THE AROUSING, THUNDER 
        """

        IChing_Book[Hexagram].Below =
                    
        """
         CHÊN  /  THE AROUSING, THUNDER 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☳ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☳ 
        """

        IChing_Book[Hexagram].Intro1 =   
        """
         The hexagram Chên represents the eldest son, who seizes rule with energy and power.  A yang line develops below two yin lines and presses upward forcibly.  This movement is so violent that it arouses terror.  It is symbolized by thunder, which bursts forth from the earth and by its shock causes fear and trembling. 
        """

        IChing_Book[Hexagram].TheJudgment =   
        """
         SHOCK brings success.
                Shock comes—oh, oh!
                Laughing words—ha, ha!
                The shock terrifies for a hundred miles,
                And he does not let fall the sacrificial spoon and chalice. 
        """

        IChing_Book[Hexagram].Intro2 =   
        """
         The shock that comes from the manifestation of God within the depths of the earth makes man afraid, but this fear of God is good, for joy and merriment can follow upon it.
                
                When a man has learned within his heart what fear and trembling mean, he is safeguarded against any terror produced by outside influences.  Let the thunder roll and spread terror a hundred miles around: he remains so composed and reverent in spirit that the sacrificial rite is not interrupted.  This is the spirit that must animate leaders and rulers of men—a profound inner seriousness from which all terrors glance off harmlessly. 
        """

        IChing_Book[Hexagram].TheImage =   
        """
         Thunder repeated: the image of SHOCK.
                Thus in fear and trembling
                The superior man sets his life in order
                And examines himself. 
        """

        IChing_Book[Hexagram].Intro3 =   
        """
         The shock of continuing thunder brings fear and trembling.  The superior man is always filled with reverence at the manifestation of God; he sets his life in order and searches his heart, lest it harbor any secret opposition to the will of God.  Thus reverence is the foundation of true culture. 
        """

        IChing_Book[Hexagram].Read1 =   
        """
         Nine at the beginning means:
                Shock comes—oh, oh!
                Then follow laughing words—ha, ha!
                Good fortune. 
        """

        IChing_Book[Hexagram].Read2 =   
        """
         Six in the second place means:
                Shock comes bringing danger.
                A hundred thousand times
                You lose your treasures
                And must climb the nine hills.
                Do not go in pursuit of them.
                After seven days you will get them back again. 
        """

        IChing_Book[Hexagram].Read3 =   
        """
         Six in the third place means:
                Shock comes and makes one distraught.
                If shock spurs to action
                One remains free of misfortune. 
        """

        IChing_Book[Hexagram].Read4 =   
        """
         Nine in the fourth place means:
                Shock is mired. 
        """

        IChing_Book[Hexagram].Read5 =   
        """
         Six in the fifth place means:
                Shock goes hither and thither.
                Danger.
                However, nothing at all is lost.
                Yet there are things to be done. 
        """

        IChing_Book[Hexagram].Read6 =   
        """
         Six at the top means:
                Shock brings ruin and terrified gazing around.
                Going ahead brings misfortune.
                If it has not yet touched one’s own body
                But has reached one’s neighbor first,
                There is no blame.
                One’s comrades have something to talk about. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
         ○ 
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 16;
        IChing_Book[Hexagram].Place2ChangesToNumber = 54;
        IChing_Book[Hexagram].Place3ChangesToNumber = 55;
        IChing_Book[Hexagram].Place4ChangesToNumber = 24;
        IChing_Book[Hexagram].Place5ChangesToNumber = 17;
        IChing_Book[Hexagram].Place6ChangesToNumber = 21;
                
        Hexagram = 52;
        IChing_Book[Hexagram].EngTitle = "Keeping Still, Mountain "

        IChing_Book[Hexagram].ChiTitle = "Kên "

        IChing_Book[Hexagram].ChiSymbol = "艮 "

        IChing_Book[Hexagram].AltTitles = "The Symbol of Checking and Stopping, Desisting, Stilling, Stillness, Stoppage, Bound, Reposing, Resting, Meditation, Non-action, Stopping, Arresting Movement "

        IChing_Book[Hexagram].Hex = "䷳ "

        IChing_Book[Hexagram].Code = [ 0, 0, 1, 0, 0, 1 ];
        IChing_Book[Hexagram].Above =
                    
        """
         KÊN  /  KEEPING STILL, MOUNTAIN 
        """

        IChing_Book[Hexagram].Below =
                    
        """
         KÊN  /  KEEPING STILL, MOUNTAIN 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☶ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☶ 
        """

        IChing_Book[Hexagram].Intro1 =   
        """
         The image of this hexagram is the mountain, the youngest son of heaven and earth.  The male principle is at the top because it strives upward by nature; the female principle is below, since the direction of its movement is downward.  Thus there is rest because the movement has come to its normal end.
                
                In its application to man, the hexagram turns upon the problem of achieving a quiet heart.  It is very difficult to bring quiet to the heart.  While Buddhism strives for rest through an ebbing away of all movement in nirvana, the Book of Changes holds that rest is merely a state of polarity that always posits movement as its complement.  Possibly the words of the text embody directions for the practice of yoga. 
        """

        IChing_Book[Hexagram].TheJudgment =   
        """
         KEEPING STILL.  Keeping his back still
                So that he no longer feels his body.
                He goes into his courtyard
                And does not see his people.
                No blame. 
        """

        IChing_Book[Hexagram].Intro2 =   
        """
         True quiet means keeping still when the time has come to keep still, and going forward when the time has come to go forward.  In this way rest and movement are in agreement with the demands of the time, and thus there is light in life.
                
                The hexagram signifies the end and the beginning of all movement.  The back is named because in the back are located all the nerve fibers that mediate movement.  If the movement of these spinal nerves is brought to a standstill, the ego, with its restlessness, disappears as it were.  When a man has thus become calm, he may turn to the outside world.  He no longer sees in it the struggle and tumult of individual beings, and therefore he has that true peace of mind which is needed for understanding the great laws of the universe and for acting in harmony with them.  Whoever acts from these deep levels makes no mistakes. 
        """

        IChing_Book[Hexagram].TheImage =   
        """
         Mountains standing close together:
                The image of KEEPING STILL.
                Thus the superior man
                Does not permit his thoughts
                To go beyond his situation. 
        """

        IChing_Book[Hexagram].Intro3 =   
        """
         The heart thinks constantly.  This cannot be changed, but the movements of the heart—that is, a man’s thoughts—should restrict themselves to the immediate situation.  All thinking that goes beyond this only makes the heart sore. 
        """

        IChing_Book[Hexagram].Read1 =   
        """
         Six at the beginning means:
                Keeping his toes still.
                No blame.
                Continued perseverance furthers. 
        """

        IChing_Book[Hexagram].Read2 =   
        """
         Six in the second place means:
                Keeping his calves still.
                He cannot rescue him whom he follows.
                His heart is not glad. 
        """

        IChing_Book[Hexagram].Read3 =   
        """
         Nine in the third place means:
                Keeping his hips still.
                Making his sacrum stiff.
                Dangerous.  The heart suffocates. 
        """

        IChing_Book[Hexagram].Read4 =   
        """
         Six in the fourth place means:
                Keeping his trunk still.
                No blame. 
        """

        IChing_Book[Hexagram].Read5 =   
        """
         Six in the fifth place means:
                Keeping his jaws still.
                The words have order.
                Remorse disappears. 
        """

        IChing_Book[Hexagram].Read6 =   
        """
         Nine at the top means:
                Noblehearted keeping still.
                Good fortune. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 22;
        IChing_Book[Hexagram].Place2ChangesToNumber = 18;
        IChing_Book[Hexagram].Place3ChangesToNumber = 23;
        IChing_Book[Hexagram].Place4ChangesToNumber = 56;
        IChing_Book[Hexagram].Place5ChangesToNumber = 53;
        IChing_Book[Hexagram].Place6ChangesToNumber = 15;
                
        Hexagram = 53;
        IChing_Book[Hexagram].EngTitle = "Development (Gradual Progress) "

        IChing_Book[Hexagram].ChiTitle = "Chien "

        IChing_Book[Hexagram].ChiSymbol = "漸 "

        IChing_Book[Hexagram].AltTitles = "The Symbol of Progressive Advance, Gradual Development, Infiltrating, Advancing, Growth, Developing, Gradualness, Dialectical Progression, Step by Step "

        IChing_Book[Hexagram].Hex = "䷴ "

        IChing_Book[Hexagram].Code = [ 0, 0, 1, 0, 1, 1 ];
        IChing_Book[Hexagram].Above =
                    
        """
         SUN  /  THE GENTLE, WIND, WOOD  
        """

        IChing_Book[Hexagram].Below =
                    
        """
         KÊN  /  KEEPING STILL, MOUNTAIN 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☴ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☶ 
        """

        IChing_Book[Hexagram].Intro1 =   
        """
         This hexagram is made up of Sun (wood, penetration) above, i.e., without, and Kên (mountain, stillness) below, i.e., within.  A tree on a mountain develops slowly according to the law of its being and consequently stands firmly rooted.  This gives the idea of a development that proceeds gradually, step by step.  The attributes of the trigrams also point to this: within is tranquillity, which guards against precipitate actions, and without is penetration, which makes development and progress possible. 
        """

        IChing_Book[Hexagram].TheJudgment =   
        """
         DEVELOPMENT.  The maiden
                Is given in marriage.
                Good fortune.
                Perseverance furthers. 
        """

        IChing_Book[Hexagram].Intro2 =   
        """
         The development of events that leads to a girl’s following a man to his home proceeds slowly.  The various formalities must be disposed of before the marriage takes place.  This principle of gradual development can be applied to other situations as well; it is always applicable where it is a matter of correct relationships of co–operation, as for instance in the appointment of an official.  The development must be allowed to take its proper course.  Hasty action would not be wise.  This is also true, finally, of any effort to exert influence on others, for here too the essential factor is a correct way of development through cultivation of one’s own personality.  No influence such as that exerted by agitators has a lasting effect.
                
                Within the personality too, development must follow the same course if lasting results are to be achieved.  Gentleness that is adaptable, but at the same time penetrating, is the outer form that should proceed from inner calm.
                
                The very gradualness of the development makes it necessary to have perseverance, for perseverance alone prevents slow progress from dwindling to nothing. 
        """

        IChing_Book[Hexagram].TheImage =   
        """
         On the mountain, a tree:
                The image of DEVELOPMENT.
                Thus the superior man abides in dignity and virtue,
                In order to improve the mores. 
        """

        IChing_Book[Hexagram].Intro3 =   
        """
         The tree on the mountain is visible from afar, and its development influences the landscape of the entire region.  It does not shoot up like a swamp plant; its growth proceeds gradually.  Thus also the work of influencing people can be only gradual.  No sudden influence or awakening is of lasting effect.  Progress must be quite gradual, and in order to obtain such progress in public opinion and in the mores of the people, it is necessary for the personality to acquire influence and weight.  This comes about through careful and constant work on one’s own moral development. 
        """

        IChing_Book[Hexagram].Read1 =   
        """
         Six at the beginning means:
                The wild goose gradually draws near the shore.
                The young son is in danger.
                There is talk.  No blame. 
        """

        IChing_Book[Hexagram].Read2 =   
        """
         Six in the second place means:
                The wild goose gradually draws near the cliff.
                Eating and drinking in peace and concord.
                Good fortune. 
        """

        IChing_Book[Hexagram].Read3 =   
        """
         Nine in the third place means:
                The wild goose gradually draws near the plateau.
                The man goes forth and does not return.
                The woman carries a child but does not bring it forth.
                Misfortune.
                It furthers one to fight off robbers. 
        """

        IChing_Book[Hexagram].Read4 =   
        """
         Six in the fourth place means:
                The wild goose goes gradually draws near the tree.
                Perhaps it will find a flat branch.  No blame. 
        """

        IChing_Book[Hexagram].Read5 =   
        """
         Nine in the fifth place means:
                The wild goose gradually draws near the summit.
                For three years the woman has no child.
                In the end nothing can hinder her.
                Good fortune. 
        """

        IChing_Book[Hexagram].Read6 =   
        """
         Nine at the top means:
                The wild goose gradually draws near the cloud heights.
                Its feathers can be used for the sacred dance.
                Good fortune. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 37;
        IChing_Book[Hexagram].Place2ChangesToNumber = 57;
        IChing_Book[Hexagram].Place3ChangesToNumber = 20;
        IChing_Book[Hexagram].Place4ChangesToNumber = 33;
        IChing_Book[Hexagram].Place5ChangesToNumber = 52;
        IChing_Book[Hexagram].Place6ChangesToNumber = 39;
                
        Hexagram = 54;
        IChing_Book[Hexagram].EngTitle = "The Marrying Maiden "

        IChing_Book[Hexagram].ChiTitle = "Kuei Mei "

        IChing_Book[Hexagram].ChiSymbol = "歸妹 "

        IChing_Book[Hexagram].AltTitles = "The Symbol of the Marriage of the Younger Sister, Marriageable Maiden, The Marrying Girl, Subordinate, The Second Wife, Converting Maidenhood, Returning maiden, Making a young girl marry, Marrying a young girl, Marrying a Maiden, Unilateral Action, Impropriety, Improper Advances "

        IChing_Book[Hexagram].Hex = "䷵ "

        IChing_Book[Hexagram].Code = [ 1, 1, 0, 1, 0, 0 ];
        IChing_Book[Hexagram].Above =
                    
        """
         CHÊN  /  THE AROUSING, THUNDER  
        """

        IChing_Book[Hexagram].Below =
                    
        """
         TUI  /  THE JOYOUS, LAKE 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☳ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☱ 
        """

        IChing_Book[Hexagram].Intro1 =   
        """
         Above we have Chên, the eldest son, and below, Tui, the youngest daughter.  The man leads and the girl follows him in gladness.  The picture is that of the entrance of the girl into her husband’s house.  In all, there are four hexagrams depicting the relationship between husband and wife.  Hsien, INFLUENCE, (31), describes the attraction that a young couple have for each other; Hêng, DURATION (32), portrays the permanent relationships of marriage; Chien, DEVELOPMENT (53), reflects the protracted, ceremonious procedures attending the arrangement of a proper marriage; finally, THE MARRYING MAIDEN, shows a young girl under the guidance of an older man who marries her. 
        """

        IChing_Book[Hexagram].TheJudgment =   
        """
         THE MARRYING MAIDEN.
                Undertakings bring misfortune.
                Nothing that would further. 
        """

        IChing_Book[Hexagram].Intro2 =   
        """
         A girl who is taken into the family, but not as the chief wife, must behave with special caution and reserve.  She must not take it upon herself to supplant the mistress of the house, for that would mean disorder and lead to untenable relationships.
                
                The same is true of all voluntary relationships between human beings.  While legally regulated relationships evince a fixed connection between duties and rights, relationships based on personal inclination depend in the long run entirely on tactful reserve.
                
                Affection as the essential principle of relatedness is of the greatest importance in all relationships in the world.  For the union of heaven and earth is the origin of the whole of nature.  Among human beings likewise, spontaneous affection is the all–inclusive principle of union. 
        """

        IChing_Book[Hexagram].TheImage =   
        """
         Thunder over the lake:
                The image of THE MARRYING MAIDEN.
                Thus the superior man
                Understands the transitory
                In the light of the eternity of the end. 
        """

        IChing_Book[Hexagram].Intro3 =   
        """
         Thunder stirs the water of the lake, which follows it in shimmering waves.  This symbolizes the girl who follows the man of her choice.  But every relationship between individuals bears within it the danger that wrong turns may be taken, leading to endless misunderstandings and disagreements.  Therefore it is necessary constantly to remain mindful of the end.  If we permit ourselves to drift along, we come together and are parted again as the day may determine.  If on the other hand a man fixes his mind on an end that endures, he will succeed in avoiding the reefs that confront the closer relationships of people. 
        """

        IChing_Book[Hexagram].Read1 =   
        """
         Nine at the beginning means:
                The marrying maiden as a concubine.
                A lame man who is able to tread.
                Undertakings bring good fortune. 
        """

        IChing_Book[Hexagram].Read2 =   
        """
         Nine in the second place means:
                A one–eyed man who is able to see.
                The perseverance of a solitary man furthers. 
        """

        IChing_Book[Hexagram].Read3 =   
        """
         Six in the third place means:
                The marrying maiden as a slave.
                She marries as a concubine. 
        """

        IChing_Book[Hexagram].Read4 =   
        """
         Nine in the fourth place means:
                The marrying maiden draws out the allotted time.
                A late marriage comes in due course. 
        """

        IChing_Book[Hexagram].Read5 =   
        """
         Six in the fifth place means:
                The sovereign I gave his daughter in marriage.
                The embroidered garments of the princess
                Were not as gorgeous
                As those of the serving maid.
                The moon that is nearly full
                Brings good fortune. 
        """

        IChing_Book[Hexagram].Read6 =   
        """
         Six at the top means:
                The woman holds the basket, but there are no fruits in it.
                The man stabs the sheep, but no blood flows.
                Nothing that acts to further. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
         ◻ 
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
         ◻ 
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 40;
        IChing_Book[Hexagram].Place2ChangesToNumber = 51;
        IChing_Book[Hexagram].Place3ChangesToNumber = 34;
        IChing_Book[Hexagram].Place4ChangesToNumber = 19;
        IChing_Book[Hexagram].Place5ChangesToNumber = 58;
        IChing_Book[Hexagram].Place6ChangesToNumber = 38;
                
        Hexagram = 55;
        IChing_Book[Hexagram].EngTitle = "Abundance (Fullness) "

        IChing_Book[Hexagram].ChiTitle = "Fêng "

        IChing_Book[Hexagram].ChiSymbol = "豐 "

        IChing_Book[Hexagram].AltTitles = "The Symbol of Prosperity, Greatness, Abounding, Richness, Prolific, Fruitful, Luxuriant, Zenith, Affluence, Correct Action, Lucid Behavior "

        IChing_Book[Hexagram].Hex = "䷶ "

        IChing_Book[Hexagram].Code = [ 1, 0, 1, 1, 0, 0 ];
        IChing_Book[Hexagram].Above =
                    
        """
         CHÊN  /  THE AROUSING, THUNDER 
        """

        IChing_Book[Hexagram].Below =
                    
        """
         LI  /  THE CLINGING, FIRE 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☳ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☲ 
        """

        IChing_Book[Hexagram].Intro1 =   
        """
         Chên is movement; Li is flame, whose attribute is clarity.  Clarity within, movement without—this produces greatness and abundance.  The hexagram pictures a period of advanced civilization.  However, the fact that development has reached a peak suggests that this extraordinary condition of abundance cannot be maintained permanently. 
        """

        IChing_Book[Hexagram].TheJudgment =   
        """
         ABUNDANCE has success.
                The king attains abundance.
                Be not sad.
                Be like the sun at midday. 
        """

        IChing_Book[Hexagram].Intro2 =   
        """
         It is not given to every mortal to bring about a time of outstanding greatness and abundance.  Only a born ruler of men is able to do it, because his will is directed to what is great.  Such a time of abundance is usually brief.  Therefore a sage might well feel sad in view of the decline that must follow.  But such sadness does not befit him.  Only a man who is inwardly free of sorrow and care can lead in a time of abundance.  He must be like the sun at midday, illuminating and gladdening everything under heaven. 
        """

        IChing_Book[Hexagram].TheImage =   
        """
         Both thunder and lightning come:
                The image of ABUNDANCE.
                Thus the superior man decides lawsuits
                And carries out punishments. 
        """

        IChing_Book[Hexagram].Intro3 =   
        """
         This hexagram has a certain connection with Shih Ho, BITING THROUGH (21), in which thunder and lightning similarly appear together, but in the reverse order.  In BITING THROUGH, laws are laid down; here they are applied and enforced.  Clarity [Li] within makes it possible to investigate the facts exactly, and shock [Chên] without ensures a strict and precise carrying out of punishments. 
        """

        IChing_Book[Hexagram].Read1 =   
        """
         Nine at the beginning means:
                When a man meets his destined ruler,
                They can be together ten days,
                And it is not a mistake.
                Going meets with recognition. 
        """

        IChing_Book[Hexagram].Read2 =   
        """
         Six in the second place means:
                The curtain is of such fullness
                That the polestars can be seen at noon.
                Through going one meets with mistrust and hate.
                If one rouses him through truth,
                Good fortune comes. 
        """

        IChing_Book[Hexagram].Read3 =   
        """
         Nine in the third place means:
                The underbrush is of such abundance
                That the small stars can be seen at noon.
                He breaks his right arm.  No blame. 
        """

        IChing_Book[Hexagram].Read4 =   
        """
         Nine in the fourth place means:
                The curtain is of such fullness
                That the polestars can be seen at noon.
                He meets his ruler, who is of like kind.
                Good fortune. 
        """

        IChing_Book[Hexagram].Read5 =   
        """
         Six in the fifth place means:
                Lines are coming,
                Blessing and fame draw near.
                Good fortune. 
        """

        IChing_Book[Hexagram].Read6 =   
        """
         Six at the top means:
                His house is in a state of abundance.
                He screens off his family.
                He peers through the gate
                And no longer perceives anyone.
                For three years he sees nothing.
                Misfortune. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 62;
        IChing_Book[Hexagram].Place2ChangesToNumber = 34;
        IChing_Book[Hexagram].Place3ChangesToNumber = 51;
        IChing_Book[Hexagram].Place4ChangesToNumber = 36;
        IChing_Book[Hexagram].Place5ChangesToNumber = 49;
        IChing_Book[Hexagram].Place6ChangesToNumber = 30;
                
        Hexagram = 56;
        IChing_Book[Hexagram].EngTitle = "The Wanderer "

        IChing_Book[Hexagram].ChiTitle = "Lü "

        IChing_Book[Hexagram].ChiSymbol = "旅 "

        IChing_Book[Hexagram].AltTitles = "The Symbol of the Traveler, The Exile, Sojourning, The Newcomer, To Lodge, To Travel, Traveling, The Stranger, Strangers, The Traveling Stranger, The Outsider, The Alien, The Gnostic, The Tarot Fool, Wandering, Homeless, Uncommitted, On Your Own "

        IChing_Book[Hexagram].Hex = "䷷ "

        IChing_Book[Hexagram].Code = [ 0, 0, 1, 1, 0, 1 ];
        IChing_Book[Hexagram].Above =
                    
        """
         LI  /  THE CLINGING, FIRE 
        """

        IChing_Book[Hexagram].Below =
                    
        """
         KÊN  /  KEEPING STILL, MOUNTAIN 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☲ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☶ 
        """

        IChing_Book[Hexagram].Intro1 =   
        """
         The mountain, Kên, stands still; above it fire, Li, flames up and does not tarry.  Therefore the two trigrams do not stay together.  Strange lands and separation are the wanderer’s lot. 
        """

        IChing_Book[Hexagram].TheJudgment =   
        """
         The Wanderer.  Success through smallness.
                Perseverance brings good fortune
                To the Wanderer. 
        """

        IChing_Book[Hexagram].Intro2 =   
        """
         When a man is a wanderer and stranger, he should not be gruff nor overbearing.  He has no large circle of acquaintances, therefore he should not give himself airs.  He must be cautious and reserved; in this way he protects himself from evil.  If he is obliging toward others, he wins success.
                
                A wanderer has no fixed abode; his home is the road.  Therefore he must take care to remain upright and steadfast, so that he sojourns only in the proper places, associating only with good people.  Then he has good fortune and can go his way unmolested. 
        """

        IChing_Book[Hexagram].TheImage =   
        """
         Fire on the mountain:
                The image of THE WANDERER.
                Thus the superior man
                Is clear–minded and cautious
                In imposing penalties,
                And protracts no lawsuits. 
        """

        IChing_Book[Hexagram].Intro3 =   
        """
         When grass on a mountain takes fire, there is bright light.  However, the fire does not linger in one place, but travels on to new fuel.  It is a phenomenon of short duration.  This is what penalties and lawsuits should be like.  They should be a quickly passing matter, and must not be dragged out indefinitely.  Prisons ought to be places where people are lodged only temporarily, as guests are.  They must not become dwelling places. 
        """

        IChing_Book[Hexagram].Read1 =   
        """
         Six at the beginning means:
                If the wanderer busies himself with trivial things,
                He draws down misfortune upon himself. 
        """

        IChing_Book[Hexagram].Read2 =   
        """
         Six in the second place means:
                The wanderer comes to an inn.
                He has his property with him.
                He wins the steadfastness of a young servant. 
        """

        IChing_Book[Hexagram].Read3 =   
        """
         Nine in the third place means:
                The wanderer’s inn burns down.
                He loses the steadfastness of his young servant.
                Danger. 
        """

        IChing_Book[Hexagram].Read4 =   
        """
         Nine in the fourth place means:
                The wanderer rests in a shelter.
                He obtains his property and an ax.
                My heart is not glad. 
        """

        IChing_Book[Hexagram].Read5 =   
        """
         Six in the fifth place means:
                He shoots a pheasant.
                It drops with the first arrow.
                In the end this brings both praise and office. 
        """

        IChing_Book[Hexagram].Read6 =   
        """
         Nine at the top means:
                The bird’s nest burns up.
                The wanderer laughs at first,
                Then must needs lament and weep.
                Through carelessness he loses his cow.
                Misfortune.
                 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 30;
        IChing_Book[Hexagram].Place2ChangesToNumber = 50;
        IChing_Book[Hexagram].Place3ChangesToNumber = 35;
        IChing_Book[Hexagram].Place4ChangesToNumber = 52;
        IChing_Book[Hexagram].Place5ChangesToNumber = 33;
        IChing_Book[Hexagram].Place6ChangesToNumber = 62;
                
        Hexagram = 57;
        IChing_Book[Hexagram].EngTitle = "The Gentle (The Penetrating, Wind) "

        IChing_Book[Hexagram].ChiTitle = "Sun "

        IChing_Book[Hexagram].ChiSymbol = "巽 "

        IChing_Book[Hexagram].AltTitles = "The Symbol of Bending to Enter, Willing Submission, Gentle Penetration, Ground, Calculations, Complaisance, Penetrating Influence, The Penetration of the Wind, Humility, Devoted Service, Submission "

        IChing_Book[Hexagram].Hex = "䷸ "

        IChing_Book[Hexagram].Code = [ 0, 1, 1, 0, 1, 1 ];
        IChing_Book[Hexagram].Above =
                    
        """
         THE GENTLE, WIND, WOOD 
        """

        IChing_Book[Hexagram].Below =
                    
        """
         THE GENTLE, WIND, WOOD 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☴ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☴ 
        """

        IChing_Book[Hexagram].Intro1 =   
        """
         Sun is one of the eight doubled trigrams.  It is the eldest daughter and symbolizes wind or wood; it has for its attribute gentleness, which nonetheless penetrates like the wind or like growing wood with its roots.
                
                The dark principle, in itself rigid and immovable, is dissolved by the penetrating light principle, to which it subordinates itself in gentleness.  In nature, it is the wind that disperses the gathered clouds, leaving the sky clear and serene.  In human life it is penetrating clarity of judgment that thwarts all dark hidden motives.  In the life of the community it is the powerful influence of a great personality that uncovers and breaks up those intrigues which shun the light of day. 
        """

        IChing_Book[Hexagram].TheJudgment =   
        """
         THE GENTLE.  Success through what is small.
                It furthers one to have somewhere to go.
                It furthers one to see the great man. 
        """

        IChing_Book[Hexagram].Intro2 =   
        """
         Penetration produces gradual and inconspicuous effects.  It should be effected not by an act of violation but by influence that never lapses.  Results of this kind are less striking to the eye than those won by surprise attack, but they are more enduring and more complete.  If one would produce such effects, one must have a clearly defined goal, for only when the penetrating influence works always in the same direction can the object be attained.  Small strength can achieve its purpose only by subordinating itself to an eminent man who is capable of creating order. 
        """

        IChing_Book[Hexagram].TheImage =   
        """
         Winds following one upon the other:
                The image of THE GENTLY PENETRATING.
                Thus the superior man
                Spreads his commands abroad
                And carries out his undertakings. 
        """

        IChing_Book[Hexagram].Intro3 =   
        """
         The penetrating quality of the wind depends upon its ceaselessness.  This is what makes it so powerful; time is its instrument.  In the same way the ruler’s thought should penetrate the soul of the people.  This too requires a lasting influence brought about by enlightenment and command.  Only when the command has been assimilated by the people is action in accordance with it possible.  Action without preparation of the ground only frightens and repels. 
        """

        IChing_Book[Hexagram].Read1 =   
        """
         Six at the beginning means:
                In advancing and in retreating,
                The perseverance of a warrior furthers. 
        """

        IChing_Book[Hexagram].Read2 =   
        """
         Nine in the second place means:
                Penetration under the bed.
                Priests and magicians are used in great number.
                Good fortune.  No blame. 
        """

        IChing_Book[Hexagram].Read3 =   
        """
         Nine in the third place means:
                Repeated penetration.  Humiliation. 
        """

        IChing_Book[Hexagram].Read4 =   
        """
         Six in the fourth place means:
                Remorse vanishes.
                During the hunt
                Three kinds of game are caught. 
        """

        IChing_Book[Hexagram].Read5 =   
        """
         Nine in the fifth place means:
                Perseverance brings good fortune.
                Remorse vanishes.
                Nothing that does not further.
                No beginning, but an end.
                Before the change, three days.
                After the change, three days.
                Good fortune.
                * Reference:   Ku,  /  WORK ON WHAT HAS BEEN SPOILED  (18)  
        """

        IChing_Book[Hexagram].Read6 =   
        """
         Nine at the top means:
                Penetration under the bed.
                He loses his property and his ax.
                Perseverance brings misfortune. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
         ◻ 
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
         ◻ 
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 9;
        IChing_Book[Hexagram].Place2ChangesToNumber = 53;
        IChing_Book[Hexagram].Place3ChangesToNumber = 59;
        IChing_Book[Hexagram].Place4ChangesToNumber = 44;
        IChing_Book[Hexagram].Place5ChangesToNumber = 18;
        IChing_Book[Hexagram].Place6ChangesToNumber = 48;
                
        Hexagram = 58;
        IChing_Book[Hexagram].EngTitle = "The Joyous (Lake) "

        IChing_Book[Hexagram].ChiTitle = "Tui "

        IChing_Book[Hexagram].ChiSymbol = "兌 "

        IChing_Book[Hexagram].AltTitles = "Joyousness, Pleased Satisfaction, Encouraging, Delight, Open, Usurpation, Self-indulgence, Pleasure, Cheerfulness, Frivolity, Callow Optimism "

        IChing_Book[Hexagram].Hex = "䷹ "

        IChing_Book[Hexagram].Code = [ 1, 1, 0, 1, 1, 0 ];
        IChing_Book[Hexagram].Above =
                    
        """
         THE JOYOUS, LAKE 
        """

        IChing_Book[Hexagram].Below =
                    
        """
         THE JOYOUS, LAKE 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☱ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☱ 
        """

        IChing_Book[Hexagram].Intro1 =   
        """
         This hexagram, like sun, is one of the eight formed by doubling of a trigram.  The trigram Tui denotes the youngest daughter; it is symbolized by the smiling lake, and its attribute is joyousness.  Contrary to appearances, it is not the yielding quality of the top line that accounts for joy here.  The attribute of the yielding or dark principle is not joy but melancholy.  However, joy is indicated by the fact that there are two strong lines within, expressing themselves through the medium of gentleness.
                
                True joy, therefore, rests on firmness and strength within, manifesting itself outwardly as yielding and gentle. 
        """

        IChing_Book[Hexagram].TheJudgment =   
        """
         THE JOYOUS.  Success.
                Perseverance is favorable. 
        """

        IChing_Book[Hexagram].Intro2 =   
        """
         The joyous mood is infectious and therefore brings success.  But joy must be based on steadfastness if it is not to degenerate into uncontrolled mirth.  Truth and strength must dwell in the heart, while gentleness reveals itself in social intercourse.  In this way one assumes the right attitude toward God and man and achieves something.  Under certain conditions, intimidation without gentleness may achieve something momentarily, but not for all time.  When, on the other hand, the hearts of men are won by friendliness, they are led to take all hardships upon themselves willingly, and if need be will not shun death itself, so great is the power of joy over men. 
        """

        IChing_Book[Hexagram].TheImage =   
        """
         Lakes resting one on the other:
                The image of THE JOYOUS.
                Thus the superior man joins with his friends
                For discussion and practice. 
        """

        IChing_Book[Hexagram].Intro3 =   
        """
         A lake evaporates upward and thus gradually dries up; but when two lakes are joined they do not dry up so readily, for one replenishes the other.  It is the same in the field of knowledge.  Knowledge should be a refreshing and vitalizing force.  It becomes so only through stimulating intercourse with congenial friends with whom one holds discussion and practices application of the truths of life.  In this way learning becomes many–sided and takes on a cheerful lightness, whereas there is always something ponderous and one–sided about the learning of the self–taught. 
        """

        IChing_Book[Hexagram].Read1 =   
        """
         Nine at the beginning means:
                Contented joyousness.  Good fortune. 
        """

        IChing_Book[Hexagram].Read2 =   
        """
         Nine in the second place means:
                Sincere joyousness.  Good fortune.
                Remorse disappears. 
        """

        IChing_Book[Hexagram].Read3 =   
        """
         Six in the third place means:
                Coming joyousness.  Misfortune. 
        """

        IChing_Book[Hexagram].Read4 =   
        """
         Nine in the fourth place means:
                Joyousness that is weighed is not at peace.
                After ridding himself of mistakes a man has joy. 
        """

        IChing_Book[Hexagram].Read5 =   
        """
         Nine in the fifth place means:
                Sincerity toward disintegrating influences is dangerous. 
        """

        IChing_Book[Hexagram].Read6 =   
        """
         Six at the top means:
                Seductive joyousness. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
         ◻ 
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
         ◻ 
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 47;
        IChing_Book[Hexagram].Place2ChangesToNumber = 17;
        IChing_Book[Hexagram].Place3ChangesToNumber = 43;
        IChing_Book[Hexagram].Place4ChangesToNumber = 60;
        IChing_Book[Hexagram].Place5ChangesToNumber = 54;
        IChing_Book[Hexagram].Place6ChangesToNumber = 10;
                
        Hexagram = 59;
        IChing_Book[Hexagram].EngTitle = "Dispersion (Dissolution) "

        IChing_Book[Hexagram].ChiTitle = "Huan "

        IChing_Book[Hexagram].ChiSymbol = "渙 "

        IChing_Book[Hexagram].AltTitles = "Disintegration, Dispersal, Overcoming Dissension, Scattering,Dispersing, Unintegrated, Reuniting, Evaporation, Reorganization, New Deal, Re-Shuffle, Course Correction, Catharsis "

        IChing_Book[Hexagram].Hex = "䷺ "

        IChing_Book[Hexagram].Code = [ 0, 1, 0, 0, 1, 1 ];
        IChing_Book[Hexagram].Above =
                    
        """
         THE GENTLE, WIND 
        """

        IChing_Book[Hexagram].Below =
                    
        """
         THE ABYSMAL, WATER 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☴ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☵ 
        """

        IChing_Book[Hexagram].Intro1 =   
        """
         Wind blowing over water disperses it, dissolving it into foam and mist.  This suggests that when a man’s vital energy is dammed up within him (indicated as a danger by the attribute of the lower trigram), gentleness serves to break up and dissolve the blockage. 
        """

        IChing_Book[Hexagram].TheJudgment =   
        """
         DISPERSION.  Success.
                The king approaches his temple.
                It furthers one to cross the great water.
                Perseverance furthers. 
        """

        IChing_Book[Hexagram].Intro2 =   
        """
         The text of this hexagram resembles that of Ts’ui, GATHERING TOGETHER (45).  In the latter, the subject is the bringing together of elements that have been separated, as water collects in lakes upon the earth.  Here the subject is the dispersing and dissolving of divisive egotism.  DISPERSION shows the way, so to speak, that leads to gathering together.  This explains the similarity of the two texts.
                
                Religious forces are needed to overcome the egotism that divides men.  The common celebration of the great sacrificial feasts and sacred rites, which gave expression simultaneously to the interrelation and social articulation of the family and state, was the means of employed by the great rulers to unite men.  The sacred music and the splendor of the ceremonies aroused a strong tide of emotion that was shared by all hearts in unison, and that awakened a consciousness of the common origin of all creatures.  In this way disunity was overcome and rigidity dissolved.  A further means to the same end is co–operation in great general undertakings that set a high goal for the will of the people; in the common concentration on this goal, all barriers dissolve, just as, when a boat is crossing a great stream, all hands must unite in a joint task.
                
                But only a man who is himself free of all selfish ulterior considerations, and who perseveres in justice and steadfastness, is capable of so dissolving the hardness of egotism. 
        """

        IChing_Book[Hexagram].TheImage =   
        """
         The wind drives over the water:
                The image of DISPERSION.
                Thus the kings of old sacrificed to the Lord
                And built temples. 
        """

        IChing_Book[Hexagram].Intro3 =   
        """
         In the autumn and winter, water begins to freeze into ice.  When the warm breezes of spring come, the rigidity is dissolved, and the elements that have been dispersed in ice floes are reunited.  It is the same with the minds of the people.  Through hardness and selfishness the heart grows rigid, and this rigidity leads to separation from all others.  Egotism and cupidity isolate men.  Therefore the hearts of men must be seized by a devout emotion.  They must be shaken by a religious awe in face of eternity—stirred with an intuition of the One Creator of all living beings, and united through the strong feeling of fellowship experienced in the ritual of divine worship. 
        """

        IChing_Book[Hexagram].Read1 =   
        """
         Six at the beginning means:
                He brings help with the strength of a horse.
                Good fortune. 
        """

        IChing_Book[Hexagram].Read2 =   
        """
         Nine in the second place means:
                At the dissolution
                He hurries to that which supports him.
                Remorse disappears. 
        """

        IChing_Book[Hexagram].Read3 =   
        """
         Six in the third place means:
                He dissolves his self.  No remorse. 
        """

        IChing_Book[Hexagram].Read4 =   
        """
         Six in the fourth place means:
                He dissolves his bond with his group.
                Supreme good fortune.
                Dispersion leads in turn to accumulation.
                This is something that ordinary men do not think of. 
        """

        IChing_Book[Hexagram].Read5 =   
        """
         Nine in the fifth place means:
                His loud cries are as dissolving as sweat.
                Dissolution! A king abides without blame. 
        """

        IChing_Book[Hexagram].Read6 =   
        """
         Nine at the top means:
                He dissolves his blood.
                Departing, keeping at a distance, going out,
                Is without blame. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
         ◻ 
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
         ◻ 
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 61;
        IChing_Book[Hexagram].Place2ChangesToNumber = 20;
        IChing_Book[Hexagram].Place3ChangesToNumber = 57;
        IChing_Book[Hexagram].Place4ChangesToNumber = 6;
        IChing_Book[Hexagram].Place5ChangesToNumber = 4;
        IChing_Book[Hexagram].Place6ChangesToNumber = 29;
                
        Hexagram = 60;
        IChing_Book[Hexagram].EngTitle = "Limitation "

        IChing_Book[Hexagram].ChiTitle = "Chieh "

        IChing_Book[Hexagram].ChiSymbol = "節 "

        IChing_Book[Hexagram].AltTitles = "Restraint, Regulations, Articulating, Receipt, Restraining, Containment "

        IChing_Book[Hexagram].Hex = "䷻ "

        IChing_Book[Hexagram].Code = [ 1, 1, 0, 0, 1, 0 ];
        IChing_Book[Hexagram].Above =
                    
        """
         K’AN  /  THE ABYSMAL, WATER 
        """

        IChing_Book[Hexagram].Below =
                    
        """
         TUI  /  THE JOYOUS, LAKE 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☵ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☱ 
        """

        IChing_Book[Hexagram].Intro1 =   
        """
         A lake occupies a limited space.  When more water comes into it, it overflows.  Therefore limits must be set for the water.  The image shows water below and water above, with the firmament between them as a limit.
                
                The Chinese word for limitation really denotes the joints that divide a bamboo stalk.  In relation to ordinary life it means the thrift that sets fixed limits upon expenditures.  In relation to the moral sphere it means the fixed limits that the superior man sets upon his actions—the limits of loyalty and disinterestedness. 
        """

        IChing_Book[Hexagram].TheJudgment =   
        """
         LIMITATION.  Success.
                Galling limitation must not be persevered in. 
        """

        IChing_Book[Hexagram].Intro2 =   
        """
         Limitations are troublesome, but they are effective.  If we live economically in normal times, we are prepared for times of want.  To be sparing saves us from humiliation.  Limitations are also indispensable in the regulation of world conditions.  In nature there are fixed limits for summer and winter, day and night, and these limits give the year its meaning.  In the same way, economy, by setting fixed limits upon expenditures, acts to preserve property and prevent injury to the people.
                
                But in limitation we must observe due measure.  If a man should seek to impose galling limitations upon his own nature, it would be injurious.  And if he should go too far in imposing limitations on others, they would rebel.  Therefore it is necessary to set limits even upon limitation. 
        """

        IChing_Book[Hexagram].TheImage =   
        """
         Water over lake: the image of LIMITATION.
                Thus the superior man
                Creates number and measure,
                And examines the nature of virtue and correct conduct. 
        """

        IChing_Book[Hexagram].Intro3 =   
        """
         A lake is something limited.  Water is inexhaustible.  A lake can contain only a definite amount of the infinite quantity of water; this is its peculiarity.  In human life too the individual achieves significance through discrimination and the setting of limits.  Therefore what concerns us here is the problem of clearly defining these discriminations, which are, so to speak, the backbone of morality.  Unlimited possibilities are not suited to man; if they existed, his life would only dissolve in the boundless.  To become strong, a man’s life needs the limitations ordained by duty and voluntarily accepted.  The individual attains significance as a free spirit only by surrounding himself with these limitations and by determining for himself what his duty is. 
        """

        IChing_Book[Hexagram].Read1 =   
        """
         Nine at the beginning means:
                Not going out of the door and the courtyard
                Is without blame. 
        """

        IChing_Book[Hexagram].Read2 =   
        """
         Nine in the second place means:
                Not going out of the gate and the courtyard
                Brings misfortune. 
        """

        IChing_Book[Hexagram].Read3 =   
        """
         Six in the third place means:
                He who knows no limitation
                Will have cause to lament.
                No blame. 
        """

        IChing_Book[Hexagram].Read4 =   
        """
         Six in the fourth place means:
                Contented limitation.  Success. 
        """

        IChing_Book[Hexagram].Read5 =   
        """
         Nine in the fifth place means:
                Sweet limitation brings good fortune.
                Going brings esteem. 
        """

        IChing_Book[Hexagram].Read6 =   
        """
         Six at the top means:
                Galling limitation.
                Perseverance brings misfortune.
                Remorse disappears. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 29;
        IChing_Book[Hexagram].Place2ChangesToNumber = 3;
        IChing_Book[Hexagram].Place3ChangesToNumber = 5;
        IChing_Book[Hexagram].Place4ChangesToNumber = 58;
        IChing_Book[Hexagram].Place5ChangesToNumber = 19;
        IChing_Book[Hexagram].Place6ChangesToNumber = 61;
                
        Hexagram = 61;
        IChing_Book[Hexagram].EngTitle = "Inner Truth "

        IChing_Book[Hexagram].ChiTitle = "Chung Fu "

        IChing_Book[Hexagram].ChiSymbol = "中孚 "

        IChing_Book[Hexagram].AltTitles = "The Symbol of Central Sincerity, Inward Confidence, Inner Truthfulness, Sincerity, Centering- Conforming, Central Return, Faithfulness in the Center, Sincerity in the Center, Insight, Understanding, The Psyche "

        IChing_Book[Hexagram].Hex = "䷼ "

        IChing_Book[Hexagram].Code = [ 1, 1, 0, 0, 1, 1 ];
        IChing_Book[Hexagram].Above =
                    
        """
         SUN  /  THE GENTLE, WIND 
        """

        IChing_Book[Hexagram].Below =
                    
        """
         TUI  /  THE JOYOUS, LAKE 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☴ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☱ 
        """

        IChing_Book[Hexagram].Intro1 =   
        """
         The wind blows over the lake and stirs the surface of the water.  Thus visible effects of the invisible manifest themselves.  The hexagram consists of firm lines above and below, while it is open in the center.  This indicates a heart free of prejudices and therefore open to truth.  On the other hand, each of the two trigrams has a firm line in the middle; this indicates the force of inner truth in the influences they represent.
                
                The attributes of the two trigrams are: above, gentleness, forbearance toward inferiors; below, joyousness in obeying superiors.  Such conditions create the basis of a mutual confidence that makes achievements possible.
                
                The character of fu (“truth”) is actually the picture of a bird’s foot over a fledgling.  It suggests the idea of brooding.  An egg is hollow.  The light–giving power must work to quicken it from outside, but there must be a germ of life within, if life is to be awakened.  Far–reaching speculations can be linked with these ideas. 
        """

        IChing_Book[Hexagram].TheJudgment =   
        """
         INNER TRUTH.  Pigs and fishes.
                Good fortune.
                It furthers one to cross the great water.
                Perseverance furthers. 
        """

        IChing_Book[Hexagram].Intro2 =   
        """
         Pigs and fishes are the least intelligent of all animals and therefore the most difficult to influence.  The force of inner truth must grow great indeed before its influence can extend to such creatures.  In dealing with persons as intractable and as difficult to influence as a pig or a fish, the whole secret of success depends on finding the right way of approach.  One must first rid oneself of all prejudice and, so to speak, let the psyche of the other person act on one without restraint.  Then one will establish contact with him, understand and gain power over him.  When a door has thus been opened, the force of one’s personality will influence him.  If in this way one finds no obstacles insurmountable, one can undertake even the most dangerous things, such as crossing the great water, and succeed.
                
                But it is important to understand upon what the force inner truth depends.  This force is not identical with simple intimacy or a secret bond.  Close ties may exist also among thieves; it is true that such a bond acts as a force but, since it is not invincible, it does not bring good fortune.  All association on the basis of common interests holds only up to a certain point.  Where the community of interest ceases, the holding together ceases also, and the closest friendship often changes into hate.  Only when the bond is based on what is right, on steadfastness, will it remain so firm that it triumphs over everything. 
        """

        IChing_Book[Hexagram].TheImage =   
        """
         Wind over lake: the image of INNER TRUTH.
                Thus the superior man discusses criminal cases
                In order to delay executions. 
        """

        IChing_Book[Hexagram].Intro3 =   
        """
         Wind stirs water by penetrating it.  Thus the superior man, when obliged to judge the mistakes of men, tries to penetrate their minds with understanding, in order to gain a sympathetic appreciation of the circumstances.  In ancient China, the entire administration of justice was guided by this principle.  A deep understanding that knows how to pardon was considered the highest form of justice.  This system was not without success, for its aim was to make so strong a moral impression that there was no reason to fear abuse of such mildness.  For it sprang not from weakness but from a superior clarity. 
        """

        IChing_Book[Hexagram].Read1 =   
        """
         Nine at the beginning means:
                Being prepared brings good fortune.
                If there are secret designs, it is disquieting. 
        """

        IChing_Book[Hexagram].Read2 =   
        """
         Nine in the second place means:
                A crane calling in the shade.
                Its young answers it.
                I have a good goblet.
                I will share it with you. 
        """

        IChing_Book[Hexagram].Read3 =   
        """
         Six in the third place means:
                He finds a comrade.
                Now he beats the drum, now he stops.
                Now he sobs, now he sings. 
        """

        IChing_Book[Hexagram].Read4 =   
        """
         Six in the fourth place means:
                The moon nearly at the full.
                The team horse goes astray.
                No blame. 
        """

        IChing_Book[Hexagram].Read5 =   
        """
         Nine in the fifth place means:
                He possesses truth, which links together.
                No blame. 
        """

        IChing_Book[Hexagram].Read6 =   
        """
         Nine at the top means:
                Cockcrow penetrating to heaven.
                Perseverance brings misfortune. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
         ◻ 
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
         ◻ 
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 59;
        IChing_Book[Hexagram].Place2ChangesToNumber = 42;
        IChing_Book[Hexagram].Place3ChangesToNumber = 9;
        IChing_Book[Hexagram].Place4ChangesToNumber = 10;
        IChing_Book[Hexagram].Place5ChangesToNumber = 41;
        IChing_Book[Hexagram].Place6ChangesToNumber = 60;
                
        Hexagram = 62;
        IChing_Book[Hexagram].EngTitle = "Preponderance of the Small "

        IChing_Book[Hexagram].ChiTitle = "Hsiao Kuo "

        IChing_Book[Hexagram].ChiSymbol = "小過 "

        IChing_Book[Hexagram].AltTitles = "The Symbol of Excess in Small Things, The Small get by, Slight Excess, Small Exceeding, Small Surpassing, Excess of the Small, Small gains, Conscientiousness, Smallness in Excess, Exceeding the Mean, Proliferation of Details "

        IChing_Book[Hexagram].Hex = "䷽ "

        IChing_Book[Hexagram].Code = [ 0, 0, 1, 1, 0, 0 ];
        IChing_Book[Hexagram].Above =
                    
        """
         CHÊN  /  THE AROUSING, THUNDER  
        """

        IChing_Book[Hexagram].Below =
                    
        """
         KÊN  /  KEEPING STILL, MOUNTAIN 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☳ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☶ 
        """

        IChing_Book[Hexagram].Intro1 =   
        """
         While in the hexagram Ta Kuo, PREPONDERANCE OF THE GREAT (28), the strong lines preponderate and are within, inclosed between weak lines at the top and bottom, the present hexagram has weak lines preponderating, though here again they are on the outside, the strong lines being within.  This indeed is the basis of the exceptional situation indicated by the hexagram.  When strong lines are outside, we have the hexagram I, PROVIDING NOURISHMENT (27), or Chung Fu, INNER TRUTH, (61); neither represents an exceptional state.  When strong elements within preponderate, they necessarily enforce their will.  This creates struggle and exceptional conditions in general.  But in the present hexagram it is the weak element that perforce must mediate with the outside world.  If a man occupies a position of authority for which he is by nature really inadequate, extraordinary prudence is necessary. 
        """

        IChing_Book[Hexagram].TheJudgment =   
        """
         PREPONDERANCE OF THE SMALL.  Success.
                Perseverance furthers.
                Small things may be done; great things should not be done.
                The flying bird brings the message:
                It is not well to strive upward,
                It is well to remain below.
                Great good fortune. 
        """

        IChing_Book[Hexagram].Intro2 =   
        """
         Exceptional modesty and conscientiousness are sure to be rewarded with success; however, if a man is not to throw himself away, it is important that they should not become empty form and subservience but be combined always with a correct dignity in personal behavior.  We must understand the demands of the time in order to find the necessary offset for its deficiencies and damages.  In any event we must not count on great success, since the requisite strength is lacking.  In this lies the importance of the message that one should not strive after lofty things but hold to lowly things.
                
                The structure of the hexagram gives rise to the idea that this message is brought by a bird.  In Ta Kuo, PREPONDERANCE OF THE GREAT (28), the four strong, heavy lines within, supported only by two weak lines without, give the image of a sagging ridgepole.  Here the supporting weak lines are both outside and preponderant; this gives the image of a soaring bird.  But a bird should not try to surpass itself and fly into the sun; it should descend to the earth, where its nest is.  In this way it gives the message conveyed by the hexagram. 
        """

        IChing_Book[Hexagram].TheImage =   
        """
         Thunder on the mountain:
                The image of PREPONDERANCE OF THE SMALL.
                Thus in his conduct the superior man gives preponderance to reverence.
                In bereavement he gives preponderance to grief.
                In his expenditures he gives preponderance to thrift. 
        """

        IChing_Book[Hexagram].Intro3 =   
        """
         Thunder on the mountain is different from thunder on the plain.  In the mountains, thunder seems much nearer; outside the mountains, it is less audible than the thunder of an ordinary storm.  Thus the superior man derives an imperative from this image: he must always fix his eyes more closely and more directly on duty than does the ordinary man, even though this might make his behavior seem petty to the outside world.  He is exceptionally conscientious in his actions.  In bereavement emotion means more to him than ceremoniousness.  In all his personal expenditures he is extremely simple and unpretentious.  In comparison with the man of the masses, all this makes him stand out as exceptional.  But the essential significance of his attitude lies in the fact that in external matters he is on the side of the lowly. 
        """

        IChing_Book[Hexagram].Read1 =   
        """
         Six at the beginning means:
                The bird meets with misfortune through flying. 
        """

        IChing_Book[Hexagram].Read2 =   
        """
         Six in the second place means:
                She passes by her ancestor
                And meets her ancestress.
                He does not reach his prince
                And meets the official.
                No blame. 
        """

        IChing_Book[Hexagram].Read3 =   
        """
         Nine in the third place means:
                If one is not extremely careful,
                Somebody may come up from behind and strike him.
                Misfortune. 
        """

        IChing_Book[Hexagram].Read4 =   
        """
         Nine in the fourth place means:
                No blame.  He meets him without passing by.
                Going brings danger.  One must be on guard.
                Do not act.  Be constantly persevering. 
        """

        IChing_Book[Hexagram].Read5 =   
        """
         Six in the fifth place means:
                Dense clouds,
                No rain from our western territory.
                The prince shoots and hits him who is in the cave. 
        """

        IChing_Book[Hexagram].Read6 =   
        """
         Six at the top means:
                He passes him by, not meeting him.
                The flying bird leaves him.
                Misfortune.
                This means bad luck and injury. 
        """

        IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """
        // ○ ◻
        IChing_Book[Hexagram].SquareCircle2 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

        IChing_Book[Hexagram].SquareCircle5 =
                    
        """
         ○ 
        """

        IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

        IChing_Book[Hexagram].Place1ChangesToNumber = 55;
        IChing_Book[Hexagram].Place2ChangesToNumber = 32;
        IChing_Book[Hexagram].Place3ChangesToNumber = 16;
        IChing_Book[Hexagram].Place4ChangesToNumber = 15;
        IChing_Book[Hexagram].Place5ChangesToNumber = 31;
        IChing_Book[Hexagram].Place6ChangesToNumber = 56;
                
        Hexagram = 63;
        IChing_Book[Hexagram].EngTitle = "After Completion "

        IChing_Book[Hexagram].ChiTitle = "Chi Chi "

        IChing_Book[Hexagram].ChiSymbol = "既濟 "

        IChing_Book[Hexagram].AltTitles = "The Symbol of What is Already Past, Already Fording, Already Completed, Settled, Mission Accomplished, Tasks Completed, After the End, A state of Climax "

        IChing_Book[Hexagram].Hex = "䷾ "

        IChing_Book[Hexagram].Code = [ 1, 0, 1, 0, 1, 0 ];
        IChing_Book[Hexagram].Above =
                    
        """
         K’AN  /  THE ABYSMAL, WATER 
        """

        IChing_Book[Hexagram].Below =
                    
        """
         LI  /  THE CLINGING, FIRE 
        """

        IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☵ 
        """

        IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☲ 
        """

        IChing_Book[Hexagram].Intro1 =   
        """
         This hexagram is the evolution of T’ai PEACE (11).  The transition from confusion to order is completed, and everything is in its proper place even in particulars.  The strong lines are in the strong places, the weak lines in the weak places.  This is a very favorable outlook, yet it gives reason for thought.  For it is just when perfect equilibrium has been reached that any movement may cause order to revert to disorder.  The one strong line that has moved to the top, thus effecting complete order in details, is followed by the other lines.  Each moving according to its nature, and thus suddenly there arises again the hexagram P’i, STANDSTILL (12).
                
                Hence the present hexagram indicates the conditions of a time of climax, which necessitate the utmost caution. 
        """

        IChing_Book[Hexagram].TheJudgment =   
        """
         AFTER COMPLETION.  Success in small matters.
                Perseverance furthers.
                At the beginning good fortune.
                At the end disorder. 
        """

        IChing_Book[Hexagram].Intro2 =   
        """
         The transition from the old to the new time is already accomplished.  In principle, everything stands systematized, and it is only in regard to details that success is still to be achieved.  In respect to this, however, we must be careful to maintain the right attitude.  Everything proceeds as if of its own accord, and this can all too easily tempt us to relax and let thing take their course without troubling over details.  Such indifference is the root of all evil.  Symptoms of decay are bound to be the result.  Here we have the rule indicating the usual course of history.  But this rule is not an inescapable law.  He who understands it is in position to avoid its effects by dint of unremitting perseverance and caution. 
        """

            IChing_Book[Hexagram].TheImage =   
        """
         Water over fire: the image of the condition
        In AFTER COMPLETION.
        Thus the superior man
        Takes thought of misfortune
        And arms himself against it in advance. 
        """

            IChing_Book[Hexagram].Intro3 =   
        """
         When water in a kettle hangs over fire, the two elements stand in relation and thus generate energy (cf. the production of steam).  But the resulting tension demands caution.  If the water boils over, the fire is extinguished an its energy is lost.  If the heat is too great, the water evaporates into the air.  These elements here brought in to relation and thus generating energy are by nature hostile to each other.  Only the most extreme caution can prevent damage.  In life too there are junctures when all forces are in balance and work in harmony, so that everything seems to be in the best of order.  In such times only the sage recognizes the moments that bode danger and knows how to banish it by means of timely precautions. 
        """

            IChing_Book[Hexagram].Read1 =   
        """
         Nine at the beginning means:
        He breaks his wheels.
        He gets his tail in the water.
        No blame. 
        """

            IChing_Book[Hexagram].Read2 =   
        """
         Six in the second place means:
        The woman loses the curtain of her carriage.
        Do not run after it;
        On the seventh day you will get it. 
        """

            IChing_Book[Hexagram].Read3 =   
        """
         Nine in the third place means:
        The Illustrious Ancestor
        Disciplines the Devil’s Country.
        After three years he conquers it.
        Inferior people must not be employed. 
        """

            IChing_Book[Hexagram].Read4 =   
        """
         Six in the fourth place means:
        The finest clothes turn to rags.
        Be careful all day long. 
        """

            IChing_Book[Hexagram].Read5 =   
        """
         Nine in the fifth place means:
        The neighbor in the east who slaughters an ox
        Does not attain as much real happiness
        As the neighbor in the west
        With his small offering. 
        """

            IChing_Book[Hexagram].Read6 =   
        """
         Six at the top means:
        He gets his head in the water.  Danger. 
        """

            IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """
        // ○ ◻
            IChing_Book[Hexagram].SquareCircle2 =
                    
        """
         ○ 
        """

            IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

            IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

            IChing_Book[Hexagram].SquareCircle5 =
                    
        """
          
        """

            IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

            IChing_Book[Hexagram].Place1ChangesToNumber = 39;
            IChing_Book[Hexagram].Place2ChangesToNumber = 5;
            IChing_Book[Hexagram].Place3ChangesToNumber = 3;
            IChing_Book[Hexagram].Place4ChangesToNumber = 49;
            IChing_Book[Hexagram].Place5ChangesToNumber = 36;
            IChing_Book[Hexagram].Place6ChangesToNumber = 37;

            Hexagram = 64;
        
            IChing_Book[Hexagram].EngTitle = "Before Completion"

            IChing_Book[Hexagram].ChiTitle = "Wei Chi"

            IChing_Book[Hexagram].ChiSymbol = "未濟"
            IChing_Book[Hexagram].AltTitles = "The Symbol of What is not yet Past, Not-yet Fording, Not Yet Completed, Tasks yet to be Completed, Not yet, Yet to be, Before the End, Mission yet Unaccomplished, A State of Transition"
            IChing_Book[Hexagram].Hex = "䷿"
            IChing_Book[Hexagram].Code = [ 0, 1, 0, 1, 0, 1 ];
            IChing_Book[Hexagram].Above =
                    
        """
         LI  /  THE CLINGING, FLAME 
        """

            IChing_Book[Hexagram].Below =
                    
        """
         K’AN  /  THE ABYSMAL, WATER 
        """

            IChing_Book[Hexagram].AboveSymbol =
                    
        """
         ☲ 
        """

            IChing_Book[Hexagram].BelowSymbol =
                    
        """
         ☵ 
        """

            IChing_Book[Hexagram].Intro1 =   
        """
         This hexagram indicates a time when the transition from disorder to order is not yet completed.  The change is indeed prepared for, since all the lines in the upper trigram are in relation to those in the lower.  However, they are not yet in their places.  While the preceding hexagram offers an analogy to autumn, which forms the transition from summer to winter, this hexagram presents a parallel to spring, which leads out of winter’s stagnation into the fruitful time of summer.  With this hopeful outlook the Book of Changes come to its close. 
        """

            IChing_Book[Hexagram].TheJudgment =   
        """
         BEFORE COMPLETION.  Success.
        But if the little fox, after nearly completing the crossing,
        Gets his tail in the water,
        There is nothing that would further. 
        """

            IChing_Book[Hexagram].Intro2 =   
        """
         The conditions are difficult.  The task is great and full of responsibility.  It is nothing less than that of leading the world out of confusion back to order.  But it is a task that promises success, because there is a goal that can unite the forces now tending in different directions.  At first, however, one must move warily, like an old fox walking over ice.  The caution of a fox walking over ice is proverbial in China.  His ears are constantly alert to the cracking of the ice, as he carefully and circumspectly searches out the safest spots.  A young fox who as yet has not acquired this caution goes ahead boldly, and it may happen that he falls in and gets his tail wet when he is almost across the water.  Then of course his effort has been all in vain.  Accordingly, in times “before completion,” deliberation and caution are the prerequisites of success. 
        """

            IChing_Book[Hexagram].TheImage =   
        """
         Fire over water:
        The image of the condition before transition.
        Thus the superior man is careful
        In the differentiation of things,
        So that each finds its place. 
        """

            IChing_Book[Hexagram].Intro3 =   
        """
         When fire, which by nature flames upward, is above, and water, which flows downward, is below, their effects take opposite directions and remain unrelated.  If we wish to achieve an effect, we must first investigate the nature of the forces in question and ascertain their proper place.  If we can bring these forces to bear in the right place, they will have the desired effect and completion will be achieved.  But in order to handle external forces properly, we must above all arrive at the correct standpoint ourselves, for only from this vantage can we work correctly. 
        """

            IChing_Book[Hexagram].Read1 =   
        """
         Six at the beginning means:
        He gets his tail in the water.
        Humiliating. 
        """

            IChing_Book[Hexagram].Read2 =   
        """
         Nine in the second place means:
        He brakes his wheels.
        Perseverance brings good fortune. 
        """

            IChing_Book[Hexagram].Read3 =   
        """
         Six in the third place means:
        Before completion, attack brings misfortune.
        It furthers one to cross the great water. 
        """

            IChing_Book[Hexagram].Read4 =   
        """
         Nine in the fourth place means:
        Perseverance brings good fortune.
        Remorse disappears.
        Shock, thus to discipline the Devil’s Country.
        For three years, great realms are rewarded. 
        """

            IChing_Book[Hexagram].Read5 =   
        """
         Six in the fifth place means:
        Perseverance brings good fortune.
        No remorse.
        The light of the superior man is true.
        Good fortune. 
        """

            IChing_Book[Hexagram].Read6 =   
        """
         Nine at the top means:
        There is drinking of wine
        In genuine confidence.  No blame.
        But if one wets his head,
        He loses it, in truth. 
        """

            IChing_Book[Hexagram].SquareCircle1 =
                    
        """
          
        """
        // ○ ◻
            IChing_Book[Hexagram].SquareCircle2 =
                    
        """
          
        """

            IChing_Book[Hexagram].SquareCircle3 =
                    
        """
          
        """

            IChing_Book[Hexagram].SquareCircle4 =
                    
        """
          
        """

            IChing_Book[Hexagram].SquareCircle5 =
                    
        """
         ○ 
        """

            IChing_Book[Hexagram].SquareCircle6 =
                    
        """
          
        """

            IChing_Book[Hexagram].Place1ChangesToNumber = 38;
            IChing_Book[Hexagram].Place2ChangesToNumber = 35;
            IChing_Book[Hexagram].Place3ChangesToNumber = 50;
            IChing_Book[Hexagram].Place4ChangesToNumber = 4;
            IChing_Book[Hexagram].Place5ChangesToNumber = 6;
            IChing_Book[Hexagram].Place6ChangesToNumber = 40;


                
        }
}
