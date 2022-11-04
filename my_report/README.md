# Lesson: Advanced Interaction Technologies & Applications

### First and Last Name: Anargyros Koutsovasilis
### University Registration Number: dpsd16052
### GitHub Personal Profile: https://github.com/koutsovasilis
### Advanced Interaction Tecnologies & Applications Github Personal Repository: https://github.com/koutsovasilis/Advanced-Interaction-Tecnologies-Applications-Individual-Assignment

# Introduction

# Summary


# 1st Deliverable
### 1.1 Video Capture
Αφού έγινε η εγκατάστηση του Processing , στην συνέχεια εγκαταστάθηκε η βιβλιοθήκη video και το gsstream. Μετά πήρα τον κώδικα του example 16_1 και στην συνέχεια άλλαξα το resolution σε 800x600

### 1.2 Video Recording
Δημιούργησα ένα video 10'' με εμένα και το αποθήκευσα μέσα στον φάκελο data της εφαρμογής. Μετά στην συνάρτηση setup() δήλωσα το βίντεο και το path του και χρησιμοποίησα το loop για να παίζει σε λούπα.

Μετά πήρα των κώδικα από το [παράδειγμα 16_2](http://learningprocessing.com/examples/chp16/example-16-02-ManipulateCapture)  και άλλαξα την μεταβλητή video σε 'movie' . Έτσι η συνάρτηση draw έγινε:
```
void draw() {
  background(255);

  // Tinting using mouse location
  tint(mouseX, mouseY, 255);

  // A video image can also be moved, rotated, tinted, resized just as with a PImage.
  translate(width/2,height/2);
  imageMode(CENTER);
  rotate(PI/4);
  image(movie, 0, 0, mouseX, mouseY);
}
```

### 1.3 QR code
Δημιουργήθηκε ένα QRcode από [αυτό](https://qrcode.kaywa.com/) το site. Και στην συνέχεια μελοτώντας το [παράδειγμα 15_1](http://learningprocessing.com/examples/chp15/example-15-01-drawimage) χρησιμοποιήθηκε η εντολή
```
loadImage("argyris.png")
```

ώστε να φορτώνει το QR Code  με το που ανοίγει η εφαρμ0ογή!

### 1.4 QR Code - Camera read
Για το 4ο παραδωτέο χρησιμοποιήθηκε ο κώδικας από το QRcodeExample και προστέθηκε το παρακάτω κομμάτι κώδικα ώστε όταν διαβάζει το QR μου τότε να ανοίγει σε λινκ το προφίλ μου στο github
```
if (runonce) { 
   if (statusMsg.equals("https://github.com/koutsovasilis")) {
    link("https://github.com/koutsovasilis");
    runonce = false;
  }
 }
 ```
 
 Η μεταβλητή runonce δηλώθηκε ως boolean με αρχικοποίηση true. Όταν τρέξει μια φορά γυρνάει σε false και δεν ξανατρέχει το if statement.

### 1.5 Augmented Reality
Για αυτό το παραδωτέο χρησιμοποιήθηκε ο κώδικας του παραδείγματος σε συνδιασμό με τον κώδικα για την ταινία. Προσθέθηκε αυτός ο κώδικας για να παίζει η ταινία όταν διαβάζει το λογότυπο Hiro
```
nya.beginTransform(0);
   scale(0.1,0.1,1);
    rotateZ(PI);
    translate(0,0,20);
   image(myMovie, -330, -160 , 850 , 650 );
  nya.endTransform();
   }
   
   void movieEvent(Movie m) {
  m.read();
```
# 2nd Deliverable


# 3rd Deliverable 


# Bonus 


# Conclusions


# Sources
