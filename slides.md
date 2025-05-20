---
# You can also start simply with 'default'
theme: apple-basic
# random image from a curated Unsplash collection by Anthony
# like them? see https://unsplash.com/collections/94734566/slidev
# some information about your slides (markdown enabled)
title: Brand your types!
# https://sli.dev/features/drawing
drawings:
  persist: false
# slide transition: https://sli.dev/guide/animations.html#slide-transitions
# enable MDC Syntax: https://sli.dev/features/mdc
mdc: true
favicon: 'images/favicon-32x32.png'
transition: slide-left
layout: intro-image
image: 'images/front.png'
---

<div class="absolute bottom-10 right-10">

📙[blog.theodorc.no](https://blog.theodorc.no)
🦋 [@theodorc.no](https://bsky.app/profile/theodorc.no) 

</div>

<img src="/images/dr.png" alt="DR" class="w-1/7 absolute top-10 right-10" />

<div class="absolute top-10 left-10">
  <span class="font-700">
    NDC Oslo 2025
  </span>
</div>

<div class="absolute bottom-10 border-2 border-white/20 bg-white/10
backdrop-blur-sm text-white p-4 rounded-lg">
  <h1>Brand your types!</h1>
  <p> Theodor René Carlsen, DR</p>
</div>

---
layout: intro-image-right
image: 'images/right.png'
---

# Programming languages

<ul class="marker:text-slate-400 space-y-6">
  <li> human(programmer)-computer interaction </li>
  <li> By humans, for humans</li>
  <li> Semantics! </li>
  <li> Strings </li>
</ul>


---
layout: image-left
image: 'images/abstract.png'
---

# Strings!

<ul class="marker:text-slate-400 space-y-6">
  <li> Easy! </li>
    <li> Readable! </li>
    <li> Printable! </li>
    <li> Can be used for anything! </li>
    <li> Can be anything! </li>
</ul>

---
layout: intro-image-right
image: 'images/a_bit_messy.png'
---

# Anything?

<v-clicks>

- "Theodor René Carlsen"
- "46957236"
- "true"
- "2025-05-14T15:03:28Z"
- ""
- "021197 42534"
- "Dalenar could see a highstorm approaching. Its clouds crested the horizon like a rising wave, dark, silent. It was still distant, but it would come. Furious and exact, highstorms were as inevitable as the rising sun. The wood lurched beneath his feet, and Dalenar reached reflexively for the tower’s rail. The battlefield stretched below him, a world of screaming men, metallic rings, and hissing bowstrings...."

</v-clicks>

---
layout: intro-image
image: 'images/tight.png'
class: flex items-center justify-center flex-col
---

<div v-click class="border-2 border-white/20 bg-white/10
backdrop-blur-sm text-white p-4 rounded-lg">


# Total functions

- Handle any possible input (within the type)
</div>




---
layout: image-right
image: 'images/right2.png'
---

# This is where branded types comes in!

* Add a compile time "tag" or "brand" to our string
* Works with any type, but great for strings and numbers

```ts
declare const brand: unique symbol
type Brand<T, B> = T & { [brand]: B }
type UUID = Brand<string, "UUID">
const id = "1234" as UUID
```


---
class: w-full
---

# Example

<div style="--slidev-code-font-size: 18px; --slidev-code-line-height: 24px;">

````md magic-move {lines:true}
```ts {1-5|1-10|1-14}
// utils.ts
function login(
  username: string,
  password: string
): boolean {
    doSomeLogic(username);
    const hash = calculateHash(password);
    return myBackendValidation(username, hash);
}

const username = "theo"
const password = "hunter2"
login(password, username); 
// No error(!) ^^
```
```ts {*|1-5|1-10|1-14}
// utils.ts
function login(
  username: Username,
  password: Password
): boolean {
    doSomeLogic(username);
    const hash = calculateHash(password);
    return myBackendValidation(username, hash);
}

const username = "theo" as Username
const password = "hunter2" as Password
login(password, username);
// Compile error^^
```
````
</div>



---
level: 2
---

<div style="--slidev-code-font-size: 16px; --slidev-code-line-height: 20px;">

````md magic-move {lines:true}
```ts
// brands.ts
declare const brand: unique symbol
declare type Brand<T, B> = T & { [brand]: B }

export type Username = Brand<string,"Username">
export type Password = Brand<string,"Password">
```

```ts {*|8-17|18-22|*}
// brands.ts
declare const brand: unique symbol
declare type Brand<T, B> = T & { [brand]: B }

export type Username = Brand<string,"Username">
export type Password = Brand<string,"Password">

// parse.ts
export function parsePassword(password: string): Password {
  if (password.length < 8) {
    throw new Error("Password must be at least 8 characters long")
  }
  return password.trim() as Password
}
export function isValidUsername(username: string): username is Username {
  return username.length > 0
}
const parsedPassword = parsePassword(password)
if (isValidUsername(username)) {
  login(username, parsePassword)
}
// do it manually or use a library (zod, io-ts, etc)
```
````

</div>

---
layout: statement
---

# Pollution

---
layout: two-cols
---

## App (Client)

<img src="/images/phone.png" alt="DR" class="w-1/2" />

::right::

## Article (Or teaser)
- `URL`
- Fetched from API
- Shared by many services

<v-clicks depth="2">

- Relative or absolute?
    - /nyheder/rød-grød-med-fløde
    - https://www.dr.dk/nyheder/rød-grød-med-fløde
    - both of course

</v-clicks>

<v-click>

- legacy reasons

</v-click>
<v-click>

- C'est la vie

</v-click>


---
class: text-2xl
layout: two-cols
---

<!-- <div style="--slidev-code-font-size: 24px; --slidev-code-line-height: 32px;"> -->


````md magic-move {lines:true}
```ts
// article.ts
function handleNavigation(url: string) {
  // validate your inputs
  if (url === "") {
    // handle invalid URL
  }
  if (isRelativeUrl(url)) {
    // handle relative URL
  }
  if (isAbsoluteUrl(url)) {
    // handle absolute URL
  }
  // our logic
}
// breakingArticle.ts
function addQueryParam(url: string) {
  // validate your inputs
  if (url === "") {
    // handle invalid URL
  }
  if (isRelativeUrl(url)) {
    // handle relative URL
  }
  if (isAbsoluteUrl(url)) {
    // handle absolute URL
  }
  // our logic
}
```

```ts
// article.ts
function handleNavigation(url: RelativeUrl) {
  // our logic
}
// externalLinkButton.ts
function addQueryParam(url: AbsoluteUrl) {
  // our logic
}
```
````

<v-click>
Tests!
</v-click>
::right::

````md magic-move {lines:true}
```ts
// shareButton.ts
function createShareableLink(
  url: string,
): string {
  // validate your inputs
  if (url === "") {
    // handle invalid URL
  }
  if (isRelativeUrl(url)) {
    // handle relative URL
  }
  if (isAbsoluteUrl(url)) {
    // handle absolute URL
  }
}
```
```ts
// shareButton.ts
function createShareableLink(
  url: Url,
): string {
  // validate your inputs
  if (isRelativeUrl(url)) {
    // handle relative URL
  }
  if (isAbsoluteUrl(url)) {
    // handle absolute URL
  }
}
```
```ts
// shareButton.ts
function createShareableLink(
  url: Url,
): string {
  // validate your inputs
  if (isRelativeUrl(url)) {
    // handle relative URL
  }
  if (isAbsoluteUrl(url)) {
    // handle absolute URL
  }
  if (isFirstBookOfTheStormlightArchiveWayOfKingsByBrandonSander(url)) {
    // handle special case
  }
}
```
````

<!-- </div> -->

---
layout: two-cols
layoutClass: gap-16
---

# Conclusion
<v-clicks>

- Type safety
- No runtime cost
- Still works as the underlying type
- Good for the environment!
- Parse, dont validate! 
- Do it manually or a library (zod, io-ts, etc)
- Clearer semantic than just a string, convenient for humans and LLMs

</v-clicks>

::right::
<div class="flex justify-center items-center h-full">

````md magic-move

```ts
declare const brand: unique symbol
type Brand<Type, BrandName> = Type & { [brand]: BrandName }
```

```ts
declare const brand: unique symbol
type Brand<Type, BrandName> = Type & { [brand]: BrandName }
type UUID = Brand<string,"UUID">
type Seconds = Brand<number, "Seconds">
type Milliseconds = Brand<number, "Milliseconds">
type Celcius = Brand<number, "Celcius">
type Euro = Brand<number, "Euro">
```
````
</div>

---
layout: intro-image
image: 'images/final.png'
---

# Brand your types!

<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<img src="/images/dr.png" alt="DR" class="w-1/6 absolute bottom-10 right-10" />

[blog.theodorc.no](https://blog.theodorc.no) · [Slides on GitHub: Theodorrene](https://github.com/theodorrene)

<PoweredBySlidev mt-10 />
