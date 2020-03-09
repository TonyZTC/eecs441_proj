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
    Movie(movieName: "Train to Busan", movieImageName: "trainToBusan_poster", movieRate: "7.5", imdbLink: "https://www.imdb.com/title/tt5700672/", youtubeLink: "https://www.youtube.com/watch?v=kG-8yx9z0Cg", primeLink: "https://www.amazon.com/gp/video/detail/B01N2POCJX/ref=atv_dl_rdr", netflixLink: "https://www.netflix.com/browse/genre/8711?jbv=80117824&jbp=0&jbr=1", movieDetail: "While a zombie virus breaks out in South Korea, passengers struggle to survive on the train from Seoul to Busan."),
    Movie(movieName: "Color out of Space", movieImageName: "colorOutOfSpace_poster", movieRate: "6.2", imdbLink: "https://www.google.com/search?q=color+out+of+space&rlz=1C5CHFA_enUS880US880&oq=color+out+of+space&aqs=chrome..69i57j0l4j69i60j69i61l2.2692j1j7&sourceid=chrome&ie=UTF-8", youtubeLink: "https://www.youtube.com/watch?v=mHhhGviLpSQ", primeLink: "https://www.amazon.com/gp/product/B08463G4KJ?camp=1789&creativeASIN=B08463G4KJ&ie=UTF8&linkCode=xm2&tag=justwatch09-20", netflixLink: "N/A", movieDetail: "A secluded farm is struck by a strange meteorite which has apocalyptic consequences for the family living there and possibly the world."),
    Movie(movieName: "Doctor Sleep", movieImageName: "doctorSleep_poster", movieRate: "7.4", imdbLink: "https://www.imdb.com/title/tt5606664/", youtubeLink: "https://www.youtube.com/watch?v=xLFc-H2WKgQ", primeLink: "https://www.amazon.com/gp/product/B0811K6W1K?camp=1789&creativeASIN=B0811K6W1K&ie=UTF8&linkCode=xm2&tag=justwatch09-20", netflixLink: "N/A", movieDetail: "Years following the events of \"The Shining,\" a now-adult Dan Torrance must protect a young girl with similar powers from a cult known as The True Knot, who prey on children with powers to remain immortal."),
    Movie(movieName: "Villains", movieImageName: "villains_poster", movieRate: "6.2", imdbLink: "https://www.imdb.com/title/tt6378710/", youtubeLink: "https://www.youtube.com/watch?v=UnKo4lL5-Ew", primeLink: "https://www.amazon.com/gp/product/B082P9YFMV?camp=1789&creativeASIN=B082P9YFMV&ie=UTF8&linkCode=xm2&tag=justwatch09-20", netflixLink: "N/A", movieDetail: "After a pair of amateur criminals break into a suburban home, they stumble upon a dark secret that two sadistic homeowners will do anything to keep from getting out."),
    Movie(movieName: "What We Do in the Shadows", movieImageName: "whatWeDoInTheShadows_poster", movieRate: "7.7", imdbLink: "https://www.imdb.com/title/tt3416742/", youtubeLink: "https://www.youtube.com/watch?v=mzuNjOEwOLk", primeLink: "https://www.amazon.com/gp/product/B00VVXH7TC?camp=1789&creativeASIN=B00VVXH7TC&ie=UTF8&linkCode=xm2&tag=justwatch09-20", netflixLink: "N/A", movieDetail: "Viago, Deacon and Vladislav are vampires who are finding that modern life has them struggling with the mundane - like paying rent, keeping up with the chore wheel, trying to get into nightclubs and overcoming flatmate conflicts."),
    Movie(movieName: "Girl on the Third Floor", movieImageName: "girlOnTheThirdFloor_poster", movieRate: "4.7", imdbLink: "https://www.imdb.com/title/tt9026184/", youtubeLink: "https://www.youtube.com/watch?v=OtD_RjMzYHo", primeLink: "https://www.amazon.com/gp/product/B07WXK26TK?camp=1789&creativeASIN=B07WXK26TK&ie=UTF8&linkCode=xm2&tag=justwatch09-20", netflixLink: "https://www.netflix.com/watch/81082119?trackId=13752289&tctx=0%2C0%2Cdf9551547eb0a20284dd111d212b9a6dc9faa052%3Aae910f6743f862ff4d818d8ef0a746ed09572a44%2C%2C", movieDetail: "Don Koch tries to renovate a rundown mansion with a sordid history for his growing family, only to learn that the house has other plans."),
    Movie(movieName: "Ready or Not", movieImageName: "readyOrNot_poster", movieRate: "6.8", imdbLink: "https://www.imdb.com/title/tt7798634/", youtubeLink: "https://www.youtube.com/watch?v=FRo-T87hTKU", primeLink: "https://www.amazon.com/gp/product/B07WN98L3H?camp=1789&creativeASIN=B07WN98L3H&ie=UTF8&linkCode=xm2&tag=justwatch09-20", netflixLink: "N/A", movieDetail: "A bride's wedding night takes a sinister turn when her eccentric new in-laws force her to take part in a terrifying game."),
    Movie(movieName: "A Quiet Place", movieImageName: "aQuietPlace_poster", movieRate: "7.5", imdbLink: "https://www.imdb.com/title/tt6644200/", youtubeLink: "N/A", primeLink: "https://www.amazon.com/gp/product/B07BYWWF4D?camp=1789&creativeASIN=B07BYWWF4D&ie=UTF8&linkCode=xm2&tag=justwatch09-20", netflixLink: "N/A", movieDetail: "In a post-apocalyptic world, a family is forced to live in silence while hiding from monsters with ultra-sensitive hearing."),
    Movie(movieName: "Zombieland", movieImageName: "zombieland_poster", movieRate: "7.6", imdbLink: "https://www.imdb.com/title/tt1156398/", youtubeLink: "https://www.youtube.com/watch?v=F_FncB-OSic", primeLink: "https://www.amazon.com/gp/video/detail/B07Z7VFST8/ref=atv_dl_rdr", netflixLink: "N/A", movieDetail: "A shy student trying to reach his family in Ohio, a gun-toting tough guy trying to find the last Twinkie, and a pair of sisters trying to get to an amusement park join forces to travel across a zombie-filled America."),
    Movie(movieName: "Polaroid", movieImageName: "polaroid_poster", movieRate: "5.1", imdbLink: "https://www.imdb.com/title/tt5598292/", youtubeLink: "https://www.youtube.com/watch?v=fvUeH8Z_yTA", primeLink: "https://www.amazon.com/gp/video/detail/B07XHZZ97D/ref=atv_dl_rdr", netflixLink: "N/A", movieDetail: "High school loner Bird Fitcher has no idea what dark secrets are tied to the Polaroid camera she finds. It doesn't take long to discover that those who have their picture taken with it, soon die."),
    Movie(movieName: "Us", movieImageName: "us_poster", movieRate: "6.9", imdbLink: "https://www.imdb.com/title/tt6857112/", youtubeLink: "https://www.youtube.com/watch?v=WCVhThcoxPM", primeLink: "https://www.amazon.com/gp/video/detail/B07PH3P8KM/ref=atv_dl_rdr", netflixLink: "N/A", movieDetail: "A family's serene beach vacation turns to chaos when their doppelg_ngers appear and begin to terrorize them."),
    Movie(movieName: "Ma", movieImageName: "ma_poster", movieRate: "5.6", imdbLink: "https://www.imdb.com/title/tt7958736/", youtubeLink: "https://www.youtube.com/watch?v=TBb2K7r6Pqo", primeLink: "https://www.amazon.com/gp/video/detail/B07SPFX1LK/ref=atv_dl_rdr", netflixLink: "N/A", movieDetail: "A lonely woman befriends a group of teenagers and decides to let them party at her house. Just when the kids think their luck couldn't get any better, things start happening that make them question the intention of their host."),
    Movie(movieName: "Cabin in the Woods", movieImageName: "cabinInTheWoods_poster", movieRate: "7.0", imdbLink: "https://www.imdb.com/title/tt1259521/", youtubeLink: "https://www.youtube.com/watch?v=mfuIaP3undc", primeLink: "https://www.amazon.com/gp/video/detail/B07WC7Z1ZB/ref=atv_dl_rdr", netflixLink: "N/A", movieDetail: "Five friends go for a break at a remote cabin, where they get more than they bargained for, discovering the truth behind the cabin in the woods."),
    Movie(movieName: "Insidious", movieImageName: "insidious_poster", movieRate: "6.8", imdbLink: "https://www.imdb.com/title/tt1591095/", youtubeLink: "https://www.youtube.com/watch?v=WQt5iUPgmDU", primeLink: "https://www.amazon.com/gp/video/detail/B00BR0XHMU/ref=atv_dl_rdr", netflixLink: "https://www.netflix.com/watch/70142542?trackId=13752289&tctx=0%2C0%2C77ae9058eb4360b5cb65246013353fa335a2d9bb%3Aae4a0edc7fc028df2f3d1d0748c386a90225076f%2C%2C", movieDetail: "A family looks to prevent evil spirits from trapping their comatose child in a realm called The Further."),
    Movie(movieName: "Get Out", movieImageName: "getOut_poster", movieRate: "7.7", imdbLink: "https://www.imdb.com/title/tt5052448/", youtubeLink: "https://www.youtube.com/watch?v=YfLSryEaAfw", primeLink: "https://www.amazon.com/gp/video/detail/B06Y3Y7Z7K/ref=atv_dl_rdr", netflixLink: "N/A", movieDetail: "A young African-American visits his white girlfriend's parents for the weekend, where his simmering uneasiness about their reception of him eventually reaches a boiling point."),
    Movie(movieName: "Apocalypse Now", movieImageName: "apocalypseNow_poster", movieRate: "8.4", imdbLink: "https://www.imdb.com/title/tt0078788/", youtubeLink: "https://www.youtube.com/watch?v=P-OFL64BNgs", primeLink: "https://www.amazon.com/gp/video/detail/B07X4V1TWQ/ref=atv_dl_rdr", netflixLink: "N/A", movieDetail: "A U.S. Army officer serving in Vietnam is tasked with assassinating a renegade Special Forces Colonel who sees himself as a god."),
    Movie(movieName: "The Recall", movieImageName: "theRecall_poster", movieRate: "4.5", imdbLink: "https://www.imdb.com/title/tt5669936/", youtubeLink: "http://www.youtube.com/watch?v=AUKJuXI5P-Y", primeLink: "https://www.amazon.com/gp/video/detail/B0721LC831/ref=atv_dl_rdr", netflixLink: "https://www.netflix.com/watch/81090899?trackId=13752289&tctx=0%2C0%2C3297fa2e64fbeb409dd569f5f2cefdee668231c0%3Afd7a507b06fb885be71c5c6530251266a8c3ed45%2C%2C", movieDetail: "When five friends vacation at a remote lake house they expect nothing less than a good time, unaware that planet Earth is under an alien invasion and mass-abduction."),
    Movie(movieName: "Wrinkles the Clown", movieImageName: "wrinklesTheCrown_poster", movieRate: "4.8", imdbLink: "https://www.imdb.com/title/tt9097270/", youtubeLink: "https://www.youtube.com/watch?v=x8IVIruK1rM", primeLink: "N/A", netflixLink: "N/A", movieDetail: "In Florida, parents can hire Wrinkles the Clown to scare their misbehaving children."),
    Movie(movieName: "The Wind", movieImageName: "theWind_poster", movieRate: "5.5", imdbLink: "https://www.imdb.com/title/tt8426594/", youtubeLink: "https://www.youtube.com/watch?v=zZqR4XRhU5g", primeLink: "https://www.amazon.com/gp/video/detail/B07PQ96M9Y/ref=atv_dl_rdr", netflixLink: "N/A", movieDetail: "A plains-woman faces the harshness and isolation of the untamed land in the Western frontier of the late 1800s."),
    Movie(movieName: "Stay Out Stay Alive", movieImageName: "stayOutStayAlive_poster", movieRate: "3.9", imdbLink: "https://www.imdb.com/title/tt5956016/", youtubeLink: "https://www.youtube.com/watch?v=DxwyMHFX_Eo", primeLink: "https://www.amazon.com/gp/video/detail/B07ZJNRTLY/ref=atv_dl_rdr", netflixLink: "N/A", movieDetail: "Shadowed by a haunting presence in the redwood forest, five young hikers discover an abandoned goldmine dating back to the Gold Rush and descend into madness and greed as the pursuit of easy riches consumes them.")
]
    
//    [Movie(movieName: "m1", movieRate: "9.0", imdbLink: "", youtubeLink: "", primeLink: "", netflixLink: "", movieDetail: "Aha"),
//             Movie(movieName: "m2", movieRate: "8.0", imdbLink: "", youtubeLink: "a", primeLink: "b", netflixLink: "", movieDetail: "Aha")]

let newMovieArray:Array<Int> = [1, 2, 3, 4, 7, 8, 10, 13]
let leavingMovieArray:Array<Int> = [0, 6, 9, 10, 11, 12, 17, 18, 19]

var searchResult: [Int] = []