//
//  File.swift
//  LastTest
//
//  Created by 张添翅 on 3/8/20.
//  Copyright © 2020 张添翅. All rights reserved.
//

import Foundation
import UIKit

//var dataArray:Array<Movie> = []
//var newMovieArray:Array<Int> = []
//var leavingMovieArray:Array<Int> = []

let dataArray:Array<Movie> = [
    Movie(movieName: "Train to Busan", movieImageName: "trainToBusan_poster", movieRate: "7.5 ", imdbLink: "https://www.imdb.com/title/tt5700672/", youtubeLink: "https://www.youtube.com/watch?v=kG-8yx9z0Cg", netflixLink: "https://www.netflix.com/browse/genre/8711?jbv=80117824&jbp=0&jbr=1", huluLink: "N/A", primeLink: "https://www.amazon.com/gp/video/detail/B01N2POCJX/ref=atv_dl_rdr", actorName: "Yoo Gong, Yu-mi Jung, Dong-seok Ma", movieDetail: "While a zombie virus breaks out in South Korea, passengers struggle to survive on the train from Seoul to Busan."),
    Movie(movieName: "Color out of Space", movieImageName: "colorOutOfSpace_poster", movieRate: "6.2 ", imdbLink: "https://www.imdb.com/title/tt5073642/", youtubeLink: "https://www.youtube.com/watch?v=mHhhGviLpSQ", netflixLink: "N/A", huluLink: "N/A", primeLink: "https://www.amazon.com/gp/product/B08463G4KJ?camp=1789&creativeASIN=B08463G4KJ&ie=UTF8&linkCode=xm2&tag=justwatch09-20", actorName: "Nicolas Cage, Joely Richardson, Madeleine Arthur", movieDetail: "A secluded farm is struck by a strange meteorite which has apocalyptic consequences for the family living there and possibly the world."),
    Movie(movieName: "Doctor Sleep", movieImageName: "doctorSleep_poster", movieRate: "7.4 ", imdbLink: "https://www.imdb.com/title/tt5606664/", youtubeLink: "https://www.youtube.com/watch?v=xLFc-H2WKgQ", netflixLink: "N/A", huluLink: "N/A", primeLink: "https://www.amazon.com/gp/product/B0811K6W1K?camp=1789&creativeASIN=B0811K6W1K&ie=UTF8&linkCode=xm2&tag=justwatch09-20", actorName: "Ewan McGregor, Rebecca Ferguson, Kyliegh Curran", movieDetail: "Years following the events of 'The Shining,' a now-adult Dan Torrance must protect a young girl with similar powers from a cult known as The True Knot, who prey on children with powers to remain immortal."),
    Movie(movieName: "Villains", movieImageName: "villains_poster", movieRate: "6.2 ", imdbLink: "https://www.imdb.com/title/tt6378710/", youtubeLink: "https://www.youtube.com/watch?v=UnKo4lL5-Ew", netflixLink: "N/A", huluLink: "N/A", primeLink: "https://www.amazon.com/gp/product/B082P9YFMV?camp=1789&creativeASIN=B082P9YFMV&ie=UTF8&linkCode=xm2&tag=justwatch09-20", actorName: "Bill Skarsg_rd, Maika Monroe, Blake Baumgartner", movieDetail: "After a pair of amateur criminals break into a suburban home, they stumble upon a dark secret that two sadistic homeowners will do anything to keep from getting out."),
    Movie(movieName: "What We Do in the Shadows", movieImageName: "whatWeDoInTheShadows_poster", movieRate: "7.7 ", imdbLink: "https://www.imdb.com/title/tt3416742/", youtubeLink: "https://www.youtube.com/watch?v=mzuNjOEwOLk", netflixLink: "N/A", huluLink: "N/A", primeLink: "https://www.amazon.com/gp/product/B00VVXH7TC?camp=1789&creativeASIN=B00VVXH7TC&ie=UTF8&linkCode=xm2&tag=justwatch09-20", actorName: "Jemaine Clement, Taika Waititi, Cori Gonzalez-Macuer", movieDetail: "Viago, Deacon and Vladislav are vampires who are finding that modern life has them struggling with the mundane - like paying rent, keeping up with the chore wheel, trying to get into nightclubs and overcoming flatmate conflicts."),
    Movie(movieName: "Girl on the Third Floor", movieImageName: "girlOnTheThirdFloor_poster", movieRate: "4.7 ", imdbLink: "https://www.imdb.com/title/tt9026184/", youtubeLink: "https://www.youtube.com/watch?v=OtD_RjMzYHo", netflixLink: "https://www.netflix.com/watch/81082119?trackId=13752289&tctx=0%2C0%2Cdf9551547eb0a20284dd111d212b9a6dc9faa052%3Aae910f6743f862ff4d818d8ef0a746ed09572a44%2C%2C", huluLink: "N/A", primeLink: "https://www.amazon.com/gp/product/B07WXK26TK?camp=1789&creativeASIN=B07WXK26TK&ie=UTF8&linkCode=xm2&tag=justwatch09-20", actorName: "C.M. Punk, Trieste Kelly Dunn, Sarah Brooks", movieDetail: "Don Koch tries to renovate a rundown mansion with a sordid history for his growing family, only to learn that the house has other plans."),
    Movie(movieName: "Ready or Not", movieImageName: "readyOrNot_poster", movieRate: "6.8 ", imdbLink: "https://www.imdb.com/title/tt7798634/", youtubeLink: "https://www.youtube.com/watch?v=FRo-T87hTKU", netflixLink: "N/A", huluLink: "N/A", primeLink: "https://www.amazon.com/gp/product/B07WN98L3H?camp=1789&creativeASIN=B07WN98L3H&ie=UTF8&linkCode=xm2&tag=justwatch09-20", actorName: "Samara Weaving, Adam Brody, Mark O'Brien", movieDetail: "A bride's wedding night takes a sinister turn when her eccentric new in-laws force her to take part in a terrifying game."),
    Movie(movieName: "A Quiet Place", movieImageName: "aQuietPlace_poster", movieRate: "7.5 ", imdbLink: "https://www.imdb.com/title/tt6644200/", youtubeLink: "N/A", netflixLink: "N/A", huluLink: "N/A", primeLink: "https://www.amazon.com/gp/product/B07BYWWF4D?camp=1789&creativeASIN=B07BYWWF4D&ie=UTF8&linkCode=xm2&tag=justwatch09-20", actorName: "Emily Blunt, John Krasinski, Millicent Simmonds", movieDetail: "In a post-apocalyptic world, a family is forced to live in silence while hiding from monsters with ultra-sensitive hearing."),
    Movie(movieName: "Zombieland", movieImageName: "zombieland_poster", movieRate: "7.6 ", imdbLink: "https://www.imdb.com/title/tt1156398/", youtubeLink: "https://www.youtube.com/watch?v=F_FncB-OSic", netflixLink: "N/A", huluLink: "N/A", primeLink: "https://www.amazon.com/gp/video/detail/B07Z7VFST8/ref=atv_dl_rdr", actorName: "Jesse Eisenberg, Emma Stone, Woody Harrelson", movieDetail: "A shy student trying to reach his family in Ohio, a gun-toting tough guy trying to find the last Twinkie, and a pair of sisters trying to get to an amusement park join forces to travel across a zombie-filled America."),
    Movie(movieName: "Polaroid", movieImageName: "polaroid_poster", movieRate: "5.1 ", imdbLink: "https://www.imdb.com/title/tt5598292/", youtubeLink: "https://www.youtube.com/watch?v=fvUeH8Z_yTA", netflixLink: "N/A", huluLink: "N/A", primeLink: "https://www.amazon.com/gp/video/detail/B07XHZZ97D/ref=atv_dl_rdr", actorName: "Kathryn Prescott, Tyler Young, Samantha Logan", movieDetail: "High school loner Bird Fitcher has no idea what dark secrets are tied to the Polaroid camera she finds. It doesn't take long to discover that those who have their picture taken with it, soon die."),
    Movie(movieName: "Us", movieImageName: "us_poster", movieRate: "6.9 ", imdbLink: "https://www.imdb.com/title/tt6857112/", youtubeLink: "https://www.youtube.com/watch?v=WCVhThcoxPM", netflixLink: "N/A", huluLink: "N/A", primeLink: "https://www.amazon.com/gp/video/detail/B07PH3P8KM/ref=atv_dl_rdr", actorName: "Lupita Nyong'o, Winston Duke, Elisabeth Moss", movieDetail: "A family's serene beach vacation turns to chaos when their doppelg_ngers appear and begin to terrorize them."),
    Movie(movieName: "Ma", movieImageName: "ma_poster", movieRate: "5.6 ", imdbLink: "https://www.imdb.com/title/tt7958736/", youtubeLink: "https://www.youtube.com/watch?v=TBb2K7r6Pqo", netflixLink: "N/A", huluLink: "N/A", primeLink: "https://www.amazon.com/gp/video/detail/B07SPFX1LK/ref=atv_dl_rdr", actorName: "Octavia Spencer, Diana Silvers, Juliette Lewis", movieDetail: "A lonely woman befriends a group of teenagers and decides to let them party at her house. Just when the kids think their luck couldn't get any better, things start happening that make them question the intention of their host."),
    Movie(movieName: "Cabin in the Woods", movieImageName: "cabinInTheWoods_poster", movieRate: "7.0 ", imdbLink: "https://www.imdb.com/title/tt1259521/", youtubeLink: "https://www.youtube.com/watch?v=mfuIaP3undc", netflixLink: "N/A", huluLink: "N/A", primeLink: "https://www.amazon.com/gp/video/detail/B07WC7Z1ZB/ref=atv_dl_rdr", actorName: "Kristen Connolly, Chris Hemsworth, Anna Hutchison", movieDetail: "Five friends go for a break at a remote cabin, where they get more than they bargained for, discovering the truth behind the cabin in the woods."),
    Movie(movieName: "Insidious", movieImageName: "insidious_poster", movieRate: "6.8 ", imdbLink: "https://www.imdb.com/title/tt1591095/", youtubeLink: "https://www.youtube.com/watch?v=WQt5iUPgmDU", netflixLink: "https://www.netflix.com/watch/70142542?trackId=13752289&tctx=0%2C0%2C77ae9058eb4360b5cb65246013353fa335a2d9bb%3Aae4a0edc7fc028df2f3d1d0748c386a90225076f%2C%2C", huluLink: "N/A", primeLink: "https://www.amazon.com/gp/video/detail/B00BR0XHMU/ref=atv_dl_rdr", actorName: "Patrick Wilson, Rose Byrne, Ty Simpkins", movieDetail: "A family looks to prevent evil spirits from trapping their comatose child in a realm called The Further."),
    Movie(movieName: "Get Out", movieImageName: "getOut_poster", movieRate: "7.7 ", imdbLink: "https://www.imdb.com/title/tt5052448/", youtubeLink: "https://www.youtube.com/watch?v=YfLSryEaAfw", netflixLink: "N/A", huluLink: "N/A", primeLink: "https://www.amazon.com/gp/video/detail/B06Y3Y7Z7K/ref=atv_dl_rdr", actorName: "Daniel Kaluuya, Allison Williams, Bradley Whitford", movieDetail: "A young African-American visits his white girlfriend's parents for the weekend, where his simmering uneasiness about their reception of him eventually reaches a boiling point."),
    Movie(movieName: "Apocalypse Now", movieImageName: "apocalypseNow_poster", movieRate: "8.4 ", imdbLink: "https://www.imdb.com/title/tt0078788/", youtubeLink: "https://www.youtube.com/watch?v=P-OFL64BNgs", netflixLink: "N/A", huluLink: "N/A", primeLink: "https://www.amazon.com/gp/video/detail/B07X4V1TWQ/ref=atv_dl_rdr", actorName: "Martin Sheen, Marlon Brando, Robert Duvall", movieDetail: "A U.S. Army officer serving in Vietnam is tasked with assassinating a renegade Special Forces Colonel who sees himself as a god."),
    Movie(movieName: "The Recall", movieImageName: "theRecall_poster", movieRate: "4.5 ", imdbLink: "https://www.imdb.com/title/tt5669936/", youtubeLink: "http://www.youtube.com/watch?v=AUKJuXI5P-Y", netflixLink: "https://www.netflix.com/watch/81090899?trackId=13752289&tctx=0%2C0%2C3297fa2e64fbeb409dd569f5f2cefdee668231c0%3Afd7a507b06fb885be71c5c6530251266a8c3ed45%2C%2C", huluLink: "N/A", primeLink: "https://www.amazon.com/gp/video/detail/B0721LC831/ref=atv_dl_rdr", actorName: "Wesley Snipes, RJ Mitte, Jedidiah Goodacre", movieDetail: "When five friends vacation at a remote lake house they expect nothing less than a good time, unaware that planet Earth is under an alien invasion and mass-abduction."),
    Movie(movieName: "Wrinkles the Clown", movieImageName: "wrinklesTheClown_poster", movieRate: "4.8 ", imdbLink: "https://www.imdb.com/title/tt9097270/", youtubeLink: "https://www.youtube.com/watch?v=x8IVIruK1rM", netflixLink: "N/A", huluLink: "N/A", primeLink: "N/A", actorName: "Christopher Barcia, Trevor J. Blank, Andrew Caldwell", movieDetail: "In Florida, parents can hire Wrinkles the Clown to scare their misbehaving children."),
    Movie(movieName: "The Wind", movieImageName: "theWind_poster", movieRate: "5.5 ", imdbLink: "https://www.imdb.com/title/tt8426594/", youtubeLink: "https://www.youtube.com/watch?v=zZqR4XRhU5g", netflixLink: "N/A", huluLink: "N/A", primeLink: "https://www.amazon.com/gp/video/detail/B07PQ96M9Y/ref=atv_dl_rdr", actorName: "Caitlin Gerard, Julia Goldani Telles, Ashley Zukerman", movieDetail: "A plains-woman faces the harshness and isolation of the untamed land in the Western frontier of the late 1800s."),
    Movie(movieName: "Stay Out Stay Alive", movieImageName: "stayOutStayAlive_poster", movieRate: "3.9 ", imdbLink: "https://www.imdb.com/title/tt5956016/", youtubeLink: "https://www.youtube.com/watch?v=DxwyMHFX_Eo", netflixLink: "N/A", huluLink: "N/A", primeLink: "https://www.amazon.com/gp/video/detail/B07ZJNRTLY/ref=atv_dl_rdr", actorName: "Brie Mattson, Brandon Wardle, Christina July Kim", movieDetail: "Shadowed by a haunting presence in the redwood forest, five young hikers discover an abandoned goldmine dating back to the Gold Rush and descend into madness and greed as the pursuit of easy riches consumes them."),
    Movie(movieName: "The Last Samurai", movieImageName: "theLastSamurai_poster", movieRate: "7.7 ", imdbLink: "https://www.imdb.com/title/tt0325710/", youtubeLink: "https://www.youtube.com/watch?v=_fRJxYynvmw", netflixLink: "https://www.netflix.com/title/60031274", huluLink: "N/A", primeLink: "https://www.amazon.com/gp/product/B001EBV0OO?camp=1789&creativeASIN=B001EBV0OO&ie=UTF8&linkCode=xm2&tag=justwatch09-20", actorName: "Tom Cruise, Ken Watanabe, Billy Connolly", movieDetail: "An American military advisor embraces the Samurai culture he was hired to destroy after he is captured in battle."),
    Movie(movieName: "Portrait of a Lady on Fire", movieImageName: "portraitOfALadyOnFire_poster", movieRate: "8.2 ", imdbLink: "https://www.imdb.com/title/tt8613070/?ref_=nv_sr_srsg_0", youtubeLink: "N/A", netflixLink: "N/A", huluLink: "https://www.hulu.com/movie/portrait-of-a-lady-on-fire-d514447d-1954-4bf8-8164-fa3d6fdfe73f", primeLink: "N/A", actorName: "No®¶mie Merlant, Ad®®le Haenel, Lu®§na Bajrami", movieDetail: "On an isolated island in Brittany at the end of the eighteenth century, a female painter is obliged to paint a wedding portrait of a young woman."),
    Movie(movieName: "Lady Macbeth", movieImageName: "ladyMacbeth_poster", movieRate: "6.8 ", imdbLink: "https://www.imdb.com/title/tt4291600/?ref_=nv_sr_srsg_0", youtubeLink: "https://www.youtube.com/watch?v=l8vAACgcUCo", netflixLink: "N/A", huluLink: "https://www.hulu.com/movie/lady-macbeth-c2fb5941-4c82-47fe-ba68-4b126bc25f64", primeLink: "https://www.amazon.com/gp/product/B074HJGH3F?camp=1789&creativeASIN=B074HJGH3F&ie=UTF8&linkCode=xm2&tag=justwatch09-20", actorName: "Florence Pugh, Cosmo Jarvis, Paul Hilton", movieDetail: "In 19th-century rural England, a young bride who has been sold into marriage discovers an unstoppable desire within herself as she enters into an affair with a worker on her estate."),
    Movie(movieName: "Annihilation", movieImageName: "annihilation_poster", movieRate: "6.9 ", imdbLink: "https://www.imdb.com/title/tt2798920/?ref_=nv_sr_srsg_0", youtubeLink: "https://www.youtube.com/watch?v=h-9ngiK6Yqo", netflixLink: "N/A", huluLink: "https://www.hulu.com/movie/annihilation-22c89819-1d6b-4f3e-b375-56496418ff9b", primeLink: "https://www.amazon.com/gp/product/B079YYHM9Z?camp=1789&creativeASIN=B079YYHM9Z&ie=UTF8&linkCode=xm2&tag=justwatch09-20", actorName: "Natalie Portman, Jennifer Jason Leigh, Tessa Thompson", movieDetail: "A biologist signs up for a dangerous, secret expedition into a mysterious zone where the laws of nature don't apply."),
    Movie(movieName: "It", movieImageName: "it_poster", movieRate: "7.3 ", imdbLink: "https://www.imdb.com/title/tt1396484/?ref_=nv_sr_srsg_6", youtubeLink: "https://www.youtube.com/watch?v=c235n04Aw8w", netflixLink: "N/A", huluLink: "N/A", primeLink: "https://www.amazon.com/gp/product/B0756WZP5S?camp=1789&creativeASIN=B0756WZP5S&ie=UTF8&linkCode=xm2&tag=justwatch09-20", actorName: "Bill Skarsg_rd, Jaeden Martell, Finn Wolfhard", movieDetail: "In the summer of 1989, a group of bullied kids band together to destroy a shape-shifting monster, which disguises itself as a clown and preys on the children of Derry, their small Maine town."),
    Movie(movieName: "It Chapter Two", movieImageName: "itChapterTwo_poster", movieRate: "6.6 ", imdbLink: "https://www.imdb.com/title/tt7349950/?ref_=nv_sr_srsg_0", youtubeLink: "https://www.youtube.com/watch?v=c5B3BhhER0U", netflixLink: "N/A", huluLink: "N/A", primeLink: "https://www.amazon.com/gp/product/B07QYX1VQZ?camp=1789&creativeASIN=B07QYX1VQZ&ie=UTF8&linkCode=xm2&tag=justwatch09-20", actorName: "Jessica Chastain, James McAvoy, Bill Skarsg_rd", movieDetail: "Twenty-seven years after their first encounter with the terrifying Pennywise, the Losers Club have grown up and moved away, until a devastating phone call brings them back."),
    Movie(movieName: "Pet Sematary", movieImageName: "petSematary_poster", movieRate: "5.7 ", imdbLink: "https://www.imdb.com/title/tt0837563/?ref_=nv_sr_srsg_0", youtubeLink: "https://www.youtube.com/watch?v=OsRLuecV47U", netflixLink: "https://www.netflix.com/ca/title/81030626+&cd=1&hl=en&ct=clnk&gl=us", huluLink: "https://www.hulu.com/movie/pet-sematary-eb72f2aa-57b5-41af-a646-b9692f449f05", primeLink: "https://www.amazon.com/gp/product/B07Q8496NL?camp=1789&creativeASIN=B07Q8496NL&ie=UTF8&linkCode=xm2&tag=justwatch09-20", actorName: "Jason Clarke, Amy Seimetz, John Lithgow", movieDetail: "Dr. Louis Creed and his wife, Rachel, relocate from Boston to rural Maine with their two young children. The couple soon discover a mysterious burial ground hidden deep in the woods near their new home."),
    Movie(movieName: "Room", movieImageName: "room_poster", movieRate: "8.1 ", imdbLink: "https://www.imdb.com/title/tt3170832/?ref_=nv_sr_srsg_0", youtubeLink: "https://www.youtube.com/watch?v=bmyGpjMLmOA", netflixLink: "https://www.netflix.com/title/80073823", huluLink: "N/A", primeLink: "https://www.amazon.com/gp/product/B016PIL6AS?camp=1789&creativeASIN=B016PIL6AS&ie=UTF8&linkCode=xm2&tag=justwatch09-20", actorName: "Brie Larson, Jacob Tremblay, Sean Bridgers", movieDetail: "Held captive for 7 years in an enclosed space, a woman and her young son finally gain their freedom, allowing the boy to experience the outside world for the first time."),
    Movie(movieName: "Rosemary's Baby", movieImageName: "rosemarySBaby_poster", movieRate: "8.0 ", imdbLink: "https://www.imdb.com/title/tt0063522/?ref_=nv_sr_srsg_0", youtubeLink: "https://www.youtube.com/watch?v=TO2oH6HfNYo", netflixLink: "https://www.netflix.com/title/60002403", huluLink: "N/A", primeLink: "https://www.amazon.com/gp/product/B07YVLG9LN?camp=1789&creativeASIN=B07YVLG9LN&ie=UTF8&linkCode=xm2&tag=justwatch09-20", actorName: "Mia Farrow, John Cassavetes, Ruth Gordon", movieDetail: "A young couple moves in to a fancy apartment surrounded by peculiar neighbors. When the timid and passive wife becomes mysteriously pregnant while the actor husband becomes successful, the safety of her fetus begins to control her life."),
    Movie(movieName: "The Evil Dead", movieImageName: "theEvilDead_poster", movieRate: "7.5 ", imdbLink: "https://www.imdb.com/title/tt0083907/?ref_=nv_sr_srsg_0", youtubeLink: "N/A", netflixLink: "https://www.netflix.com/title/484369", huluLink: "N/A", primeLink: "https://www.amazon.com/gp/product/B07XF831XH?camp=1789&creativeASIN=B07XF831XH&ie=UTF8&linkCode=xm2&tag=justwatch09-20", actorName: "Bruce Campbell, Ellen Sandweiss, Richard DeManincor", movieDetail: "Five friends travel to a cabin in the woods, where they unknowingly release flesh-possessing demons."),
    Movie(movieName: "Killing Them Softly", movieImageName: "killingThemSoftly_poster", movieRate: "6.2 ", imdbLink: "https://www.imdb.com/title/tt1764234/?ref_=nv_sr_srsg_0", youtubeLink: "N/A", netflixLink: "https://www.netflix.com/title/70209252", huluLink: "N/A", primeLink: "https://www.amazon.com/gp/product/B00BJOCX24?camp=1789&creativeASIN=B00BJOCX24&ie=UTF8&linkCode=xm2&tag=justwatch09-20", actorName: "Brad Pitt, Ray Liotta, Richard Jenkins", movieDetail: "Jackie Cogan is an enforcer hired to restore order after three dumb guys rob a Mob protected card game, causing the local criminal economy to collapse."),
    Movie(movieName: "World War Z", movieImageName: "worldWarZ_poster", movieRate: "7.0 ", imdbLink: "https://www.imdb.com/title/tt0816711/?ref_=nv_sr_srsg_0", youtubeLink: "https://www.youtube.com/watch?v=PLYzc4K4a6o", netflixLink: "N/A", huluLink: "N/A", primeLink: "https://www.amazon.com/gp/product/B00F91H666?camp=1789&creativeASIN=B00F91H666&ie=UTF8&linkCode=xm2&tag=justwatch09-20", actorName: "Brad Pitt, Mireille Enos, Daniella Kertesz", movieDetail: "Former United Nations employee Gerry Lane traverses the world in a race against time to stop a zombie pandemic that is toppling armies and governments and threatens to destroy humanity itself."),
    Movie(movieName: "Interview With the Vampire", movieImageName: "interviewWithTheVampire_poster", movieRate: "7.6 ", imdbLink: "https://www.imdb.com/title/tt0110148/?ref_=nv_sr_srsg_0", youtubeLink: "https://www.youtube.com/watch?v=X-Kib-WiIms", netflixLink: "N/A", huluLink: "N/A", primeLink: "https://www.amazon.com/gp/product/B001E6X4W0?camp=1789&creativeASIN=B001E6X4W0&ie=UTF8&linkCode=xm2&tag=justwatch09-20", actorName: "Brad Pitt, Tom Cruise, Antonio Banderas", movieDetail: "A vampire tells his epic life story: love, betrayal, loneliness, and hunger.")
]
    
//    [Movie(movieName: "m1", movieRate: "9.0", imdbLink: "", youtubeLink: "", primeLink: "", netflixLink: "", movieDetail: "Aha"),
//             Movie(movieName: "m2", movieRate: "8.0", imdbLink: "", youtubeLink: "a", primeLink: "b", netflixLink: "", movieDetail: "Aha")]

let newMovieArray:Array<Int> = [1, 2, 20, 21, 25, 26]
let leavingMovieArray:Array<Int> = [22, 23, 27, 28]
