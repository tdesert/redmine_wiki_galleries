Redmine Wiki Galleries
==========================

Redmine plugin for Lightbox 2.0 galleries support in wiki pages.

* Ruby version: 1.8.7 or higher
* Redmine version : 2.3.2 or higher

## Install

Go to your redmine *plugins* folder and clone this repo.
Restart your webserver.


## Usage

In your Redmine wiki pages, use the following macro to create galleries with attachment files:
	
	{{gallery("attachment_1", "attachment_2", ...)}}

This will create a lightbox gallery with the provided attachment files.

## TODO

* Support for inline single images
