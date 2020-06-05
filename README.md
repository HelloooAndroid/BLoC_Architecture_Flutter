# BLoC_Architecture_Flutter (Counter Example)

Project explains counter example using BLoC Architecture 

## Getting Started

BloC (Business Logic Component) is an architecture pattern introduced by Google at their IO conference this year. The idea behind it is to have separated components (BloC components) containing only the business logic that is meant to be easily shared between different Dart apps.

<b>The goal of this library is to make it easy to separate presentation from business logic, facilitating testability and reusability.</b>

## Overview
When building production quality applications, managing state becomes critical.

As developers we want to:

- know what state our application is in at any point in time.
- easily test every case to make sure our app is responding appropriately.
- record every single user interaction in our application so that we can make data-driven decisions.
- work as efficiently as possible and reuse components both within our application and across other applications.
- have many developers seamlessly working within a single code base following the same patterns and conventions.
- develop fast and reactive apps.
Bloc was designed to meet all of those needs and many more.

## Components

![bloc_architecture](https://user-images.githubusercontent.com/53623174/83876303-467f5f00-a756-11ea-99cd-5dd074b44893.png)

### UI
Cotains UI of applicatiion and recreate itself when receive new state.

### BLoc
Contains Business Logic of the application. It applies business logic to current state, recreates new state and send it to UI

### Data
The data layer's responsibility is to retrieve/manipulate data from one or more sources.  

The data layer can be split into two parts:

#### 1.Data Provider
The data provider's responsibility is to provide raw data. The data provider should be generic and versatile.

#### 2.Repository
The repository layer is a wrapper around one or more data providers with which the Bloc Layer communicates.



## BLoC concepts
To master this architecture, before anything, you must know these different terms:
### State
The data of your application is currently showing
### Event
It is the action which is detected by application. Eg.Button click event
### Stream
This is considered as a medium through which data travels
### Sink
This is considered as a point where you receive or consume data from stream

  



## setState() vs Streams
Why we didn’t make use of the setState() to build that? Why he make use of streams?” The answer is straightforward: Performance and efficiency.  

<b>At each alteration that you make in a widget using the setState(), you not only will rebuild that specific widget, but ALL your UI, again, which means that, for a large and complex application that has a bunch of animations, composed widgets, some other showing info from an external API, it’s a huge lack of performance and can’t be allowed from a certain point of development.</b>

### So, the use of Streams is the more recommended?
Depends. When your widget component hierarchy small then ```setState()``` is very useful. Although, as soon as your application become to be more and more complex, one good way to handle the state of it it’s to make use of reactive programming and in case become even more complex, learn and apply the BLoC Architecture.
