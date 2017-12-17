<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
<title>Move.java</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<style type="text/css">
<!--
body {color: #a9b7c6; background-color: #2b2b2b; font-family: Monospaced}
pre {color: #a9b7c6; background-color: #2b2b2b; font-family: Monospaced}
table {color: #888888; background-color: #313335; font-family: Monospaced}
.comment {color: #808080}
.whitespace {color: #505050}
.ST0 {color: #ffc66d; font-family: Monospaced; font-style: italic}
.ST1 {color: #9876aa; font-family: Monospaced; font-style: italic}
.number {color: #6897bb}
.ST2 {font-family: Monospaced; font-style: italic}
.literal {color: #cc7832}
-->
</style>
</head>
<body>
<table width="100%"><tr><td align="center">/Users/Yannick/Documents/Informatik/StarShooter/src/Move/Move.java</td></tr></table>
<pre>
 1 <span class="comment">/*</span>
 2 <span class="comment"> * To change this license header, choose License Headers in Project Properties.</span>
 3 <span class="comment"> * To change this template file, choose Tools | Templates</span>
 4 <span class="comment"> * and open the template in the editor.</span>
 5 <span class="comment"> */</span>
 6 <span class="literal">package</span> Move;
 7 
 8 <span class="literal">import</span> java.awt.DisplayMode;
 9 <span class="literal">import</span> java.awt.GraphicsDevice;
10 <span class="literal">import</span> java.awt.GraphicsEnvironment;
11 <span class="literal">import</span> java.awt.event.KeyEvent;
12 <span class="literal">import</span> java.util.logging.Level;
13 <span class="literal">import</span> java.util.logging.Logger;
14 <span class="literal">import</span> javax.swing.JFrame;
15 
16 
17 <span class="literal">public</span> <span class="literal">class</span> Move {
18     
19     <span class="literal">public</span> <span class="literal">static</span> <span class="literal">void</span> <span class="ST0">main</span>(String[] args) {
20                  
21        Player player = <span class="literal">new</span> Player(<span class="number">300</span>, <span class="number">300</span>, <span class="number">50</span>, <span class="number">1280</span>, <span class="number">720</span>);
22         Background bg = <span class="literal">new</span> Background(<span class="number">500</span>);
23         
24         
25         
26         
27     Frame f = <span class="literal">new</span> Frame(player, bg);
28      f.setDefaultCloseOperation(JFrame.<span class="ST1">EXIT_ON_CLOSE</span>);
29      f.setSize(<span class="number">1280</span>,<span class="number">720</span>);
30      f.setUndecorated(<span class="literal">true</span>);
31      f.setLocationRelativeTo(<span class="literal">null</span>);
32      <span class="comment">//*f.setVisible(true)</span>
33      f.setResizable(<span class="literal">false</span>);  
34      DisplayMode <span class="comment">displaymode</span> = <span class="literal">new</span> DisplayMode (<span class="number">1280</span>, <span class="number">720</span>, <span class="number">16</span>, <span class="number">60</span>);
35      GraphicsEnvironment environment = GraphicsEnvironment.<span class="ST2">getLocalGraphicsEnvironment</span>();
36      GraphicsDevice device = environment.getDefaultScreenDevice();
37      
38      
39      
40       device.setFullScreenWindow(f);
41     <span class="comment">// device.setDisplayMode(displaymode);</span>
42      
43     f.makeStrat();
44     
45     
46      <span class="literal">long</span> lastFrame = System.<span class="ST2">currentTimeMillis</span>();
47      
48      <span class="literal">while</span> (<span class="literal">true</span>) {
49          
50          
51         <span class="literal">if</span>(Keyboard.<span class="ST2">isKeyDown</span>(KeyEvent.<span class="ST1">VK_ESCAPE</span>))System.<span class="ST2">exit</span>(<span class="number">0</span>);
52          
53             <span class="literal">long</span> thisFrame = System.<span class="ST2">currentTimeMillis</span>();
54             <span class="literal">float</span> timeSinceLastFrame = ((<span class="literal">float</span>)(thisFrame - lastFrame))/<span class="number">1000f</span>;
55             lastFrame = thisFrame;
56             bg.update(timeSinceLastFrame);
57             player.update(timeSinceLastFrame);
58             
59             
60             
61             
62              
63              
64              
65              f.repaintScreen();
66              
67             <span class="literal">try</span> { 
68              Thread.<span class="ST2">sleep</span>(<span class="number">15</span>);
69          } <span class="literal">catch</span> (InterruptedException e) {
70              Logger.<span class="ST2">getLogger</span>(Move.<span class="literal">class</span>.getName()).log(Level.<span class="ST1">SEVERE</span>, <span class="literal">null</span>, e);
71          }
72          
73          
74          
75      }
76 }
77     
78 }
79 
</pre></body>
</html>
