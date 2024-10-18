# struct EMdgmMRZ_txSectorInfo_def
# {
#   uint8_t txSectorNumb;
#   uint8_t txArrNumber;
#   uint8_t txSubArray;
#   uint8_t padding0;
#   float sectorTransmitDelay_sec;
#   float tiltAngleReTx_deg;
#   float txNominalSourceLevel_dB;
#   float txFocusRange_m;
#   float centreFreq_Hz;
#   float signalBandWidth_Hz;
#   float totalSignalLength_sec;
#   uint8_t pulseShading;
#   uint8_t signalWaveForm;
#   uint16_t padding1;
# };

uint8 txSectorNumb
uint8 txArrNumber
uint8 txSubArray
float32 sectorTransmitDelay_sec
float32 tiltAngleReTx_deg
float32 txNominalSourceLevel_dB
float32 txFocusRange_m
float32 centreFreq_Hz
float32 signalBandWidth_Hz
float32 totalSignalLength_sec
uint8 pulseShading
uint8 signalWaveForm
