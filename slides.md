---
# You can also start simply with 'default'
theme: apple-basic
# random image from a curated Unsplash collection by Anthony
# like them? see https://unsplash.com/collections/94734566/slidev
# some information about your slides (markdown enabled)
title: Welcome to Slidev
info: |
  ## Slidev Starter Template
  Presentation slides for developers.

  Learn more at [Sli.dev](https://sli.dev)
# apply unocss classes to the current slide
class: text-center
# https://sli.dev/features/drawing
drawings:
  persist: false
# slide transition: https://sli.dev/guide/animations.html#slide-transitions
transition: slide-left
# enable MDC Syntax: https://sli.dev/features/mdc
mdc: true
favicon: 'images/favicon-32x32.png'
---

# Welcome to Slidev

Presentation slides for developers

<div @click="$slidev.nav.next" class="mt-12 py-1" hover:bg="white op-10">
  Press Space for next page <carbon:arrow-right />
</div>

<div class="abs-br m-6 text-xl">
  <button @click="$slidev.nav.openInEditor()" title="Open in Editor" class="slidev-icon-btn">
    <carbon:edit />
  </button>
  <a href="https://github.com/slidevjs/slidev" target="_blank" class="slidev-icon-btn">
    <carbon:logo-github />
  </a>
</div>

<!--
The last comment block of each slide will be treated as slide notes. It will be visible and editable in Presenter Mode along with the slide. [Read more in the docs](https://sli.dev/guide/syntax.html#notes)
-->

---
transition: fade-out
layout: intro-image
image: 'images/front.png'
---

<div class="absolute bottom-10 right-10">

📙[blog.theodorc.no](https://blog.theodorc.no)
🦋 [@theodorc.no](https://bsky.app/profile/theodorc.no) 

</div>

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
transition: fade-out
layout: image-right
image: 'images/right.png'
---

# Strings!

- Easy!
- Readable!
- Printable!
- Can be anything!
- Can be used for anything!


---
transition: fade-out
layout: bullets
class: text-white
---

# Anything!

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
transition: fade-out
layout: image-right
image: https://cover.sli.dev
---

# This is where branded types comes in!

* Add a compile time "tag" or "brand" to our string
* Works with any type, but lets focus on strings for now

```ts
declare const brand: unique symbol
declare type BrandedString<T> = string & { [brand]: T }
```


---
transition: fade-out
layout: center
---

# Simple examples

````md magic-move
```ts
// utils.ts
function validateUsernameAndPassword(
  username: string,
  password: string
): boolean {
    // your validation logic
    assertValid(username);
    assertValid(password);
    return myBackendValidation(username, password);
}

const username = "theo"
const password = "hunter2"
validateUsernameAndPassword(password, username);
```
```ts
// utils.ts
function validateUsernameAndPassword(
  username: Username,
  password: Password
): boolean {
    // your validation logic
    assertValid(username);
    assertValid(password);
    return myBackendValidation(username, password);
}

const username = "theo" as Username
const password = "hunter2" as Password
validateUsernameAndPassword(password, username);
// Compile error^^
```
````



---
transition: slide-up
level: 2
---

````md magic-move
```ts
// brands.ts
declare const brand: unique symbol
declare type BrandedString<T> = string & { [brand]: T }

export type Username = BrandedString<"Username">
export type Password = BrandedString<"Password">
```

```ts
// brands.ts
declare const brand: unique symbol
declare type BrandedString<T> = string & { [brand]: T }

export type UsernameString = BrandedString<"Username">
export type PasswordString = BrandedString<"Password">
```
````

---
transition: slide-up
level: 2
---

````md magic-move
```ts {*|6}
function processDeposit(
  amount: number,
  currency: string,
  account: string
): void {
  // validate your inputs
  // your deposit logic
}
```

```ts
function processDeposit(
  amount: SafeNumber,
  currency: CurrencyString,
  account: AccountID
): void {
  // your deposit logic
}
```
````

---
transition: fade-out
layout: two-cols
layoutClass: gap-16
---

# Conclusion
- Type safety
- No runtime cost
- Still works as the underlying type
- Parse, dont validate! 
- Dont let loose types poison your codebase
- Manually but supported in many libraries (like zod)
- More semantic than just a string, convenient for humans and LLMs

::right::
<div class="flex justify-center items-center h-full">

````md magic-move
```ts
declare const brand: unique symbol
type BrandedString<BrandName> = string & { [brand]: BrandName }
```

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
layout: center
class: text-center
---

# Takk for meg

[Documentation](https://sli.dev) · [GitHub](https://github.com/slidevjs/slidev) · [Showcases](https://sli.dev/resources/showcases)

<PoweredBySlidev mt-10 />
