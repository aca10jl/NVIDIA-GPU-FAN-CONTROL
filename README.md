# Nvidia GPU Fan Controller
---
## Requirements
- Nvidia GPU driver has been installed correctly.
- xorg.conf has been configured properly.
---

## Usage
### Control all GPU fans together
- Set **all fans** speed to 80%:
``` bash
bash fanController.sh 80
```
- Restore to defaults for **all fans**:
``` bash
bash fanController.sh 0
```

### Control a specific GPU fan
- Set fan speed to 80% for **GPU 0**:
``` bash
bash fanController.sh 80 0
```
- Restore to defaults for **GPU 0**: 
``` bash
bash fanController.sh 0 0
```
---

## Shortcut
An alias for the command makes life easier. For instance, the bash script is stored at home directory, then the alias can be saved in ```~/.bashrc``` with following settings:
``` bash
alias fan='bash ~/fanController.sh'
```
