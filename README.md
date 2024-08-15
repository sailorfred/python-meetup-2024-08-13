# python-meetup-2024-08-13
Jinja2 demo code for Python Meetup on 2024-08-13

Simple examples of how to use the [Jinja2](https://jinja.palletsprojects.com/en/3.1.x/)
templating system, with the glaring exception of not demonstrating block or extend.

This will run on systems with **make** and **python3.11**.

Run **make demo1** through **make demo6** to progressively show features of Jinja2.

demo6 is a simple madlib that shows how to extract the variables
from a template.  This is useful so that the madlib template defines
everything needed to play a game, without needing to explicitly list
the words to be replaced.
