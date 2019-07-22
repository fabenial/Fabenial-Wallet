**1. Clone wallet sources**

```
git clone https://github.com/fabenial/Fabenial-Wallet
```


**2. Change directory**

```
cd Fabenial-Wallet
```


**3. Set symbolic link to coin sources at the same level as `src`. For example:**

```
ln -s ../FabenialCoin cryptonote
```


Replace URL with git remote repository of your coin.

**4. Build**

```
mkdir build && cd build && cmake .. && make
```
