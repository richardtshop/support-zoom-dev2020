# ASCII Art

1. Write a Ruby program that prompts a person to enter a number, and then outputs a triangle of asterisks of that height and length.
   > Hint: You should create a class called `AsciiArt` with a `draw(number)` method.

**Sample IO**

<table>
  <tr>
    <td>
Input
</td>
    <td>
Output
</td>
    <td>
Console Log
</td>
  </tr>
  <tr>
    <td>

```
1
```

</td>
    <td>

```
*
```

</td>
    <td>

```
Enter a number: 1
*
```

</td>
  </tr>
  <tr>
    <td>

```
2
```

</td>
    <td>

```
*
**
```

</td>
    <td>

```
Enter a number: 2
*
**
```

</td>
  </tr>
  <tr>
    <td>

```
3
```

</td>
    <td>

```
*
**
***
```

</td>
    <td>

```
Enter a number: 3
*
**
***
```

</td>
  </tr>
  <tr>
    <td>

```
0
```

</td>
    <td>

```

```

</td>
    <td>

```
Enter a number: 0
```

</td>
  </tr>
</table>

2. Make a commit, and then update your program so that it outputs a triangle of asterisks that is aligned on the right side.

**Sample IO**

<table>
  <tr>
    <td>
Input
</td>
    <td>
Output
</td>
    <td>
Console Log
</td>
  </tr>
  <tr>
    <td>

```
1
```

</td>
    <td>

```
*
```

</td>
    <td>

```
Enter a number: 1
*
```

</td>
  </tr>
  <tr>
    <td>

```
2
```

</td>
    <td>

```
 *
**
```

</td>
    <td>

```
Enter a number: 2
 *
**
```

</td>
  </tr>
  <tr>
    <td>

```
3
```

</td>
    <td>

```
  *
 **
***
```

</td>
    <td>

```
Enter a number: 3
  *
 **
***
```

</td>
  </tr>
  <tr>
    <td>

```
5
```

</td>
    <td>

```
    *
   **
  ***
 ****
*****
```

</td>
    <td>

```
Enter a number: 5
    *
   **
  ***
 ****
*****
```

</td>
  </tr>
  <tr>
    <td>

```
0
```

</td>
    <td>

```

```

</td>
    <td>

```
Enter a number: 0
```

</td>
  </tr>
</table>

3. Make a commit, and then update your program so that it draws a triangle of asterisks that is centered.

> Hint: Add a space between each asterisk to help allow you to center the rows.

**Sample IO**

<table>
  <tr>
    <td>
Input
</td>
    <td>
Output
</td>
    <td>
Console Log
</td>
  </tr>
  <tr>
    <td>

```
1
```

</td>
    <td>

```
*
```

</td>
    <td>

```
Enter a number: 1
*
```

</td>
  </tr>
  <tr>
    <td>

```
2
```

</td>
    <td>

```
 *
* *
```

</td>
    <td>

```
Enter a number: 2
 *
* *
```

</td>
  </tr>
  <tr>
    <td>

```
3
```

</td>
    <td>

```
  *
 * *
* * *
```

</td>
    <td>

```
Enter a number: 3
  *
 * *
* * *
```

</td>
  </tr>
  <tr>
    <td>

```
5
```

</td>
    <td>

```
    *
   * *
  * * *
 * * * *
* * * * *
```

</td>
    <td>

```
Enter a number: 5
    *
   * *
  * * *
 * * * *
* * * * *
```

</td>
  </tr>
  <tr>
    <td>

```
0
```

</td>
    <td>

```

```

</td>
    <td>

```
Enter a number: 0
```

</td>
  </tr>
</table>

4. Make a commit, and then update your program so that it draws a diamond of asterisks that is centered, with a maximum width of the entered number.

> Hint: It might be helpful to create a helper method.

**Sample IO**

<table>
  <tr>
    <td>
Input
</td>
    <td>
Output
</td>
    <td>
Console Log
</td>
  </tr>
  <tr>
    <td>

```
1
```

</td>
    <td>

```
*
```

</td>
    <td>

```
Enter a number: 1
*
```

</td>
  </tr>
  <tr>
    <td>

```
2
```

</td>
    <td>

```
 *
* *
 *
```

</td>
    <td>

```
Enter a number: 2
 *
* *
 *
```

</td>
  </tr>
  <tr>
    <td>

```
3
```

</td>
    <td>

```
  *
 * *
* * *
 * *
  *
```

</td>
    <td>

```
Enter a number: 3
  *
 * *
* * *
 * *
  *
```

</td>
  </tr>
  <tr>
    <td>

```
4
```

</td>
    <td>

```
   *
  * *
 * * *
* * * *
 * * *
  * *
   *
```

</td>
    <td>

```
Enter a number: 4
   *
  * *
 * * *
* * * *
 * * *
  * *
   *
```

</td>
  </tr>
  <tr>
    <td>

```
5
```

</td>
    <td>

```
    *
   * *
  * * *
 * * * *
* * * * *
 * * * *
  * * *
   * *
    *
```

</td>
    <td>

```
Enter a number: 5
    *
   * *
  * * *
 * * * *
* * * * *
 * * * *
  * * *
   * *
    *
```

</td>
  </tr>
  <tr>
    <td>

```
0
```

</td>
    <td>

```

```

</td>
    <td>

```
Enter a number: 0
```

</td>
  </tr>
</table>
