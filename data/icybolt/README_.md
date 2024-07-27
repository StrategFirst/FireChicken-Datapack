<div align="center" style="text-align:center; margin: auto;">

# 🧊 IcyBolt ⚡

</div>

## 📜 Lore

> Awaken from is long sleep, seeing is land ruined by players in need of his ice, his own resources, his own flesh being robbed. His broken heart filled with rage, he will now get rid of any one trying to make more arm to his territory.


## ⚙️ Global mechanics

### 0️⃣ 🧊🚶 Beginning
`✔️ Implemented`, `✔️ Tested`

The journey begin by simply stepping inside a packed ice biome.
This will unlock the first few achievement.


### 1️⃣ 🧊⛏️ Packed ice breaking 
`✔️ Implemented`, `✔️ Tested`

Upon breaking packed ice in ice spikes biome with at least an diamond pickaxe, you may earn some knowledge in form of an advancement.
There's curently 8 pages.

For each page the probability is compute folowing this formula :
> ` 0.52% + ( 3% · FortuneLevel ) `

The page won't drop sorted.

### 2️⃣ ⚡😠 Ambient anger
`✔️ Implemented`, `✔️ Tested`

If anyone without the advancment "Warming things up!", is currently inside an ice spikes biome, the weather will be force to thunder.

### 3️⃣ 🧊⛏️ Blue ice breaking 
`✔️ Implemented`, `✔️ Tested`

Upon breaking blue ice in ice spikes biome, you may found a suspicious ice block with an dragon egg inside. Further information down below in boss spawn mechanic.

| Fortune level | Probability | Equivalent stack |
|---------------|-------------|------------------|
| _None_        |   0.078 %   |        10        |
|  1            |    1.04 %   |       3⁄2        |
|  2            |    1.56 %   |       2⁄2        |
|  3            |    3.13 %   |       1⁄2        |

## 🐲 Boss mechanics

### ⬇️ Spawn
`✔️ Implemented`, `✔️ Tested`

After you succesfuly found a frozen dragon fossile ( further information in blue ice breaking part ). If you try to break it, it won't. If you are right clicking with a netherite pickaxe you will break the ice and continue the process. Otherwise you will be talled to get a stronger tool.

> « A magical flow is running out of this ice. You feel it; it gives you chills. You even sense some oppressive and ambient anger! You fear the need for stronger power to take this. »

The terrain will then be transform into a massive frozen area !
With a block explosion

The dragon will then appear and start is rotation up into the sky

### 👀 Design
`🟠 Currently working on it !` 

 - [x] Tail
 - [x] Feet
 - [x] Body
 - [x] Wings
 - [x] Head
 - [x] Hitboxes

### 🔁 Rotation
`❌ Not Implemented Yet`

After spawning he will start is rotation (WIP)
 - [ ] Movement and tilt mechanics
 - [ ] Brain mechanics
 - [ ] Execution

### 🪄 Spells
`❌ Not Implemented Yet`

#### **ᛟ** Runes
`🟠 Currently working on it !` 
	
 - Summon randomly runes on floor
 
 - To remove it player have to stay 3s on it

 - If runes can make a triangle while each side as length of 12 block or fewer it forms a freezing zone
    - Snow fall : 
				Randomly add snow layer within the area
				Transform snow layers to  snow powder with a probability proportional to the level of snow
	- Ice fall :
				Stun and damage

#### **⊛** Orb
`❌ Not Implemented Yet`

Can shoot from his mouth frost bolt orb that explodes on contact
freez, slow, and thunder damage

#### **≷** Bolt
`❌ Not Implemented Yet`

summoning a lightningbolt and wateever next


#### **≷** Flash
`❌ Not Implemented Yet`

use is wing to reflect light and blind you
`particle minecraft:block_marker white_concrete ~ ~1.8 ~ 0.2 0.2 0.2 01 80`

### 🏆 Kill
`❌ Not Implemented Yet`

Upon killing the boss a reward will be granted in form of a chest.

Some achieventmnt will be gave

But this part is still under thinking process


### 💡 Inspiration

The main exteriorr inspiration is the [Trove Wyntegra](https://trove.fandom.com/wiki/Wyntegra,_Galenor%27s_Pride) drake

## 💡🔁 WIP !

Be aware this is still in progress and might change for balance, equilibrium, feasibility, incoming new idea etc

Currently thinking for example as freez/lightning breath spell
