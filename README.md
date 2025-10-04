<a id="readme-top"></a>

<!-- SHIELDS -->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]

<!-- HEADER -->



<!-- ABOUT -->
## About The Project
[![Athena Award Badge](https://img.shields.io/endpoint?url=https%3A%2F%2Faward.athena.hackclub.com%2Fapi%2Fbadge)](https://award.athena.hackclub.com?utm_source=readme)


Eat. Sleep. Repeat.
<br>


[Game in progress] this is a little story I made this while having a bad day so don't take it too seriously, it's more about the mood than the actual story.  The idea is that you play as yourself in your little house doing stuff everyday to keep yourself alive.  At some point changes are going to take place and I haven't thought that out yet but I want to keep it lighthearted since a lot of these games gravitate towards psychological horror. 

wasd movement

space dialogue

What I learnt:
A LOT. I realize you learn a lot more when you're not just blindly following a tutorial from start to end and have some experience already. What I struggled the most with was the back and forth between different nodes with signals and functions, which tend to get messy so you should be careful with through which nodes the signals go. I learnt to use export variables, the dialoguemanager addon, global variables and signals.
### Built Using
I used the Ouch! CLI tool for decompression of files <br />
This project was built using one simple, yet powerful language.<br />
It required a lot of workarounds, but it was a pleasure to use it
* [![GDScript][Godot]][Godot-url]
* [![Ouch!][Ouch-shield]][Ouch-url]

<p align="right">(<a href="#readme-top">top</a>)</p>

<!-- GETTING STARTED -->
## Getting Started
How to install and use this software? It's easy!

### Installation
You can either download it from the [Godot Asset Library](https://godotengine.org/asset-library/asset/3484).
<br />Or you can manually install it, here's how to do it!
1. Clone the repository
    ```sh
    git clone https://github.com/BudzioT/Godot_Super-Wakatime.git
    ```
2. Go into your project
3. Insert the entire `./addons` folder into your project `res://` directory

<p align="right">(<a href="#readme-top">top</a>)</p>

<!-- USAGE -->
## Usage
Don't know how to use this plugin? Here are the steps:
1. Turn on the plugin in your plugins. In your `Project -> Project Settings -> Plugins -> `Click the `Enable` checkbox near this plugin
2. If prompted for API key, provide it from Wakatime website
3. if there is an issue with it, please manually create `~/.wakatime.cfg` file with these contents:
    ```sh
    [settings]
    api_key=xxxx
    ```
    Where xxxx is your api key
<br /><br />
If you are coming from High Seas used this:
    ```sh
    [settings]
    api_url = https://waka.hackclub.com/api
    api_key=xxxx
    ```
4. Wakatime CLI should have been installed automatically along with Ouch! Decompression library
5. Work on your project! You should see your results on either Wakatime or Hackatime!
6. You can also see your time at the bottom panel

<p align="right">(<a href="#readme-top">top</a>)</p>

<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- URLS -->
[contributors-shield]: https://img.shields.io/github/contributors/budziot/Godot_Super-Wakatime?style=for-the-badge
[contributors-url]: https://github.com/BudzioT/Godot_Super-Wakatime/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/budziot/Godot_Super-Wakatime?style=for-the-badge
[forks-url]: https://github.com/BudzioT/Godot_Super-Wakatime/forks
[stars-shield]: https://img.shields.io/github/stars/budziot/Godot_Super-Wakatime?style=for-the-badge
[stars-url]: https://github.com/BudzioT/Godot_Super-Wakatime/stargazers
[issues-shield]: https://img.shields.io/github/issues/budziot/Godot_Super-Wakatime?style=for-the-badge
[issues-url]: https://github.com/BudzioT/Godot_Super-Wakatime/issues
[license-shield]: https://img.shields.io/github/license/budziot/Godot_Super-Wakatime?style=for-the-badge
[license-url]: https://github.com/BudzioT/Godot_Super-Wakatime/blob/master/addons/godot_super-wakatime/LICENSE
[product-screenshot]: https://cloud-j4wibbzz7-hack-club-bot.vercel.app/0image.png
[product-logo]: https://cloud-j4wibbzz7-hack-club-bot.vercel.app/2godotwaka2.png
[Godot]: https://img.shields.io/badge/Godot%20Engine-478CBF?logo=godotengine&logoColor=fff&style=flat
[Godot-url]: https://godotengine.org/
[Ouch-shield]: https://img.shields.io/badge/Ouch!-tool-blue?label=Ouch!
[Ouch-url]: https://github.com/ouch-org/ouch
[time-screenshot]: https://cloud-l88kldf50-hack-club-bot.vercel.app/0image.png
