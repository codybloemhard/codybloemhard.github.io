// https://typst.app/universe/package/modern-cv/
// #import "@preview/modern-cv:0.7.0": *
#import "lib.typ": *

#show: resume.with(
  author: (
    firstname: "Cody",
    lastname: "Bloemhard",
    email: "codybloemhard@gmail.com",
    homepage: "codyb.xyz",
    // phone: "(+1) 111-111-1111",
    github: "codybloemhard",
    // birth: "January 1, 1990",
    linkedin: "codybloemhard",
    address: "Utrecht, The Netherlands",
    positions: (
      "Software Engineer",
    ),
  ),
  date: datetime.today().display(),
  colored-headers: true,
  show-footer: false,
)

= Summary

#resume-item[
    I have worked on all kinds of software including 2D and 3D games, game engines, rendering engines,
    GPGPU, command line applications, open source libraries, android apps, data processing tools,
    experimental prototypes, interactive electronic devices, AI's, procedural generated content
    and algorithmic art.
    I support the philosophy, use and development of free and open source software.
    My favourite programming language is Rust.
]

= Education

#resume-entry(
  title: "BSc in Computer Science",
  location: "Utrecht",
  // date: "August 2014 - May 2019",
  description: "Utrecht University",
)

#resume-entry(
    title: "Propedeuse Bachelor of Creative Media and Game Technologies, Game Development",
    location: "Hilversum",
    description: "HKU (University of the Arts Utrecht)",
)

#resume-item[
    - During this time I learned to work with designers, artists, end users
      and other less technical people.
]

= Experience

#resume-entry(
  title: "Software Engineer",
  location: "Utrecht",
  // date: "2019 - Present",
  description: "Utrecht Companion to the Earth",
  title-link: "https://github.com/codybloemhard/uu-uce",
)

#resume-item[
    - Utrecht Companion to the earth is an app that aids Geo-science students.
      Our client was the Geo-science department of Utrecht University.
      My responsibility was optimizing big data for mobile use and building an Android app.
      Technologies used by me were Rust and Kotlin with Android Studio.
      We used Agile methodologies and test automation with CI.
]

// = Skills
= Exposure

#resume-skill-item(
  "Languages",
  (strong("Rust"), "C#", "Python", "C/C++", "Java", "Kotlin", "Haskell", "GLSL", "HTML/CSS",
  "Typst", "Latex"),
)
#resume-skill-item(
  "Frameworks/Libs",
  ("OpenGL", "OpenCL", "Unity3D", "Docker", "Bevy", "Monogame", "Arduino"),
)
#resume-skill-item(
  "Miscellaneous",
  (strong("Git"), "(neo)Vim", "Agile", "CI", "Arch/Artix/Void Linux"),
)
#resume-skill-item(
    "Spoken Languages", ("native: Nederlands", "professional: English", "learning: Japanese")
)

= Projects

#resume-entry(
  title: "paclog",
  location: [#github-link("codybloemhard/paclog")],
)
#resume-item[
  - [Rust] A CLI log inspection tool to query the pacman log file.
]

#resume-entry(
  title: "editimg",
  location: [#github-link("codybloemhard/editimg")],
)
#resume-item[
  - [Rust] A scriptable image editor optimised for the tiling window manager workflow.
]

#resume-entry(
  title: "stonks",
  location: [#github-link("codybloemhard/stonks")],
)
#resume-item[
  - [Rust] A CLI plain text accounting tool to track personal finance in a transactional database.
]

#resume-entry(
  title: "linux-rice",
  location: [#github-link("codybloemhard/linux-rice")],
)
#resume-item[
  - [Shell/C/...] Custom desktop environment by configuring and forking selected open source components.
]

#resume-entry(
  title: "termdaw",
  location: [#github-link("codybloemhard/termdaw")],
)
#resume-item[
  - [Rust] A CLI/TUI digital audio workstation (DAW) meant for algorithmic and AI music composition.
]

#resume-entry(
  title: "TheøryFrøg",
  location: [#link("https://codyb.xyz/theory-frog.html")],
)
#resume-item[
  - [Rust/WASM] static webapp to query music theory information.
]

#resume-entry(
  title: "music-theory",
  location: [#github-link("codybloemhard/music-theory")],
)
#resume-item[
  - [Rust] Library to process music theory objects and queries, with 100% test coverage.
]

#resume-entry(
  title: "GPGPU Pathtracer",
  location: [#github-link("codybloemhard/clrays")],
)
#resume-item[
  - [Rust/C\#/OpenCL] GPU accelerated pathtracer with BVH and microfacets, algorithms implemented from academic papers.
]

#resume-entry(
  title: "Raytracer",
  location: [#github-link("codybloemhard/UU_Raytracer")],
)
#resume-item[
  - [C\#] With models, stratified sampled area lights, textures, stochastic glossy reflections, HDR skyboxes, multithreading.
]
