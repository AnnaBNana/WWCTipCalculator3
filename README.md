# WWCTipCalculator3

Bonus features: Slider bars to set your own tip amount and number of people in your party
The app will display the amount each person pays into the tip, plus the total amount each person contributes to the bill

Storyboard:
1. Add two sliders at the bottom with labels for tip amount and group size.
* Set starting, minimum, and maximum values.
2. Add another label to display the value of the group size.

Logic:
1. Sliders are connected to detect value changes.
2. Update the display whenever the tip slider slides. Cast the value to Int, calculate the min, mid, and max tips (minimum tip is the value of the slider minus five, mid tip is the value of the slider, maximum tip is the value of the slider plus five) then cast them to strings in order to change the display of the tip percentages.
3. Update the group size whenever the group slider slides.
4. Change calculations of the tip to use the tip percentages set by the user and divide them by the size of the group.
5. Calculations should be done every time the user presses a key pad or slides a slider.
