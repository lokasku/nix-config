Config { 
     font        = "xft:Pragmata Pro-10"
   , bgColor     = "#2c2c2e"
   , fgColor     = "#f2f2f7"
   , position    = Top
   -- , border      = BottomB
   -- , borderColor = "#505050"

   , sepChar =  "%"   -- delineator between plugin names and straight text
   , alignSep = "}{"  -- separator between left-right alignment
   , template = " %battery%    %multicpu%    %coretemp%    %memory%    %dynnetwork% }{ %date% "

   , lowerOnStart =     True
   , hideOnStart =      False
   , allDesktops =      True
   , overrideRedirect = True
   , pickBroadest =     False
   , persistent =       True

   , commands = 
        -- network activity monitor (dynamic interface resolution)
        [ Run DynNetwork     [ "--template" , "NETW: <tx>kB/s / <rx>kB/s"
                             , "--Low"      , "1000"
                             , "--High"     , "5000"
                             , "--low"      , "#ffc9c9"
                             , "--normal"   , "#ffdada"
                             , "--high"     , "#ffefef"
                             ] 10

        -- cpu activity monitor
        , Run MultiCpu       [ "--template" , "CPU: <total0>% / <total1>%"
                             , "--Low"      , "50"
                             , "--High"     , "85"
                             , "--low"      , "#ffefef"
                             , "--normal"   , "#ffdada"
                             , "--high"     , "#ffc9c9"
                             ] 10

        -- cpu core temperature monitor
        , Run CoreTemp       [ "--template" , "TEMP: <core0>°C / <core1>°C"
                             , "--Low"      , "70"
                             , "--High"     , "80"
                             , "--low"      , "#ffefef"
                             , "--normal"   , "#ffdada"
                             , "--high"     , "#ffc9c9"
                             ] 50
                          
        -- memory usage monitor
        , Run Memory         [ "--template" ,"MEM: <usedratio>%"
                             , "--Low"      , "20"
                             , "--High"     , "90"
                             , "--low"      , "#f5f5f5"
                             , "--normal"   , "#e2e2e2"
                             , "--high"     , "#cccccc"
                             ] 10

        -- battery monitor
        , Run Battery        [ "--template" , "BAT: <acstatus>"
                             , "--Low"      , "20"
                             , "--High"     , "80"
                             , "--low"      , "#ff453b"
                             , "--normal"   , "#ff9f0a"
                             , "--high"     , "#5bf470"


                             , "--" -- battery specific options
                                       -- discharging status
                                       , "-o"	, "N:<left>% <timeleft> h"
                                       -- AC "on" status
                                       , "-O"	, "C:<left>% <timeleft> h"
                                       -- charged status
                                       , "-i"	, "F:<left>% <timeleft> h"
                             ] 50

        -- time and date indicator 
        --   (%F = y-m-d date, %a = day of week, %T = h:m:s time)
        , Run Date           "<fc=#ABABAB>%F (%a)</fc> <fc=cyan>%T</fc>" "date" 10
        ]
   }
